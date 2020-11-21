import 'bootstrap/dist/css/bootstrap.min.css';
import React from "react";
import { Container, Row, Col } from 'react-bootstrap';

const divStyle = {
    background: 'red',
    float: 'left'
  };

function Columna(props){
    return(
        <div class="row">
            <Container style={divStyle}>
                <Row>
                    <Col xs={2}>
                        <h3> { props.texto } </h3>
                    </Col>
                </Row>
            </Container>
        </div>
    )
}

export default Columna;