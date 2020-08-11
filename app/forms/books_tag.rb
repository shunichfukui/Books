
    tag_relation =TagRelation.create(book_id: book.id, tag_id: tag.id)
    tag_relation.save

  end
 
 end