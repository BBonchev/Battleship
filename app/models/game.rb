class Game < ActiveRecord::Base
  before_create :generate_random_id
  belongs_to :user
  
  
  private
  
  def generate_random_id
    self.id = SecureRandom.uuid
  end
end