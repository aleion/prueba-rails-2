class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dones
  has_many :tareas, through: :dones
         
  after_create :addTask

  def addTask
    Tarea.all.each do |i|
      self.dones.build(tarea: i)
      self.save
    end
  end
         
  mount_uploader :avatar, AvatarUploader
end