class Company < ActiveRecord::Base
  has_many :users

  def to_s
    name
  end
  
  def self.badges_per_company(company_id)
    User.get_user_ids(company_id)
  end
end
