class DiariesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy,:index,:show]


  def index
    @diaries = Diary.where(user_id:current_user.id).order("day DESC")
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      redirect_to diaries_path
    else
      render :new
    end
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])
    if @diary.update(diary_params)
      redirect_to diaries_path
    else
      render :edit
    end
  end

  def show
    @diary = Diary.find(params[:id])
  end

  def destroy
    @diary= Diary.find(params[:id])
    if @diary.destroy
      redirect_to diaries_path
  end
 end

 def search
  @diaries = Diary.search(params[:day])

end



  private
  def diary_params
    params.require(:diary).permit(:text, :day, :image).merge(user_id: current_user.id)
  end


end

