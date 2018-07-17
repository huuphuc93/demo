class Article < ActiveRecord::Base
  has_many :comments
  after_commit :flush_cache

  def self.cached_find(id)
    Rails.cache.fetch([name, id]) {find_by id: id}
  end

  def cached_comment_count
    Rails.cache.fetch([self, "comment_count"]) {comments.size}
  end

  def flush_cache
    Rails.cache.delete([self.class.name, id])
  end
end
