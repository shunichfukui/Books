class BooksTag

  include ActiveModel::Model
  attr_accessor :content, :name,:genre_id,:image,:user_id,:tag_name
 
  with_options presence: true do
    validates :content
    validates :name
    validates :genre_id
    validates :tag_name
    validates :image
  end
 
  def save
    book = Book.create(content: content,name: name,genre_id: genre_id,image: image,user_id: user_id)

    tag = Tag.create(tag_name: tag_name)
    tag = Tag.where(tag_name: tag_name).first_or_initialize
    tag.save

    tag_relation =TagRelation.create(book_id: book.id, tag_id: tag.id)
    tag_relation.save

  end
 
 end