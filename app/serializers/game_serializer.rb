class GameSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user
  attributes :door1, :door2, :door3, :original_pick, :host_reveal, :user_switch, :user_win, :user_name
end
