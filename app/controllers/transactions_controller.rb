class TransactionsController < ApplicationController

    def index 
        transactions = Transaction.all
        render json: transactions, except: [:created_at, :updated_at]
    end

    def show
        transaction = Transaction.find_by_id(params[:id])
        render json: transaction.to_json(include: [:tasks])
    end

    def create
        transaction = Transaction.new(transaction_params)
        if transaction.save
            render json: transaction, except: [:created_at, :updated_at]
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    def update
        transaction = Transaction.find_by_id(params[:id])
        if transaction.update(transaction_params)
            render json: transaction
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    def destroy
        transaction = Transaction.find_by_id(params[:id])
        if transaction.destroy
            render json: transaction
        else
            render json: {error: "Oops, something went wrong."}
        end
    end

    private 

    def transaction_params
        params.require(:transaction).permit(:date, :description, :amount, :category, :budget_id, :account_id, :to_account_id, :goal_id)
    end
    
end
