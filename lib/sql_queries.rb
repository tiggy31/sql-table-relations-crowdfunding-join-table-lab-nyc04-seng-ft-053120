# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT t1.title, SUM(t2.amount) FROM projects AS t1 INNER JOIN pledges AS t2 on t1.id = t2.project_id GROUP BY t1.id ORDER BY t1.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT t1.name,age, SUM(t2.amount) FROM users AS t1 INNER JOIN pledges AS t2 on t1.id = t2.user_id GROUP by t1.id ORDER by t1.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT t1.title, SUM(t2.amount) - t1.funding_goal FROM projects AS t1 JOIN pledges AS t2 on t1.id = t2.project_id GROUP BY t1.id HAVING SUM(t2.amount)>= t1.funding_goal;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "SELECT t1.name, SUM(t2.amount) FROM users AS t1 JOIN pledges AS t2 on t1.id = t2.user_id GROUP BY t1.name ORDER BY SUM(t2.amount)"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT t1.category, t2.amount FROM projects AS t1 JOIN pledges AS t2 on t1.id = t2.project_id WHERE t1.category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "SELECT t1.category, SUM(t2.amount) FROM projects AS t1 JOIN pledges AS t2 on t1.id = t2.project_id WHERE t1.category = 'books'"
end
