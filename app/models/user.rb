class User < ApplicationRecord
  has_secure_password
  # gem bcrypyをインストールした事で使えるメソッド。ーザーを保存する際に自動的にパスワードを暗号化する。
  # viewでauthenticateメソッドを用いる事で認証する事もできる
  
  validates :name, {presence: true}
  # {presence: true}：存在するかどうかの判断
  # validates :email, {presence: true, uniqueness: true}
  # uniquenessデータベースに同じデータがあるかの確認。↓を実装したのでコメントアウト
  validates :email, presence: true, length: { maximum: 255 },#メアドの長さ
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },#メアドが正規であるか
                    uniqueness: { case_sensitive: false }#重複防止
  
  def reviews
  # UserとReviewを紐付けるメソッド
    return Review.where(user_id: self.id)
    # whereで検索させてユーザーが持つ複数のReviewを取得させる
  end
  
end
