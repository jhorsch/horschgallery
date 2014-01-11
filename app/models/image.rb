class Image < ActiveRecord::Base


 # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query

    # where("title LIKE ?", "%#{query}%")

# where('title LIKE ? OR prod_id like ?', "%#{search}%", "%#{search}%")

      where('prod_id LIKE ? OR prod_id LIKE ? OR title LIKE ?', "#{query}" ,  "#{query}%wf" , "%#{query}%")


  end

end
