import React, { Component } from 'react';
import Card from 'react-bootstrap/Card'

class Member extends Component {
  

  render() {
    return (
      <Card className="box f" bg="primary" text="white">
            <Card.Img variant="top" src="https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/53300008_10158918221058084_6280956535833100288_n.jpg?_nc_cat=103&_nc_ht=scontent-iad3-1.xx&oh=2a62c038c7cfb1874f985064c702c4e0&oe=5D38A73E" />
            <Card.Body>
                <Card.Title> Family Name</Card.Title>
                <Card.Text>
                    Card Text
                </Card.Text>
            </Card.Body>
            <Card.Footer>
                <small className="text-muted">Last updated 3 mins ago</small>
            </Card.Footer>
        </Card>
    );
  }
}

export default Member;