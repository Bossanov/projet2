class MeetingsController < ApplicationController
  def new
    @meeting = Meeting.new(destinataire: params[:destinataire])
    @profile = current_user.profile
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @profile = current_user.profile
    @meeting.profile = @profile

    if @meeting.save
      MeetingMailer.creation_confirmation(@meeting).deliver_now
      flash[:notice] = 'Votre demande a été transmise !'
      redirect_to root_path
    else
      render :new
      flash[:notice] = 'Une erreur est survenue, veuillez recommencer ...'

    end
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    redirect_to pages_demande_rdv_path
  end


  private

def meeting_params
    params.require(:meeting).permit(:reason, :disponibility, :destinataire)

  end
end
