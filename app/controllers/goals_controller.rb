class GoalsController < ApplicationController

    def index 
        goals = Goal.all
        render json: goals, except: [:created_at, :updated_at]
    end

    def show
        goal = Goal.find_by_id(params[:id])
        render json: goal.to_json(include: [:tasks])
    end

    def create
        goal = Goal.new(goal_params)
        if goal.save
            render json: goal, except: [:created_at, :updated_at]
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    def update
        goal = Goal.find_by_id(params[:id])
        if goal.update(goal_params)
            render json: goal
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    def destroy
        goal = Goal.find_by_id(params[:id])
        if goal.destroy
            render json: goal
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private 

    def goal_params
        params.require(:goal).permit(:name, :description, :amount, :due_date, :user_id)
    end

end
