class User < ActiveRecord::Base
  enum gender: [:male, :female, :other, :unspecified]

  def self.create_gender_collection
    User.genders.map { |k,v| [User.human_attribute_name("gender.#{k}"), v] }.to_h
  end
end
