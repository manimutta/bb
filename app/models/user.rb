class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders
  has_one :role
  has_many :cart_items
  after_create :set_roles


  def has_role(role)
    self.roles.pluck(:name).include? role
  end

  def set_roles
    User.create(user_id: self.id, role_id: Role.where(name: "Customer").first.id)
  end
end
