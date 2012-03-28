class Itp < ActiveRecord::Base
  belongs_to :client
  scope :upcoming, lambda { where("data_expirarii >= ?", Time.zone.now).order("data_expirarii") }
  
  def self.search(search)
    if search
      find(:all, :conditions => ['nr_auto LIKE ?', "%#{search}%"])
    else
      find(:all, :order => "updated_at")
    end
  end


end
