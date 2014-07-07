#37 Simple Search Form

A search form is quite different than other forms, this is because it does not deal with model's attributes. See a good way to add a simple search form in this episode.

### projects/index.html.erb

````
<%= form_tag(projects_path, :method => "get", id: "search-form") do %>
   <%= text_field_tag :search, params[:search], placeholder: "Search Projects" %>
    <%= submit_tag "Search", :name => nil %>
   <%=link_to "Back",projects_path%>
   
<% end %>
````

### projects_controller.rb
````
def index
  @projects = Project.search(params[:search])
end
````

### models/project.rb
````
def self.search(search)
		if search
			 where("name like ?", "%#{search}%") 
		else
			all
		end
end
````
