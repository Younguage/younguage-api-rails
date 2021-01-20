class FlashcardsController < SecuredController
  def index
    chirps = Flashcard.all
    render json: chirps
  end

  def show
    chirp = Flashcard.find(params[:id])
    render json: chirp
  rescue ActiveRecord::RecordNotFound
    head :not_found
  end

  def create
    chirp = Flashcard.create!(chirp_params)
    render json: chirp, status: :created
  end

  def destroy
    chirp = Flashcard.find(params[:id])
    chirp.delete
    head :no_content
  end

  private

  def chirp_params
    params.permit(:body, :published)
  end
end
