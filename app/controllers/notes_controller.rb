class NotesController < ApplicationController
    def index 
        @notes = Note.all
    end

    def show
        @note = Note.find(params[:id])
    end
    def new
        @note = Note.new
    end

    def create
        @note = Note.new(note_params)
        if @note.save 
            redirect_to root_path
        
        else
            render :new, status: unprocessable_entity
        end
    end
    def destroy
        @note = Note.find(params[:id])
        @note.destroy
        redirect_to root_path
    end

    private 
        def note_params
            params.required(:note).permit(:title, :body)
        end
end
