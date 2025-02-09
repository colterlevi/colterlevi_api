require 'json'

# Seed Questions
all_questions = JSON.parse(File.read(Rails.root.join('db/seeds/questions.json')))

all_questions.each do |item|
  Question.find_or_create_by!(
    category: item['category'],
    question_type: item['type'],
    difficulty: item['difficulty'],
    question: item['question'],
    correct_answer: item['correct_answer'],
    incorrect_answers: item['incorrect_answers']
  )
end

puts "Questions have been successfully imported!"

# Seed Experiences
experiences_data = JSON.parse(File.read(Rails.root.join('db/seeds/experience.json')))

experiences_data.each do |exp|
  Experience.find_or_create_by!(
    title: exp["title"],
    role: exp["role"],
    link: exp["link"],
    location: exp["location"],
    start_date: exp["start_date"].to_i,
    end_date: exp["end_date"].to_i,
    details: exp["details"].join("\n"),
    experience_type: exp["type"]
  )
end

puts "Seeded #{Experience.count} experiences!"
