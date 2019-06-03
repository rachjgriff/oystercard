# Debugging Stack Trace #

The error we are encountering due to missing code file, also we don't
even have the folder, see error log below, on line 1.

An error occurred while loading ./spec/oystercard_spec.rb.
Failure/Error: require 'oystercard'

LoadError:
  cannot load such file -- oystercard
# ./spec/oystercard_spec.rb:1:in  <top (required)>
No examples found.


Finished in 0.00029 seconds (files took 0.15583 seconds to load)
0 examples, 0 failures, 1 error occurred outside of examples

We used previous experience to deduce that we must create a file.
