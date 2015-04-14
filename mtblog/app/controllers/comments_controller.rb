class CommentsController < ApplicationController
  http_basic_authenticate_with name: "nrc", password: "secret", only: :destroy

  def create
    @signup = Signup.find(params[:signup_id])
    @comment = @signup.comments.create(comment_params)
    redirect_to article_path(@signup)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
