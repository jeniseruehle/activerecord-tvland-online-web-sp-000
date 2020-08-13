class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    full_name = []
    self.actors.each do |a|
      full_name << (a.first_name, a.last_name)
    end 
  end 
  
  def list_roles
   self.roles 
  end 
  
end