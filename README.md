A sandbox to play around with React.


What happens is:

- First yoou create a class (for a component or an element)
- Which renders the 'design' for that class
- And where you add behaviour (dus functions). props and state
- THen create 

For forms or similar 'childs'
- first create the component @ObjectForm
- add render, functions like @handleSubmit
- Wherever our form component is created, is the place 
to pass a handleNewRecord property, with a method reference in it
In this case, in: Records component.
- Then update state (of the parent)

With react_rails gem helper
In rail template:
call react_component x and pass in data

Write extra functionality in a file 
fe utils.js.coffee
@handyFunction = (onitsobject) ->
x + AndereFunctie(onitsobject).etc


Note: in the spirit of small iterations,
I created the element Amount box, with the three types first
(in commit xxx)
Afterwards built the calculator methods.