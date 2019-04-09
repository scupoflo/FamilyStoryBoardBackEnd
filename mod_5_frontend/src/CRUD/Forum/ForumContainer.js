import React, { Component } from 'react';

class ForumContainer extends Component {
  render() {
    return (
        <form className="goal-editor" name={this.props.editGoal.title} onSubmit={()=>this.props.handleEditSubmit(this.props.editGoal)}>
         <label> Edit Your Goal!</label>
         <br/>
         <br/>
            <input 
              type="text"
              name="title"
              onChange={event => this.props.handleEditChange(event)}  
              placeholder= {this.props.editGoal.title}
              
            />
          <br/>
          <br/>
              
          <label>
            Notes:
              <br/>
              <textarea 
                name="body"
                onChange={event => this.props.handleEditChange(event)}  
                placeholder= {this.props.editGoal.body}
                 />
              </label>
              <br/>

              <label>
                Pick your Priority Level:
                <select  name= "priority" onChange={event => this.props.handleEditChange(event)}  >
                  <option value="low">Low</option>
                  <option value="medium">Medium</option>
                  <option value="high">High</option>
                </select>
              </label>
              <br/>

              <input 
              type="numbers" 
              onChange={event => this.props.handleEditChange(event)}  
              id="deadline"
              name="deadline" 
              placeholder= {this.props.editGoal.deadline}
              
              />
            <br/>

              <label>
                Upload a Picture:
                <input 
                  type="text"
                  onChange={event => this.props.handleEditChange(event)}  
                  name="picture" 
                  placeholder= "Paste a URL for your Picture !"
                 
                  />
              </label>
              <br/>
              

              <input type="submit" value="Submit" />
              <button 
                onClick={()=> this.props.handleCancelEdit()}> Cancel
              </button>

      </form>
    )
  }
}


//       <form className="goal-editor">
//         <input type="text" name="title" /> {this.props.editGoal.title}
//         <img
//           alt= "" className="card__thumbnail" src={this.props.editGoal.picture} />
//         <textarea name="body" />
//         <div className="button-row">
//           <input className="button" type="submit" value="Save" />
//           <button
//             onClick= {()=>this.props.handleCancelEdit(this.props.editGoal)}
//             type="button">Cancel</button>
//         </div>
//       </form>
//     );
//   }
// }

export default GoalEditor;


