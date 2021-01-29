json.extract! goal, :id, :character_id, :text, :reward, :created_at, :updated_at
json.url character_goal_url(goal.character, goal, format: :json)
