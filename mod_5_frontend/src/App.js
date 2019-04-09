import React, { Component } from 'react';
import Row from 'react-bootstrap/Row'
import Button from 'react-bootstrap/Button'
import ButtonToolbar from 'react-bootstrap/ButtonToolbar'
import GroupList from './containers/GroupList';
import './App.css';
import CustomizeHomePage from './MainPages/CustomizeHomePage';
import Navbar from './components/Navbar'
import {Route, Redirect, Switch} from 'react-router-dom'
import Container from 'react-bootstrap/Container'
import Col from 'react-bootstrap/Col'

class App extends Component {
  constructor(){
    super()
    this.state={
      allGroups:[],
      searchTerm: ""
    }
  }
  
  // basic styling for NavLinks */
  

  componentDidMount = () => {
    fetch(`http://localhost:3000/api/v1/groups`)
    .then(resp => resp.json())
    .then(allGroupData => {
      // console.log(allGroupData.slice(0,6))
      let withOutRepeatsArr= allGroupData.slice(0,6)
     return this.setState({allGroups:withOutRepeatsArr})
    }
   )
  }

  handleClick = () => {
    console.log('attempting to go to editHome')
   return <Route exact path="/editHome" render={()=> 
            <CustomizeHomePage allGroups={this.state.allGroups} handleClick={this.handleClick}/>}>
          </Route>
  }

  render() {
    //Will need to change Redirect Paths for the other routes
    //when you need to pass props you need to use the render method, not componenet
    //43:45 in routes is last spot I left off
    return (
      <div className="App">
        <Navbar/>

        <br/>
        <br/>
        
        <Route 
          exact path="/editHome" 
          render={()=> <CustomizeHomePage allGroups={this.state.allGroups} handleClick={this.handleClick}/>}>
        </Route>
        <Route 
          exact path="/edit" 
          render={()=> <Redirect to="/editHome"/>}/>
        
        {/* <Route 
              exact path= "/Home" 
              render={()=> {return (<App/>) }} /> */}
       
        
        <GroupList allGroups={this.state.allGroups} handleClick={null}/>
        <br/>
        <br/>
        <ButtonToolbar> 
          <Button 
            variant="success" 
            size="lg" 
            onClick={this.handleClick}>Edit Family Tree
          </Button> 
        </ButtonToolbar>
        
        <Container>
          <Row>
            <Col> Announcement Forum </Col>
          </Row>
          <Row>
            <Col> This is container for announcements</Col>
          </Row>
         
        </Container>
          <Route exact path="/groups/:id"  />
          
      </div>
    );
  }
}

export default App;
