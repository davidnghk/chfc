class WorkflowsController < InheritedResources::Base

  private

    def workflow_params
      params.require(:workflow).permit(:work_id, :location_id, :incharge_user_id)
    end
end

