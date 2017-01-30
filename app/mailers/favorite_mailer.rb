class FavoriteMailer < ApplicationMailer
  default from: "tory.herman12@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@enigmatic-sea-43452.heroku.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@enigmatic-sea-43452.heroku.com>"
    headers["References"] = "<post/#{post.id}@enigmatic-sea-43452.heroku.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
