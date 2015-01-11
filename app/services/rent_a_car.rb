class RentACar
  # attr_reader :topic

  def initialize(params)
    @params = params
  end 

  def call
      calculate_rent_cost    
      save_rent_in_database
    # save_post_in_database
  end

  private
  def calculate_rent_cost
    
    @topic = Topic.create(@params)

    # if @topic.new_record?
    #   raise ActionFailed.new('Wątek nie został pomyśle dodany')
    # end
  end

  def save_rent_in_database
    @post = @topic.posts.create(description: @params[:description])
    
    # if @post.new_record?
    #   raise ActionFailed.new('Post  nie został pomyślnie dodany')
    # end
  end

end

