class Post < ActiveRecord::Base
  validates :title, :text,
  presence: {message: "入力してください"},
  length: {minimum: 3, message: "too short!"}

end
