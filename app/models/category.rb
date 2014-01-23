class Category < ActiveRecord::Base
has_many :products
def self.greatethanthree
find(:all, :conditions => ['id > ?', 3])
end
def self.onetoten
scoped(:conditions => { :id => 1..10})
end
def self.onlynames
find(:all).collect(&:name)
end


  def fullname
    [first_name, last_name].join(' ')
  end

  def fullname=(name)
    split = name.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end


end
