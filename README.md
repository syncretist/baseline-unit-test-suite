### Baseline Testsuite

#### Commands

`rake` |> runs default task, which is set to run tests via `Rakefile`

#### Documentation

##### Running tests

- https://mallibone.wordpress.com/tag/raketesttask/

##### Additional Testing Tools

- http://ruby.sadi.st/Ruby_Sadist.html (flog, flay, heckle)

##### Minitest References

- http://mattsears.com/articles/2011/12/10/minitest-quick-reference

##### Minitest Philosophy

- http://crashruby.com/2013/05/10/running-a-minitest-suite/
- http://interblah.net/how-minitest-works

##### Minitest API

**Unit Test**
<br>via http://ruby.about.com/od/testdrivendevelopment/ss/Unit-Testing-With-Minitest-More-Assertions.htm

*assert(p)* 
- Asserts that p is true. The basic assertion, see the previous article.
 
*assert_empty(a)* 
- Asserts that a is empty. This implies that it also tests if a responds to empty? and that the empty method returns true.

*assert_equal(a,b)* 
- Asserts that a and b are equal. Equality is defined as a == b, so while a and b may not refer to the same objects, they may still be equal. Remember that in the statement a == b, this is equivalent to calling a.send(:==, b), so a's equality method will be used here.

*assert_in_delta(a, b, delta)* 
- This assertion is for comparing floating point objects. Since floats should not be compared with the == operator due to the inherent inaccuracy of floating point operations, you instead test if their difference is within some delta. So, to test if a and b are within 0.001 of each other, you could use assert_in_delta(a, b, 0.001). How accurate you want your deltas to be depends on the accuracy of floats on your system and how tolerant you want "equality" to be.

*assert_in_epsilon(a, b, epsilon)* 
- This is similar to a delta, but the epsilon is a measure of relative error in floating point operations. Rather than a fixed delta, the epsilon is based on the magnitude of the smallest times the epsilon value given.
assert_includes?(a, obj) - Assert that collection a includes object obj. This implies that a also responds to the include? method.

*assert_instance_of?(klass, a)* 
- Asserts that a is an instance of klass. This simply uses the instance_of? method.

*assert_kind_of?(klass, a)* 
- Similar to assert_instance_of, but also takes inheritance into account.

*assert_match(regexp, str)* 
- Asserts that string matches the regular expression regexp. If regexp is a string, it will compile a regular expression out of it, so it can potentially be easily generated programatically.

*assert_nil(a)* 
- Asserts that a is nil. The nil? method is used here.

*assert_operator(a, op, b)* 
- For example, assert_operator(a, :==, b). Applies the given operator to a and b and asserts the result.

*assert_output(stdout=nil, stderr=nil) { … }* 
- Runs the block and captures the stderr and stdout output, then matches them to given stdout and stderr values using assert_match, meaning regular expressions are used. This can be used to test larger parts of a system that produce specific output without having to assert anything about the internals of the system.

*assert_predicate(a, p)* 
- Asserts predicate p applied to a is true. A predicate is the empty? idiom, a method that ends in a question mark, takes no arguments and returns either true or false. Predicate methods are used to query the state of an object. For example, you can say assert_predicate a, :empty? or assert_predicate a, :nil?.

*assert_raises(*exp) { … }* 
- Runs the block and asserts that it raises one of the exception classes listed in the argument list. As it's always good to test for failure cases, and failures often raise exceptions, this is one you'll use quite often.

*assert_respond_to(a, meth)* 
- Assert object a responds to method meth.

*assert_same(a, b)* 
- Asserts that a and b are equal by using a.equal?(b). What this means exactly depends on the types of a and b.

*assert_send(ary)* 
- Here, ary is an array consisting of [obj, msg, *args] meaning an object, a symbol and arguments. Internally, this method does obj.send(msg, *args) and ensures the result is true.

*assert_silent { … }* 
- Asserts that the block does not print anything to stdout or stderr.

*assert_throws(sym) { … }* 
- Asserts that the block throws symbol sym. Throw and catch are distinctly different than raise and rescue, this does not test for exceptions raised with raise.
