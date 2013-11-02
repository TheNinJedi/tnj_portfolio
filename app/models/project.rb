class Project < ActiveRecord::Base
  belongs_to :user
  has_many :pictures, as: :pictureable, dependent: :destroy
  attr_accessible :created_at, :description, :published_at, :seo_description, :seo_title, :stats, :title, :url, :pictures_attributes, :user_id

  accepts_nested_attributes_for :pictures


end
