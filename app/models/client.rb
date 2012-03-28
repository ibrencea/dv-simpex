class Client < ActiveRecord::Base
    has_many :itps, :dependent => :destroy
    accepts_nested_attributes_for :itps, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
