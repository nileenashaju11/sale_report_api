class SaleDetailsController < ApplicationController
  before_action :set_sale_detail, only: %i[ show edit update destroy ]

  # GET /sale_details or /sale_details.json
  def index
    response = HTTParty.get("https://rocky-basin-97690.herokuapp.com/api/v1/sales_details/index")
    yearly_salereport_data =response["all_data"]["data"]
    @report_quntity=[]
    @report_profit=[]
    @report_year=[]
    yearly_salereport_data.each do |sales|
      @report_quntity<<sales["quantity"] 
      @report_profit<<sales["profit"]
    end
     @monthly_salereport_data = response["all_data"]["data1"]
  end
end
