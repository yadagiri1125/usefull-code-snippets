class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.json
 # layout :conditional_layout

#layout "category"
def index

    @categories ||= Category.search(params[:search])
    #render :layout => "index"
    #render :layout => false

#@categories_names ||= Category.onlynames
#@categories ||= Category.greatethanthree
#@categories ||= Category.onetoten
#@cat=Category.find(:all, :conditions => ["name=? and id=?", 1, 1])

   # Category.find(:all, :conditions => ["name=? and id=?", 1, 1])
  #  Category.find(:all, :conditions => ["name=? and id IS ?", 1, nil])
   # Category.find(:all, :conditions => ["name=? and id IN (?)", 1, [1,3]])
    #Category.find(:all, :conditions => ["name=? and id IN (?)", 1, 1..3])

   # Category.find(:all, :conditions => { :name => 1, :id => 1 })
   # Category.find(:all, :conditions => { :name => 1, :id => nil })
   # Category.find(:all, :conditions => { :name => 1, :id => [1,3] })
    #Category.find(:all, :conditions => { :name => 1, :id => 1..3 })

  #  Category.find_all_by_id(1..3)

  # eager loading examples
    #Task.find(:all, :include => :projects)
    #Task.find(:all, :include => [:projects, :comments])
    #Task.find(:all, :include => [:projects, {:comments => :user}])

    # sql injection sample code
    #@tasks = Task.find(:all, :conditions => ["name LIKE ?", "%#{params[:query]}%"])

  # in_groups_of example , arguments false,1,X
   #   <table>
     # <% @tasks.in_groups_of(4, false) do |row_tasks| %>
  #<tr>
     # <% for task in row_tasks %>
    #  <td><%= task.name %></td>
    #<% end %>
  #</tr>
#<% end %>
#</table>








  #respond_to do |format|
     #"#{ format.html # index.html.erb
   #   }"format.json { render json: @categories }
    #end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end

  # GET /categories/new
  # GET /categories/new.json
  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category }
    end
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(params[:category])

    if params[:preview_button] || !@category.save
      flash[:notice] = "Successfully created project."
      render :action => 'new'
    else
      flash[:notice] = "Successfully created project."
      redirect_to categories_path(@category)
    end
    #respond_to do |format|
     # if @category.save
      #  format.html { redirect_to @category, notice: 'Category was successfully created.' }
       # format.json { render json: @category, status: :created, location: @category }
      #else
       # format.html { render action: "new" }
        #format.json { render json: @category.errors, status: :unprocessable_entity }
      #end
    #end
     # end
  end

  # PUT /categories/1
  # PUT /categories/1.json
  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :ok }
    end
  end

  private
  def conditional_layout
    if false
      "category"
    else
      "index"
    end
  end
end
