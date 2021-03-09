class State < ActiveHash::Base
  self.data = [
    { id: 1, name: '--'},
    { id: 2, name: 'Todo'},
    { id: 3, name: 'Doing'},
    { id: 4, name: 'Done'}
  ]

  include ActiveHash::Associations
  has_many :todos
end