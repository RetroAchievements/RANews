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

# 
# RAGame tags
# 

class RAGame < Liquid::Tag
  def initialize(tag_name, args, tokens)
  super
    @args = args.split(',').map(&:strip)
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
    @args = args.split(',').map(&:strip)
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
    @args = args.split(',').map(&:strip)
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
    @args = args.split(',').map(&:strip)
  end

  def render(context)
    @id = @args[0]
    @pic = @args[1]
    @title = @args[2]

    "<a class=\"gameicon-link\" href=\"https://retroachievements.org/achievement/#{@id}\" target=\"_blank\" rel=\"noopener\"> <img class=\"gameicon\" src=\"https://retroachievements.org/Badge/#{@pic}.png\"> <span>#{@title}</span></a>"
  end
  
  Liquid::Template.register_tag 'raachpic', self
end