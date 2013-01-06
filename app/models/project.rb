class Project < ActiveRecord::Base
  translates :name, :description, :fallbacks_for_empty_translations => true
  include Locale

  attr_accessible :description, :name, :project_kabupaten_mappings_attributes

  belongs_to :user

  has_many :project_kabupaten_mappings
  has_many :kabupatens, :through => :project_kabupaten_mappings
  has_many :project_contact_mappings
  has_many :contacts, :through => :project_contact_mappings
  has_many :project_sector_mappings
  has_many :sectors, :through => :project_sector_mappings

  accepts_nested_attributes_for :project_kabupaten_mappings, :reject_if => :all_blank, :allow_destroy => true

end
