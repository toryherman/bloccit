module UsersHelper
  def has_posted?
    @user = User.find(params[:id])
    @user.posts.length > 0
  end

  def has_commented?
    @user = User.find(params[:id])
    @user.comments.length > 0
  end

  def has_favorited?
    @user = User.find(params[:id])
    @user.favorites.length > 0
  end
end
