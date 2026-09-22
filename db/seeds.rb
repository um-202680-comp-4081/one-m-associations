# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Quiz 1

quiz1 = Quiz.create!(
  title:       'American History 1',
  description: 'American History 1776 - 1800'
)

quiz1_q1 = Question.create!(
  stem:         'What city was the first capital of the United States?',
  answer:       'New York City',
  distractor_1: 'Washington, D.C.',
  distractor_2: 'Boston'
)

quiz1_q2 = Question.create!(
  stem:         'Who first discovered America?',
  answer:       'Leif Erikson',
  distractor_1: 'Christopher Columbus',
  distractor_2: 'The Pilgrims'
)

quiz1_q3 = Question.create!(
  stem:         'When was the Declaration of Independence signed?',
  answer:       'August 2nd, 1776',
  distractor_1: 'July 4, 1776',
  distractor_2: 'September 3, 1783'
)

# Quiz 2

quiz2 = Quiz.create!(
  title:       'Chemistry - Element Names',
  description: 'Names of all of the elements of the periodic table'
)

quiz2_q1 = Question.create!(
  stem:         'What element has the chemical symbol Fe?',
  answer:       'Iron',
  distractor_1: 'Fluorine',
  distractor_2: 'Francium'
)

quiz2_q2 = Question.create!(
  stem:         'What element has the chemical symbol Na?',
  answer:       'Sodium',
  distractor_1: 'Nitrogen',
  distractor_2: 'Neon'
)

quiz2_q3 = Question.create!(
  stem:         'What element has the chemical symbol K?',
  answer:       'Potassium',
  distractor_1: 'Krypton',
  distractor_2: 'Calcium'
)

# Quiz 3

quiz3 = Quiz.create!(
  title:       'Math - Algebra 2',
  description: 'Completing the Square to solve equations'
)

quiz3_q1 = Question.create!(
  stem:         'What number completes the square for x^2 + 6x?',
  answer:       '9',
  distractor_1: '3',
  distractor_2: '36'
)

quiz3_q2 = Question.create!(
  stem:         'Rewrite x^2 + 10x + 25 as a perfect square.',
  answer:       '(x + 5)^2',
  distractor_1: '(x + 10)^2',
  distractor_2: '(x - 5)^2'
)

quiz3_q3 = Question.create!(
  stem:         'Solve x^2 + 4x - 5 = 0 by completing the square.',
  answer:       'x = 1 or x = -5',
  distractor_1: 'x = -1 or x = 5',
  distractor_2: 'x = 2 or x = -2'
)
