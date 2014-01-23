class Category < ActiveRecord::Base
def self.greatethanthree
find(:all, :conditions => ['id > ?', 3])
end
def self.onetoten
scoped(:conditions => { :id => 1..10})
end
def self.onlynames
find(:all).collect(&:name)
end

end
