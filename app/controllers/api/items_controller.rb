class Api::ItemsController < ApiController
  # before_action :authenticated?
  def index
    list = List.find(params[:list_id])
    items = Item.all
    render json: list.items, each_serializer: ItemSerializer
  end

  def create
    puts params
     list = List.find(params[:list_id])
     item = list.items.build(item_params)
     if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    begin
      item = Item.find(params[:id])
      item.destroy
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found
    end
  end

  private
   def item_params
     params.require(:item).permit(:item, :complete)
   end

end
