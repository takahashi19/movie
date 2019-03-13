namespace :db do
  desc 'Dump the database to tmp/dbname.dump'
  task dump: %i[environment load_config] do
    config = ActiveRecord::Base.configurations[Rails.env]
    ignore_table_option = %w[ar_internal_metadata schema_migrations].map { |table| "--ignore-table=#{config['database']}.#{table}" }.join(' ')
    sh "mysqldump -u #{config['username']} -p#{config['password']} #{config['database']} --no-create-info #{ignore_table_option} > tmp/#{config['database']}.dump"
  end

  desc 'Restore the database from tmp/dbname.dump'
  task restore: %i[environment load_config] do
    config = ActiveRecord::Base.configurations[Rails.env]
    sh "mysql -u #{config['username']} -p#{config['password']} #{config['database']} < tmp/#{config['database']}.dump"
  end

  desc 'Dump and reset and restore'
  task dump_reset_restore: %i[environment load_config] do
    Rake::Task['db:dump'].invoke
    Rake::Task['db:migrate:reset'].invoke
    Rake::Task['db:restore'].invoke
  end
end
