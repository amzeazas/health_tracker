class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, :presence => true
  validates :username, :presence => true
  validates :username, :uniqueness => true
  validates :username, format: { with: /\A[a-zA-Z0-9_\.]*\z/ }
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  has_many :meals
  has_many :foods, :through => :meals
  has_many :workouts
  has_many :exercises, :through => :workouts
end
