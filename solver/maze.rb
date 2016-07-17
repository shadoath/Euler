require 'pry'
class Maze

  def initialize()
    @path = []
    @moves = 0
  end

  def run_maze
    while(!finished?) do
      @path << [@pos_x, @pos_y, @orientation]
      @moves +=1
      if @moves > 500
        break
      end
      if is_wall('l') && !is_wall('f')
        move_forward
        next
      end
      if !is_wall('l')
        turn('l')
        move_forward
        next
      end
      if is_wall('l') && is_wall('f') && !is_wall('r')
        turn('r')
        move_forward
        next
      end
      if is_wall('l') && is_wall('r') && is_wall('f')
        turn('b')
        move_forward
        next
      end
    end
    @path << [@pos_x, @pos_y, @orientation]
    @path.each do |xy|
      case xy[2]
      when 'n'
        @maze[xy[1]][xy[0]] = '↑'
      when 'e'
        @maze[xy[1]][xy[0]] = '→'
      when 's'
        @maze[xy[1]][xy[0]] = '↓'
      when 'w'
        @maze[xy[1]][xy[0]] = '←'
      end
    end
    @maze.each do |m|
      p m
    end
    p "Maze completed in #{@moves} moves."
  end

  def finished?
    @pos_y == @end_y && @pos_x == @end_x
  end

  def turn(direction)
    case(@orientation)
    when 'n'
      case direction
      when 'l'
        @orientation = 'w'
      when 'r'
        @orientation = 'e'
      when 'b'
        @orientation = 's'
      end
    when 'e'
      case direction
      when 'l'
        @orientation = 'n'
      when 'r'
        @orientation = 's'
      when 'b'
        @orientation = 'w'
      end
    when 's'
      case direction
      when 'l'
        @orientation = 'e'
      when 'r'
        @orientation = 'w'
      when 'b'
        @orientation = 'n'
      end
    when 'w'
      case direction
      when 'l'
        @orientation = 's'
      when 'r'
        @orientation = 'n'
      when 'b'
        @orientation = 'e'
      end
    end
  end

  def move_forward
    case @orientation
    when 'n'
      @pos_y-=1
    when 'e'
      @pos_x+=1
    when 's'
      @pos_y+=1
    when 'w'
      @pos_x-=1
    end
  end

  def is_wall(direction)
    case(@orientation)
    when 'n'
      case(direction)
      when 'l'
        check('w')
      when 'r'
        check('e')
      when 'b'
        check('s')
      when 'f'
        check('n')
      end
    when 'e'
      case(direction)
      when 'l'
        check('n')
      when 'r'
        check('s')
      when 'b'
        check('w')
      when 'f'
        check('e')
      end
    when 's'
      case(direction)
      when 'l'
        check('e')
      when 'r'
        check('w')
      when 'b'
        check('n')
      when 'f'
        check('s')
      end
    when 'w'
      case(direction)
      when 'l'
        check('s')
      when 'r'
        check('n')
      when 'b'
        check('e')
      when 'f'
        check('w')
      end
    end
  end

  def check(direction)
    case(direction)
    when 'n'
      @maze[@pos_y-1][@pos_x] == "*"
    when 'e'
      @maze[@pos_y][@pos_x+1] == "*"
    when 's'
      @maze[@pos_y+1][@pos_x] == "*"
    when 'w'
      @maze[@pos_y][@pos_x-1] == "*"
    end
  end

  def basic_maze
    @maze = [
     "*******",
     "*F*****",
     "*    **",
     "****  *",
     "*   * *",
     "* *   *",
     "*S** **",
     "*******"]
    @maze = @maze.map do |m|
      m.split('')
    end
    @pos_x   = 1
    @pos_y   = 6
    @end_x = 1
    @end_y = 1
    @orientation = 'n'
  end

  def normal_maze
    @maze = [
      "***********************************F*",
      "* *****     * *   *     ***         *",
      "* *     ***   * *   * ***** * * * * *",
      "* * * *******   *** * ***** ******* *",
      "* ***       ***** ***         * *****",
      "* *** * *** *   ******* * *** ***** *",
      "*********** * *   *** * ********* * *",
      "*   *******   * *** * ******* * * * *",
      "* *     ******* * ******* * * * *** *",
      "*** *** *       *** * ***** * *** ***",
      "*   *** * * ***** * *** *   *** *** *",
      "*S*****   ***************************",
      "*************************************"]
    @maze = @maze.map do |m|
      m.split('')
    end
    @pos_x   = 1
    @pos_y   = 11
    @end_x = 35
    @end_y = 0
    @orientation = 'n'
  end
end
