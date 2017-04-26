@Records = React.createClass
  getInitialState: ->
    records: @props.data

  getDefaultProps: ->
    records: []

  addRecord: (record) ->
    records = @state.records.slice()
    records.push record
    @setState records: records

  render: ->
    React.DOM.div
      className: 'records'
      React.DOM.h2
        className: 'title'
        'Records'
      React.createElement AmountBox, type: 'succes', amount: 5, text: 'Credit'
      React.createElement AmountBox, type: 'danger', amount: -3, text: 'Debit'
      React.createElement AmountBox, type: 'info', amount: 5-3, text: 'Balance'
      React.createElement RecordForm, handleNewRecord: @addRecord
      React.DOM.hr null

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

    #### STEP 4: Add 'create a new record' feature (controller action, form component)
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
