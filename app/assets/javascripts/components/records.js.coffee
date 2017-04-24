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
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Date'
            React.DOM.th null, 'Title'
            React.DOM.th null, 'Amount'
        React.DOM.tbody null,
          for record in @state.records
            React.createElement Record, key: record.id, record: record


    #### STEP 3: Add table and display each record (see also record.js.coffee)
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
