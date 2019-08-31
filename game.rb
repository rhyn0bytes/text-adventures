require_relative 'methods'
require_relative 'rooms'
require_relative 'player'

system 'clear'

loop do
  print "> "
  input = gets.chomp
  command, *params = input.split /\s/
  txt = params.join(" ")

  case command.downcase
    when 'quit', 'exit'
      break;
    when 'help'
      File.open("help.txt").each do | line |
        #print "\e[32m" + line + "\e[0m"
        print line
      end
      puts "\n"
    when 'move', 'go'
      case txt.first.downcase
        when 'ne', 'northeast'
          # move ne room check
        when 'n', 'north'
          # move n room check
        when 'nw', 'northwest'
          # move nw room check
        when 'w', 'west'
          # move w room check
        when 'sw', 'southwest'
          # move sw room check
        when 's', 'southwest'
          # move sw room check
        when 'se', 'southeast'
          # move se room check
        when 'e', 'east'
          # move e room check
        when 'u', 'up'
          # move up room check
        when 'd', 'down'
          # move down room check
        when 'in'
          # move in room check
        when 'out'
          # move out room check
        else
          # move unknown direction...
      end

    when 'die'
      dun-die
    when 'i', 'inventory'
      # Show player inventory
    when 'look', 'examine', 'describe', 'x', 'l', 'read'
      # Examine item
    when (go . dun-go)
    when (drop . dun-drop)
    # when (save . dun-save-game)
    # when (restore . dun-restore)
    when (long . dun-long)
    when (dig . dun-dig)
    when (shake . dun-shake)
    when (wave . dun-shake)
    when (climb . dun-climb)
    when (eat . dun-eat)
    when (put . dun-put)
    when (type . dun-type)
    when (insert . dun-put)
    when (score . dun-score)
    when (verbose . dun-long)
    when (urinate . dun-piss)
    when (piss . dun-piss)
    when (flush . dun-flush)
    when (sleep . dun-sleep)
    when (lie . dun-sleep)
    when (drive . dun-drive)
    when (board . dun-in)
    when (enter . dun-in)
    when (turn . dun-turn)
    when (swim . dun-swim)
    when (on . dun-in)
    when (off . dun-out)
    when (chop . dun-break)
    when (cut . dun-break)
    when (break . dun-break)
    when (press . dun-press)
    when (push . dun-press)
    when (switch . dun-press)
    when (flick . dun-press)
    # when (exit . dun-out)
    when (leave . dun-out)
    when (reset . dun-power)
    when (superb . dun-superb)
    when (answer . dun-answer)
    when (throw . dun-drop)
    when (take . dun-take)
    when (get . dun-take)
    when (feed . dun-feed)))
    else
      puts "I don't understand that.\n"
  end
end