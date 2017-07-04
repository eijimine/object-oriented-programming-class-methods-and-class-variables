class Book

  @@on_shelf = []
  @@on_loan = []

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
    @borrowed = false
  end
#
  def borrow
    # This instance method is how a book is taken out of the library. This method
    # should use lent_out? to check if the book is already on loan, and if it is this
    # method should return false to indicate that the attempt to borrow the book failed.
    #
    # Otherwise, use current_due_date to set the due_date of the book and move it from
    # the collection of available books to the collection of books on loan, then return true.

    if lent_out? == false
      puts "This book is now borrowed"
    @borrowed = true
    return true
    else
      puts "This book is already borrowed"
      return false
      # book = due_date, @@on_loan = true
    end
  end
#
#   def return_to_library
# # This instance method is how a book gets returned to the library. It should call lent_out?
# #  to verify that the book was actually on loan. If it wasn't on loan in the first place,
# #   return false. Otherwise, move the book from the collection of books on loan to the collection
# #    of books on the library shelves, and set the book's due date to nil before returning true.
#     if lent_out == true
#       lent_out == false
#       due_date == nil
#     else
#       return false
#   end
#
  def lent_out?
    if @borrowed == true
      return true
    else
      return false
    end
  end
#
#   #Reader
#   def due_date
#     @due_date
#   end
#
#   # WRITER / attr_writer
#   def due_date=(due_date)
#     @due_date = due_date
#   end

  def self.create(title, author, isbn)
    new_book = Book.new(title, author, isbn)
    @@on_shelf << new_book
    return new_book
  end

#   def self.current_due_date
# # This class method should return the due date for books taken out today. It's up to you to decide how far in the future the due date should be. You can refer to the section about Time above for help getting started,
#   end
#
#   def self.overdue_books
#     # This class method should return a list of books whose due dates are
#     # in the past (ie. less than Time.now).
#     #
#     # As you write your program you should be thinking about the reasoning
#     # behind making each method either an instance method or a class method.
#
#   end

  def self.browse
    return @@on_shelf.sample
  end

#   def self.available
#     return @@on_shelf
#   end
#
  def self.borrowed
    return @@on_loan
  end

end


# sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
# aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
# if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
