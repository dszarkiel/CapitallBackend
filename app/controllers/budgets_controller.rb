class BudgetsController < ApplicationController

    def index 
        budgets = Budget.all
        render json: budgets, except: [:created_at, :updated_at]
    end

    def show
        budget = Budget.find_by_id(params[:id])
        render json: budget.to_json(include: [:tasks])
    end

    def create
        budget = Budget.new(budget_params)
        if budget.save
            render json: budget, except: [:created_at, :updated_at]
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    def update
        budget = Budget.find_by_id(params[:id])
        if budget.update(budget_params)
            render json: budget
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    def destroy
        budget = Budget.find_by_id(params[:id])
        if budget.destroy
            render json: budget
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private 

    def budget_params
        params.require(:budget).permit(:name, :category, :amount, :user_id, :month)
    end

end
