class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :addresses, dependent: :destroy
  has_many :cart_items, dependent: :destroy
  has_many :orders, dependent: :destroy
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name_kana, presence: true, format: {
                   with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                   message: "全角カタカナのみで入力して下さい"
                 }
  validates :last_name_kana, presence: true, format: {
                   with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,
                   message: "全角カタカナのみで入力して下さい"
                 }
  validates :email,uniqueness: true, presence: true
  validates :postal_code, presence: true, numericality: {only_integer: true}, length: { is: 7} 
  validates :address, presence: true
  validates :telephone_number, presence: true, numericality: {only_integer: true}, format: {with: /\A\d{10,11}\z/}
  
  def active_for_authentication?
    super && (is_deleted == false)
  end
  
end
