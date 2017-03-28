jenny = User.create(username: "jenny", password: "123", email: "jenny@jenny.com")
jing = User.create(username: "jing", password: "123", email: "jing@jing.com")
kevin = User.create(username: "kevin", password: "123", email: "kevin@kevin.com")
ian = User.create(username: "ian", password: "123", email: "ian@ian.com")

running = Habit.create(routine: "running")
reading = Habit.create(routine: "reading")
exercising = Habit.create(routine: "exercising")
drink_water = Habit.create(routine: "drink water")

run = Routine.create(user_id: jenny.id, habit_id: running.id)
read = Routine.create(user_id: jing.id, habit_id: reading.id)
exercise = Routine.create(user_id: kevin.id, habit_id: exercising.id)
drink = Routine.create(user_id: ian.id, habit_id: drink_water.id)

Note.create(routine_id: run.id, comment: "Why did I do this to myself?")
Note.create(routine_id: read.id, comment: "Read me a story.")
Note.create(routine_id: exercise.id, comment: "SQWATS!")
Note.create(routine_id: drink.id, comment: "I just want coffee.")
