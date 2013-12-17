class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :tasks
  has_many :delegated_tasks, class_name: "Task", foreign_key: "delegated_id"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 validates :username, presence:  true, uniqueness: true
end
