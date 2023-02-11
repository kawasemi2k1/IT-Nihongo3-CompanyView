class CompaniesReviewsController < ApplicationController
  before_action :set_companies_review, only: %i[ show edit update destroy ]

  # GET /companies_reviews or /companies_reviews.json
  def index
    @companies_reviews = CompaniesReview.all
  end

  # GET /companies_reviews/1 or /companies_reviews/1.json
  def show
  end

  # GET /companies_reviews/new
  def new
    @companies_review = CompaniesReview.new
  end

  # GET /companies_reviews/1/edit
  def edit
  end

  # POST /companies_reviews or /companies_reviews.json
  def create
    @companies_review = CompaniesReview.new(companies_review_params)
    @companies_review.user_id = current_user.id
   
    respond_to do |format|
      if @companies_review.save
        url = "/companies/" + @companies_review.company_id.to_s
        format.html { redirect_to url, notice: 'Book review was successfully created.' }
        format.json { render :show, status: :created, location: @companies_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @companies_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies_reviews/1 or /companies_reviews/1.json
  def update
    respond_to do |format|
      if @companies_review.update(companies_review_params)
        format.html { redirect_to companies_review_url(@companies_review), notice: "Companies review was successfully updated." }
        format.json { render :show, status: :ok, location: @companies_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @companies_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies_reviews/1 or /companies_reviews/1.json
  def destroy
    @companies_review.destroy

    respond_to do |format|
      format.html { redirect_to companies_reviews_url, notice: "Companies review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companies_review
      @companies_review = CompaniesReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def companies_review_params
      params.require(:companies_review).permit(:user_id, :company_id, :review)
    end
end
