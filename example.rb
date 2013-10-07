require 'gosu'
require './neutral_cursor'

class Window < Gosu::Window
  def initialize
    super 800, 600, false
    NeutralCursor.load_images self
  end
  
  def button_down id
    case id
    when Gosu::KbP; NeutralCursor.set_state :pointer
    when Gosu::KbN; NeutralCursor.set_state :normal
    when Gosu::KbG; NeutralCursor.set_state :grab
    end
  end
  
  def draw
    NeutralCursor.draw mouse_x.to_i, mouse_y.to_i, 0
  end
end

Window.new.show