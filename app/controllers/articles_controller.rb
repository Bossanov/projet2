class ArticlesController < ApplicationController
  def index
    @articles =Article.all
  end

  def new
    @article = Article.new
    @profile = current_user.profile
  end

  def create
    @article = Article.new(article_params)
    @article.status = "A Valider"
    @profile = current_user.profile
    @article.profile = @profile

    if @article.save
      redirect_to root_path
      flash[:notice] = "L'article a été sauvegardé !"

    else
      render :new
      flash[:notice] = 'Une erreur est survenue, veuillez recommencer ...'
    end
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.all
    @profile = Profile.find(@article.profile_id)
  end


  def edit
    @article = Article.find(params[:id])
    @profile = Profile.find(@article.profile_id)
  end

  def update
    @article = Article.find(params[:id])
    @profile = Profile.find(@article.profile_id)
    @article.profile = @profile
    @article.update(article_params)
    redirect_to root_path
    flash[:notice] = "L'article a été édité, merci !"
  end

  def all
    @articles = Article.where(status: 'Validé')
  end


  def valider_article
    @article = Article.find(params[:articleid])
    @profile = Profile.find(params[:profileid])
    @article.status = "Validé"
    @article.save
    flash[:notice] = "L'article a été validé. Merci."
    redirect_to profile_article_path(@profile, @article)
  end

  def refuser_article
    @article = Article.find(params[:articleid])
    @profile = Profile.find(params[:profileid])
    @article.status = "Refusé"
    @article.save
    flash[:alert] = "L'article a été refusé."
    redirect_to profile_article_path(@profile, @article)
  end

  private

  def article_params
  params.require(:article).permit(:article_title, :article_content, :article_photo, :theme, :article_photo_cache, :status, :id )
  end
end
