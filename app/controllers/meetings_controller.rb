class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[edit update destroy]
  before_action do
    @no_style = true
  end

  def index
    @meetings = Meeting.all
  end

  def new
    @meeting = Meeting.new
  end

  def edit
  end

  def create
    @meeting = Meeting.new(meeting_params)

    if @meeting.save
      redirect_to meetings_path, notice: "Meeting was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @meeting.update(meeting_params)
      redirect_to meetings_path, notice: "Meeting was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @meeting.destroy!
    redirect_to meetings_path, notice: "Meeting was successfully destroyed.", status: :see_other
  end

  private

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  def meeting_params
    params.require(:meeting).permit(:title, :category, :meeting_room, :meeting_url)
  end
end
