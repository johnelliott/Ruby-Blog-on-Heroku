  def index
    @posts = Post.all.where(draft_status: false)
  end

  def drafts
    @posts = Post.all.where(draft_status: true)
    render "index"
  end