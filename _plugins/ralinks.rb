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
