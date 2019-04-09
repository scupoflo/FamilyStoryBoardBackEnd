import React, { Component } from 'react';
import Member from './Member'

class ApprovedMemberContainer extends Component {
  

  render() {
    return (
      <div >
        {this.props.allMembers.map(member => <Member key={member.id} member={member}/>)}
        
        
      </div>
    );
  }
}

export default ApprovedMemberContainer;
