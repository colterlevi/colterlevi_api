# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

all_questions = JSON.parse(File.read(Rails.root.join('db/data.json')))

all_questions.each do |item|
      Question.create!(
        category: item['category'],
        question_type: item['type'],
        difficulty: item['difficulty'],
        question: item['question'],
        correct_answer: item['correct_answer'],
        incorrect_answers: item['incorrect_answers']
    )
end

puts "Questions have been successfully imported!"