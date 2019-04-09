import React, { Component,Fragment } from 'react';
import GroupCard from '../components/GroupCard';
import CardGroup from 'react-bootstrap/CardGroup'
import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'
import Col from 'react-bootstrap/Col'

class GroupList extends Component {
  constructor(){
    super()
      this.state= {
        groupMembers:[]
      
    }
  }

  assignMembersToGroup = () => {
    fetch(`http://localhost:3000/api/v1/members`)
    .then(resp => resp.json())
    .then(allMembers => this.setState({groupMembers:allMembers}))
  }

  viewMembers = () => {
    return this.state.groupMembers
  }

  
  

  //this breaks down how many cards goes into each row in the group card!
  
  render() {
    const result = this.props.allGroups.map((x,i)=> {
      return i%4 === 0 ? this.props.allGroups.slice(i, i+4) : null
    }).filter(x=> x != null)
    return (
      
            <Fragment>
              {result.map(result=> {
                return (
                <section>
                  {result.map(group =>
                    <GroupCard 
                    key={group.id} 
                    group={group} 
                    handleClick={this.assignMembersToGroup}
                    viewMembers={this.viewMembers}
                  /> 
                    )}
                </section>)
              }
                
              )}
            </Fragment>
          
          
       
        
      
      
        
        
        
        
     
    );
  }
}

export default GroupList;