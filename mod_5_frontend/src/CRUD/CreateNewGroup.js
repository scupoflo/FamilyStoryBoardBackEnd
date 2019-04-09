import React, {Component} from 'react'
class CreateNewGroup extends Component {
  constructor(props){
    super(props)
    this.state = {
        group: {
              name:""
              picture:""
            }
    }
  }


  handleChange = event => {
    const target = event.currentTarget
    const value = target.type === 'checkbox' ? target.checked : target.value
    const name = target.name
    
    this.setState({
      group: (Object.assign({}, this.state.group, {[event.currentTarget.name]: value} ))
    })
  }

  handleCreateSubmit = group => {
    fetch('http://localhost:3000/api/v1/groups', {
      method: 'POST',
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify(this.state.group)
    }).then(resp => resp.json())
    .then(newGroup => this.handleAddNewGroup(newGroup))
  }
   
  
 
  render() {
    console.log(this.state)
    
    return (
      <form 
        className="group-new"
        onSubmit={this.handleCreateSubmit}>
            <label> Create New Family Group!</label>
              <input 
              type="text"
              name="name" 
              placeholder= "Name your family group"
              onChange={event => this.handleChange(event)} 
              value={this.state.group.title} />

            
            <label>Upload a Picture!</label>
                <input 
                type="text"
                name="picture" 
                placeholder= "Paste a URL for your Group Picture!"
                onChange={event => this.handleChange(event)} 
                value={this.state.group.picture} />
            </label>
              
            <input type="submit" value="Submit" />
      </form>
    )
  }
}



export default CreateNewGroup;