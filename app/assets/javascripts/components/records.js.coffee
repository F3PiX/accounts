@Records = React.createClass
  getInitialState: ->
    records: @props.data
  getDefaultProps: ->
    records: []
  render: ->
    React.DOM.div
      className: 'records'
      React.DOM.h2
        className: 'title'
        'Records'

    #### STEP 2: init class with init state and props : GetInitialState + GetDefaultProps
    ####  STEP 1 : Create class + render method
# Each component requires a render method.
#  The render method should return an instance of ReactComponent ( h2 ^ is a built-in component )

# With JSX syntax:
#render: ->
#  `<div className="records">
#    <h2 className="title"> Records </h2>
#  </div>`

#@Records = React.createClass
#  render: ->
#    React.DOM.div
#      className: 'records'
#      React.DOM.h2
#        className: 'title'
#        'Records'
