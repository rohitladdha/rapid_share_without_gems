class Doc < ApplicationRecord
  belongs_to :user

  attr_accessor :uploaded_file

end
