# Debugging Stack Trace #

The error we are encountering due to missing code file and class, also we don't
even have the folder, see error log below, on line 3.

An error occurred while loading ./spec/oystercard_spec.rb.
Failure/Error:
  describe Oystercard do
  end

NameError:
  uninitialized constant Oystercard
# ./spec/oystercard_spec.rb:3:in <top (required)>
No examples found.


Finished in 0.00028 seconds (files took 0.12046 seconds to load)
0 examples, 0 failures, 1 error occurred outside of examples

We used previous experience to deduce that we must create a file.

# step 4

Objects - Methods
customer
oystercard -> add_money

# step 5

Objects     Methods
customer
oystercard  top_up(money)

# step 6

Objects     Methods
customer
oystercard  limit(90)
