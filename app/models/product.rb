class Product < ActiveRecord::Base
  belongs_to :category,:counter_cache => true

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end
