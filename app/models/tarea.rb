class Tarea < ApplicationRecord
    mount_uploader :image, ImageUploader

    has_many :dones, dependent: :destroy
    has_many :users, through: :dones
end
