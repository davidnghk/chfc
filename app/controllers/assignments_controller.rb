class AssignmentsController < InheritedResources::Base

  private

    def assignment_params
      params.require(:assignment).permit(:work_id, :location_id, :headline, :start_datetime, :due_datetime, :end_datetime, :status, :incharge_user_id, :worker_user_id)
    end
end

