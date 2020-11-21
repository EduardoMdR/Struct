class AlbumsController < ApplicationController
    ##### SHOW #####
    def index
        @albums = Album.all
    end

    def show
        @album = Album.find(params[:id])
    end

    ##### CREATE #####
    def new
        @album = Album.new
    end
    
    def create
        @album = Album.new(album_params)
        
        begin
            @album.save!
            flash[:notice] = "Album #{@album.name} criado com sucesso"
        rescue => exc
            puts exc
            flash[:notice] = exc
        ensure
            redirect_to albums_path
        end
    end

    ##### UPDATE #####
    def edit
        @album = Album.find(params[:id])
    end
    
    def update
        @album = Album.find(params[:id])
        begin
            @album.update!(album_params)
            flash[:notice] = "Album #{@album.name} atualizado com sucesso"
        rescue => exc
            puts exc
            flash[:notice] = exc
        ensure
            redirect_to albums_path
        end
    end
    
    ##### DELETE #####
    def destroy
        @album = Album.find(params[:id])
        begin
            @album.destroy!
            flash[:notice] = "Album #{@album.name} apagado com sucesso"
        rescue => exc
            puts exc
            flash[:notice] = exc
        #rescue ValidationError => exc
        #    flash[:notice] = "Erro de validação"
        #rescue NoDatabaseError => exc
        #    flash[:notice] = "Erro no banco"
        ensure
            redirect_to albums_path
        end
    end
    # ADD IN A PRIVATE METHOD FOR ALBUM_PARAMS 
    private
        def album_params
            params.require(:album).permit(:name, :artist)
        end
end
