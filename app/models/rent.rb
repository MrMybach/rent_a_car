class Rent < ActiveRecord::Base
  belong_to :client
  belong_to :car
end
