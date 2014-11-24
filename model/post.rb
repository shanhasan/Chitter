class Post

  include DataMapper::Resource

  property :id,         Serial
  property :posted_by,  String
  property :body,       Text
  property :created_at, DateTime

end