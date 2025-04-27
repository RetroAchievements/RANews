# 
# RAUser tags
# 

class RAUser < Liquid::Tag
  def initialize(tag_name, user, tokens)
    super
    @user = user.strip
  end

  def render(context)
    "<a href=\"https://retroachievements.org/user/#{@user}\" target=\"_blank\" rel=\"noopener\">#{@user}</a>"
  end

  Liquid::Template.register_tag 'rauser', self
end

class RAUserPic < Liquid::Tag
  def initialize(tag_name, user, tokens)
    super
    @user = user.strip
  end

  def render(context)
    "<a href=\"https://retroachievements.org/user/#{@user}\" target=\"_blank\" rel=\"noopener\"><img class=\"rauserpic\" src=\"https://retroachievements.org/UserPic/#{@user}.png\" alt=\"#{@user}\"> #{@user}</a>"
  end

  Liquid::Template.register_tag 'rauserpic', self
end

class RAUserPicAlt < Liquid::Tag
  def initialize(tag_name, args, tokens)
    super
    @args = args.split(',', 2).map(&:strip)
  end

  def render(context)
    @user = @args[0]
    @userpic = @args[1]
    "<a href=\"https://retroachievements.org/user/#{@user}\" target=\"_blank\" rel=\"noopener\"><img class=\"rauserpic\" src=\"https://retroachievements.org/UserPic/#{@userpic}.png\" alt=\"#{@user}\"> #{@user}</a>"
  end

  Liquid::Template.register_tag 'rauserpicalt', self
end

# 
# RAGame tags
# 

class RAGame < Liquid::Tag
  def initialize(tag_name, args, tokens)
  super
    @args = args.split(',', 2).map(&:strip)
  end

  def render(context)
    @id = @args[0]
    @title = @args[1]

    "<a href=\"https://retroachievements.org/game/#{@id}\" target=\"_blank\" rel=\"noopener\">#{@title}</a>"
  end
  
  Liquid::Template.register_tag 'ragame', self
end

class RAGamePic < Liquid::Tag
  def initialize(tag_name, args, tokens)
  super
    @args = args.split(',', 3).map(&:strip)
  end

  def render(context)
    @id = @args[0]
    @pic = @args[1]
    @title = @args[2]

    "<a class=\"gameicon-link\" href=\"https://retroachievements.org/game/#{@id}\" target=\"_blank\" rel=\"noopener\"> <img class=\"gameicon\" src=\"https://retroachievements.org/Images/#{@pic}.png\" > <span>#{@title}</span></a>"
  end
  
  Liquid::Template.register_tag 'ragamepic', self
end

# 
# RAAchievement tags
# 

class RAAchievement < Liquid::Tag
  def initialize(tag_name, args, tokens)
  super
    @args = args.split(',', 2).map(&:strip)
  end

  def render(context)
    @id = @args[0]
    @title = @args[1]

    "<a href=\"https://retroachievements.org/achievement/#{@id}\" target=\"_blank\" rel=\"noopener\">#{@title}</a>"
  end
  
  Liquid::Template.register_tag 'raach', self
end

class RAAchievementPic < Liquid::Tag
  def initialize(tag_name, args, tokens)
  super
    @args = args.split(',', 3).map(&:strip)
  end

  def render(context)
    @id = @args[0]
    @pic = @args[1]
    @title = @args[2]

    "<a class=\"gameicon-link\" href=\"https://retroachievements.org/achievement/#{@id}\" target=\"_blank\" rel=\"noopener\"> <img class=\"gameicon\" src=\"https://retroachievements.org/Badge/#{@pic}.png\"> <span>#{@title}</span></a>"
  end
  
  Liquid::Template.register_tag 'raachpic', self
end

# 
# RASystem tags
# 

class RASystem < Liquid::Tag
  def initialize(tag_name, args, tokens)
  super
    @args = args.split(',').map(&:strip)
  end

  def render(context)
    getSystemInfo(@args[0])

    # Override any default name if one is passed in
    if @args.size > 1
      @system_name = @args[1]
    end

    # Check for the 'joy' usage and remove that page link.
    # All other systems will point to a games page.
    if @system_id == 0
      ""
    else
      "<a href=\"https://retroachievements.org/system/#{@system_id}/games\" target=\"_blank\" rel=\"noopener\">#{@system_name}</a>"
    end
  end
  
  Liquid::Template.register_tag 'rasystem', self
end

class RASystemNoLink < Liquid::Tag
  def initialize(tag_name, args, tokens)
  super
    @args = args.split(',').map(&:strip)
  end

  def render(context)
    getSystemInfo(@args[0])

    # Override any default name if one is passed in
    if @args.size > 1
      @system_name = @args[1]
    end

    # Check for the 'joy' usage and remove that page link.
    # All other systems will point to a games page.
    if @system_id == 0
      ""
    else
      "#{@system_name}"
    end
  end
  
  Liquid::Template.register_tag 'rasystemnolink', self
end

class RASystemPic < Liquid::Tag
  def initialize(tag_name, args, tokens)
  super
    @args = args.split(',').map(&:strip)
  end

  def render(context)
    getSystemInfo(@args[0])

    # Override any default name if one is passed in
    if @args.size > 1
      @system_name = @args[1]
    end

    # Check for the 'joy' usage and remove that page link.
    # All other systems will point to a games page.
    if @system_id == 0
      "<img class=\"rauserpic\" src=\"../../img/systems/#{@system_icon_name}.png\"> #{@system_name}"
    else
      "<a href=\"https://retroachievements.org/system/#{@system_id}/games\" target=\"_blank\" rel=\"noopener\"><img class=\"rauserpic\" src=\"https://static.retroachievements.org/assets/images/system/#{@system_icon_name}.png\"> #{@system_name}</a>"
    end
  end
  
  Liquid::Template.register_tag 'rasystempic', self
end

class RASystemPicNoLink < Liquid::Tag
  def initialize(tag_name, args, tokens)
  super
    @args = args.split(',').map(&:strip)
  end

  def render(context)
    getSystemInfo(@args[0])

    # Override any default name if one is passed in
    if @args.size > 1
      @system_name = @args[1]
    end

    # Check for the 'joy' usage and remove that page link.
    # All other systems will point to a games page.
    if @system_id == 0
      "<img class=\"rauserpic\" src=\"../../img/systems/#{@system_icon_name}.png\"> #{@system_name}"
    else
      "<img class=\"rauserpic\" src=\"https://static.retroachievements.org/assets/images/system/#{@system_icon_name}.png\"> #{@system_name}"
    end
  end
  
  Liquid::Template.register_tag 'rasystempicnolink', self
end


# 
# Takes the input system shortname or ID and provides the full name, ID, and icon
# 
def getSystemInfo(system)
  case system
  when 'joy', "0"
    @system_name = ''
    @system_id = 0
    @system_icon_name = 'joy'
  when '3do', "43"
    @system_name = '3DO Interactive Multiplayer'
    @system_id = 43
    @system_icon_name = '3do'
  when 'cpc', "37"
    @system_name = 'Amstrad CPC'
    @system_id = 37
    @system_icon_name = 'cpc'
  when 'a2', "38"
    @system_name = 'Apple II'
    @system_id = 38
    @system_icon_name = 'a2'
  when 'arc', "27"
    @system_name = 'Arcade'
    @system_id = 27
    @system_icon_name = 'arc'
  when 'a2001', "73"
    @system_name = 'Arcadia 2001'
    @system_id = 73
    @system_icon_name = 'a2001'
  when 'ard', "71"
    @system_name = 'Arduboy'
    @system_id = 71
    @system_icon_name = 'ard'
  when '2600', "25"
    @system_name = 'Atari 2600'
    @system_id = 25
    @system_icon_name = '2600'
  when '7800', "51"
    @system_name = 'Atari 7800'
    @system_id = 51
    @system_icon_name = '7800'
  when 'jag', "17"
    @system_name = 'Atari Jaguar'
    @system_id = 17
    @system_icon_name = 'jag'
  when 'jcd', "77"
    @system_name = 'Atari Jaguar CD'
    @system_id = 77
    @system_icon_name = 'jcd'
  when 'lynx', "13"
    @system_name = 'Atari Lynx'
    @system_id = 13
    @system_icon_name = 'lynx'
  when 'cv', "44"
    @system_name = 'ColecoVision'
    @system_id = 44
    @system_icon_name = 'cv'
  when 'dc', "40"
    @system_name = 'Dreamcast'
    @system_id = 40
    @system_icon_name = 'dc'
  when 'elek', "75"
    @system_name = 'Elektor TV Games Computer'
    @system_id = 75
    @system_icon_name = 'elek'
  when 'chf', "57"
    @system_name = 'Fairchild Channel F'
    @system_id = 57
    @system_icon_name = 'chf'
  when 'gb', "4"
    @system_name = 'Game Boy'
    @system_id = 4
    @system_icon_name = 'gb'
  when 'gba', "5"
    @system_name = 'Game Boy Advance'
    @system_id = 5
    @system_icon_name = 'gba'
  when 'gbc', "6"
    @system_name = 'Game Boy Color'
    @system_id = 6
    @system_icon_name = 'gbc'
  when 'gg', "15"
    @system_name = 'Game Gear'
    @system_id = 15
    @system_icon_name = 'gg'
  when 'gc', "16"
    @system_name = 'GameCube'
    @system_id = 16
    @system_icon_name = 'gc'
  when 'intv', "45"
    @system_name = 'Intellivision'
    @system_id = 45
    @system_icon_name = 'intv'
  when 'vc4000', "74"
    @system_name = 'Interton VC 4000'
    @system_id = 74
    @system_icon_name = 'vc4000'
  when 'mo2', "23"
    @system_name = 'Magnavox Odyssey 2'
    @system_id = 23
    @system_icon_name = 'mo2'
  when 'sms', "11"
    @system_name = 'Master System'
    @system_id = 11
    @system_icon_name = 'sms'
  when 'md', "1"
    @system_name = 'Genesis/Mega Drive'
    @system_id = 1
    @system_icon_name = 'md'
  when 'duck', "69"
    @system_name = 'Mega Duck'
    @system_id = 69
    @system_icon_name = 'duck'
  when 'msx', "29"
    @system_name = 'MSX'
    @system_id = 29
    @system_icon_name = 'msx'
  when 'n64', "2"
    @system_name = 'Nintendo 64'
    @system_id = 2
    @system_icon_name = 'n64'
  when 'ngcd', "56"
    @system_name = 'Neo Geo CD'
    @system_id = 56
    @system_icon_name = 'ngcd'
  when 'ngp', "14"
    @system_name = 'Neo Geo Pocket'
    @system_id = 14
    @system_icon_name = 'ngp'
  when 'nes', "7"
    @system_name = 'NES/Famicom'
    @system_id = 7
    @system_icon_name = 'nes'
  when 'ds', "18"
    @system_name = 'Nintendo DS'
    @system_id = 18
    @system_icon_name = 'ds'
  when 'dsi', "78"
    @system_name = 'Nintendo DSi'
    @system_id = 78
    @system_icon_name = 'dsi'
  when 'pce', "8"
    @system_name = 'PC Engine/TurboGrafx-16'
    @system_id = 8
    @system_icon_name = 'pce'
  when 'pccd', "76"
    @system_name = 'PC Engine CD/TurboGrafx-CD'
    @system_id = 76
    @system_icon_name = 'pccd'
  when '8088', "47"
    @system_name = 'PC-8000/8800'
    @system_id = 47
    @system_icon_name = '8088'
  when 'pc-fx', "49"
    @system_name = 'PC-FX'
    @system_id = 49
    @system_icon_name = 'pc-fx'
  when 'ps1', "12"
    @system_name = 'PlayStation'
    @system_id = 12
    @system_icon_name = 'ps1'
  when 'ps2', "21"
    @system_name = ' PlayStation 2'
    @system_id = 21
    @system_icon_name = 'ps2'
  when 'psp', "41"
    @system_name = 'PlayStation Portable'
    @system_id = 41
    @system_icon_name = 'psp'
  when 'mini', "24"
    @system_name = 'Pokémon Mini'
    @system_id = 24
    @system_icon_name = 'mini'
  when '32x', "10"
    @system_name = 'Sega 32X'
    @system_id = 10
    @system_icon_name = '32x'
  when 'sat', "39"
    @system_name = 'Sega Saturn'
    @system_id = 39
    @system_icon_name = 'sat'
  when 'scd', "9"
    @system_name = 'Sega CD'
    @system_id = 9
    @system_icon_name = 'scd'
  when 'sg1k', "33"
    @system_name = 'SG-1000'
    @system_id = 33
    @system_icon_name = 'sg1k'
  when 'snes', "3"
    @system_name = 'SNES/Super Famicom'
    @system_id = 3
    @system_icon_name = 'snes'
  when 'uze', "80"
    @system_name = 'Uzebox'
    @system_id = 80
    @system_icon_name = 'uze'
  when 'vect', "46"
    @system_name = 'Vectrex'
    @system_id = 46
    @system_icon_name = 'vect'
  when 'vb', "28"
    @system_name = 'Virtual Boy'
    @system_id = 28
    @system_icon_name = 'vb'
  when 'wasm4', "72"
    @system_name = ' WASM-4'
    @system_id = 72
    @system_icon_name = 'wasm4'
  when 'wsv', "63"
    @system_name = 'Watara Supervision'
    @system_id = 63
    @system_icon_name = 'wsv'
  when 'ws', "53"
    @system_name = 'WonderSwan'
    @system_id = 53
    @system_icon_name = 'ws'
  else
    @system_name = ''
  end
end