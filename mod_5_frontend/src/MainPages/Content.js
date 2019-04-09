import React, { Component } from 'react';
import FamilyContainer from './FamilyContainer';
import EditHomePage from './EditHomePage'
import CreateNewGroup from '../CRUD/CreateNewGroup'

/*
  Advice: If you cannot figure out how to get this component to work,
          move the div and renderContent up into NoteContainer and
          try to get it to work in the parent first.
          Then complete the rest of your app before attempting to
          refactor to get this Content component to work.
*/
class CustomizeHomePage extends Component {
  renderContent = () => {
    if (false) {
      return <EditHomePage />;
    } else if (false) {
      return <CreateNewGroup />;
    } else {
      return <FamilyContainer />;
    }
  }

  render() {
    return (
      <div className='master-detail-element detail'>
        {this.renderContent()}
      </div>
    );
  }
}

export default CustomizeHomePage;