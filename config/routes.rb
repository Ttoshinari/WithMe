Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'mypage/top'
  get 'mypage/edit'
  delete 'mypage/delete'
  patch 'mypage/update'
  get 'mypage/postEdit'

  root 'all_posts#all_post'
  get 'new_post', to: 'new_posts#new_post'
  get 'post_detail', to: 'post_details#post_detail'
  post 'send_post', to: 'new_posts#send_post'
  

  get 'search_cate', to: 'all_posts#search_category'
  get 'search_word', to: 'all_posts#search_word'
  get 'search_pref', to: 'all_posts#search_prefecture'
end
