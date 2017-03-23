jenny = User.create(username: "jenny", password: "123", email: "jenny@jenny.com")
jing = User.create(username: "jing", password: "123", email: "jing@jing.com")
kevin = User.create(username: "kevin", password: "123", email: "kevin@kevin.com")
ian = User.create(username: "ian", password: "123", email: "ian@ian.com")

running = Habit.create(routine: "running")
reading = Habit.create(routine: "reading")
 # = Habit.create(routine: "")
 # = Habit.create(routine: "")

Routine.create(user_id: jenny.id, habit_id: running.id)
Routine.create(user_id: jing.id, habit_id: reading.id)
