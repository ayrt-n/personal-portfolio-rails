class PortfoliosController < ApplicationController
  def index
    # No data, just serve that sweet, sweet, static HTML+CSS
  end

  def download
    send_file(
      "#{Rails.root}/public/Ayrton_Parkinson_CV.pdf",
      filename: 'Ayrton_Parkinson_CV.pdf',
      type: 'application/pdf'
    )
  end
end
