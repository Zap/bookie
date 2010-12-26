Factory.define :wager do |p|
  p.title 'Atomic Sit-ups'
  p.description 'I dont think that anyone can do a single Atomic Sit-up properly'
  p.association :left_user, :factory=>:user
  p.association :right_user, :factory=>:user
end

Factory.define :user do |u|
 u.email { "user#{rand(36**20).to_s(36)}@sample.invalid" }
 u.password 'asdfasdfasdf'
end
