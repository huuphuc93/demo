class Employee < ApplicationRecord
  after_commit :flush_cache!

  VALID_GENDER = %w(male female)

  scope :by_gender, ->(gender) do
    if VALID_GENDER.include?(gender)
      Rails.cache.fetch([name, gender]) {where(gender: gender)}
    else
      Rails.cache.fetch([name, 'all_employees']) { all }
    end
  end

  private

  def flush_cache!
    puts 'flushing the cache...'
    Rails.cache.delete [self.class.name, 'all_employees']
    Rails.cache.delete [self.class.name, gender]
    # byebug
  end
end
