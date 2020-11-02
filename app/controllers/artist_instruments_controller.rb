class ArtistIntstrumentsController < ApplicationController
    def new
        @artist_instrument = ArtistInstrument.new
        @instruments = Instrument.all 
        @artists = Artist.all
    end

    def create
        @artist_instrument = ArtistInstrument.create(artist_instrument_params)
        redirect_to artist_path(artist_instrument.artist)
    end

    private

    def private_instrument_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
    end
end