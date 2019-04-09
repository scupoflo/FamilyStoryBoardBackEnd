import React, { Component } from 'react';
import Container from 'react-bootstrap/Container'
import { Grid, Image } from 'semantic-ui-react'
import SearchBar from '../components/SearchBar'
import ApprovedMemberContainer from '../content/ApprovedMemberContainer'
import ShowContainer from '../content/ShowContainer/ShowContainer'
import GroupList from '../containers/GroupList'
import editHomePage from '../editHomePage.css'
import withStyles from 'react-jss'

const styles ={
  masterDetailElement: {
      color: 333,
//     float:"right",
//     margin: "10px 0px",
//     padding: "20px",
//     border: "2px dashed grey",
  },
}

class CustomizeHomePage extends Component {
  constructor(){
    super()
      this.state= {
      approvedMembers:[],
      allGroups:[],
      selectedMember: {},
      selectedGroup: {},
      requestedMembers: []
    }
  }

  componentDidMount = () => {
    fetch(`http://localhost:3000/api/v1/members`)
    .then(resp=> resp.json())
    .then(allMemberData => {
      console.log(allMemberData)
      // let withOutRepeatsArr= allGroupData.slice(0,6)
     return this.setState({approvedMembers:allMemberData})
    }
   )
  }

  // addFamilyMember = () => {
  //   data= {
  //     name:
  //     relationship:
  //   }

  //   fetch(`http://localhost:3000/api/v1/members`, {
  //     method: 'POST',
  //     headers:{
  //       "Content-Type": "application/json"
  //     },
  //     body:JSON.stringify(data)
  //   })
  //   .then(resp=> resp.json())
  // }

  render() {
    // const {classes} = this.props
    return (
      <Grid celled>
        <Grid.Column floated="right" width={3}>
        <GroupList allGroups={this.props.allGroups} handleClick={this.props.handleClick}/>
          <Image src='/images/wireframe/image.png' />
        </Grid.Column>
        <Grid.Column width={13}>
          <Image src='/images/wireframe/centered-paragraph.png' />
        </Grid.Column>
      </Grid>
    )
  }
}

export default withStyles(styles)(CustomizeHomePage) 
{/* <Container >
        <br/>
        <ShowContainer/>
        <GroupList className={classes.masterDetailElement} allGroups={this.props.allGroups} handleClick={this.props.handleClick}/>
        <SearchBar /> 
        <br/>
        <br/>
       
        <ApprovedMemberContainer allMembers={this.state.approvedMembers}/>
       
       
      </Container> */}

        
        // <GroupContainer className="group-container"/>
        