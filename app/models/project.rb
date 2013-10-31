class Project < ActiveRecord::Base
  belongs_to :user
  has_many :pictures, as: :pictureable
  attr_accessible :created_at, :description, :published_at, :seo_description, :seo_title, :stats, :title, :url
end
