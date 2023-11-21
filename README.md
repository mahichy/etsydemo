# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
  <%# <%= form_with(model: listing), html: { multipart: true } do |form| %> %>
  <%= form_for @listing, url: root_path, html: { multipart: true } do |form| %>

  listing index table
  <div class="container">
  <div class="row">

        <div class="col">


          <table class="table table-hover"">
            <thead class= "table-primary">
              <tr>
                <th>Image</th>
                <th>Name</th>
                <th>Desctiption</th>
                <th>price</th>
                <th></th>
                <th></th>
                <th></th>
              </tr>
            </thead>

            <tbody>
              <% @listings.each do |listing|%>
                <tr>
                  <td><%= image_tag listing.image.url(:thumb)%></td>
                  <td><%= listing.name.capitalize%></td>
                  <td><%= listing.description%></td>
                  <td><%= listing.price%></td>
                  <td><%= link_to "Show" ,listing, class: "btn btn-link"%></td>
                  <td><%= link_to "Edit", edit_listing_path(listing), class: "btn btn-link"%></td>
                  <td><%= link_to "Delete", listing, method: :delete, data: { confirm: "Are you sure"}, class: "btn btn-link"%></td>
                </tr>

              <% end %>

            </tbody>

          </table>


        </div>

      </div>

    </div>

  after table listing index
    <div class="row">
    <% @listings.each do |listing|%>
      <div class="col-md-3">
        <%= image_tag listing.image.url(:thumb)%> <br>
        <%= listing.name.capitalize%> <br>
        <%= listing.description%> <br>
        <%= listing.price%> <br>
        <%= link_to "Show" ,listing, class: "btn btn-link"%> <br>
        <%= link_to "Edit", edit_listing_path(listing), class: "btn btn-link"%> <br>
        <%= link_to "Delete", listing, method: :delete, data: { confirm: "Are you sure"}, class: "btn btn-link"%>
      </div>
    <%end%>
  </div>

  listing show
  <div id="<%= dom_id listing %>">
  <p>
    <strong>Name:</strong>
    <%= listing.name %>
  </p>

  <p>
    <strong>Description:</strong>
    <%= listing.description %>
  </p>

  <p>
    <strong>Price:</strong>
    <%= listing.price %>
  </p>

</div>

thumbnail

<div class="row">
  <% @listings.each do |listing|%>
    <div class="col-md-3">
      <%= image_tag listing.image.url, class:"img-thumbnail"%> 
      <h3><%= listing.name.capitalize%>  </h3>
      <p><%= number_to_currency(listing.price)%></p>
      <%= link_to "Show" ,listing, class: "btn btn-link"%> 
      <%= link_to "Edit", edit_listing_path(listing), class: "btn btn-link"%> 
      <%= link_to "Delete", listing, method: :delete, data: { confirm: "Are you sure"}, class: "btn btn-link"%>
    </div>
  <%end%>
</div>

CARD

<div class="card mb-3">
  <div class="row g-0">
    <div class="col-md-6">
          <%= image_tag @listing.image.url, class: "img-fluid rounded-start" %>

    </div>
    <div class="col-md-6">
      <div class="card-body">
        <h5 class="card-title"><%= listing.name.capitalize %></h5>
        <p class="card-text"><%= listing.description %></p>
        <p class="card-text"><%= number_to_currency(listing.price) %></p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>

  </div>
</div>

CARD INDEX

<div class="row">
    <% @listings.each do |listing|%>

  <div class="col-md-3">
      <div class="card-group">
        <div class="card">
                <%= image_tag listing.image.url, class:"card-img-top"%>

          <div class="card-body">
            <h5 class="card-title"><%= listing.name.capitalize%></h5>
            <p class="card-text"><%= number_to_currency(listing.price)%></p>
              <%= link_to "Show" ,listing, class: "btn btn-link"%>
              <%= link_to "Edit", edit_listing_path(listing), class: "btn btn-link"%>
              <%= link_to "Delete", listing, method: :delete, data: { confirm: "Are you sure"}, class: "btn btn-link"%>

            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
          </div>
        </div>
      </div>

  </div>
  <%end%>
</div>

Listing Index
<% if (user_signed_in?) && (current_user == listing.user)%>
<%= link_to "Edit", edit_listing_path(listing), class: "btn btn-link"%>
<%= link_to "Delete", listing, method: :delete, data: { confirm: "Are you sure"}, class: "btn btn-link"%>
<% end %>

Seller before table

<div class="center">
  <div class="row">
    <% @listings.each do |listing|%>
      <div class="col-md-3">
        <div class="thumbnail">
        <%= image_tag listing.image.url, class:"img-thumbnail"%> 
        <h3><%= listing.name.capitalize%>  </h3>
        <p><%= number_to_currency(listing.price)%></p>
        <h5><%= "Sold by #{listing.user.name.capitalize}"%>  </h5>
        <%= link_to "Show" ,listing, class: "btn btn-link"%> 
        <% if (user_signed_in?) && (current_user == listing.user)%>
          <%= link_to "Edit", edit_listing_path(listing), class: "btn btn-link"%> 
          <%= link_to "Delete", listing, method: :delete, data: { confirm: "Are you sure"}, class: "btn btn-link"%>
        <% end %>
        </div>
      </div>
    <%end%>
  </div>
</div>

button

 <td>
        <div class="input-group mb-3 ">
          <button class="btn btn-primary dropdown-toggle " type="button" data-bs-toggle="dropdown" aria-expanded="false">Action</button>
          <ul class="dropdown-menu">
            <li> <%= link_to "Show" ,listing, class: "btn btn-link"%> </li>
            <li> <%= link_to "Edit", edit_listing_path(listing), class: "btn btn-link"%></li>
            <li><%= link_to "Delete", listing, method: :delete, data: { confirm: "Are you sure"}, class: "btn btn-link"%></li>
          </ul>
        </div>
      </td>
