class Thing < ActiveRecord::Base
  # Usually you don't want :id to be attr_accessible
  # You might want to do this if you need to generate ids outside of a record save operation
  attr_accessible :id 
  include UuidIds::ModelHelper
end
