class FavoriteMailer < ApplicationMailer
  default from: "aaron.stewart.contact@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@serene-ocean-76645.com>"
    headers["In-Reply-To"] = "<post/#{post.id}@serene-ocean-76645.com>"
    headers["References"] = "<post/#{post.id}@serene-ocean-76645.com>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
  
end
