
Game.destroy_all
User.destroy_all

never_switch = User.create(name: "Never-Switch")
never_switch.games.create([
    {door1: "car", door2: "marmot", door3: "beaver", original_pick: "door1", host_reveal: "door3", user_switch: false, user_win: true},
    {door1: "car", door2: "beaver", door3: "woodchuck", original_pick: "door3", host_reveal: "door2", user_switch: false, user_win: false},
    {door1: "woodchuck", door2: "car", door3: "marmot", original_pick: "door2", host_reveal: "door1", user_switch: false, user_win: true},
    {door1: "car", door2: "marmot", door3: "woodchuck", original_pick: "door2", host_reveal: "door3", user_switch: false, user_win: false},
    {door1: "beaver", door2: "beaver", door3: "car", original_pick: "door1", host_reveal: "door2", user_switch: false, user_win: false},
    {door1: "woodchuck", door2: "car", door3: "marmot", original_pick: "door3", host_reveal: "door1", user_switch: false, user_win: false},
])
always_switch = User.create(name: "Always-Switch")
always_switch.games.create([
    {door1: "marmot", door2: "car", door3: "beaver", original_pick: "door1", host_reveal: "door3", user_switch: true, user_win: true},
    {door1: "woodchuck", door2: "beaver", door3: "car", original_pick: "door3", host_reveal: "door1", user_switch: true, user_win: false},
    {door1: "woodchuck", door2: "car", door3: "marmot", original_pick: "door2", host_reveal: "door1", user_switch: true, user_win: false},
    {door1: "beaver", door2: "beaver", door3: "car", original_pick: "door2", host_reveal: "door1", user_switch: true, user_win: true},
    {door1: "marmot", door2: "car", door3: "woodchuck", original_pick: "door1", host_reveal: "door3", user_switch: true, user_win: true},
    {door1: "car", door2: "marmot", door3: "marmot", original_pick: "door3", host_reveal: "door2", user_switch: true, user_win: true},
])