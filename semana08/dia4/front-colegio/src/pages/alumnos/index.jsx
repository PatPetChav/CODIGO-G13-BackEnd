import React from 'react';
import "./index.scss";
import { Row, Col, Card, Table } from 'react-bootstrap';
import Form from 'react-bootstrap/Form'
import Button from 'react-bootstrap/Button'
import axios from 'axios'


class Alumnos extends React.Component {

    constructor(props){
        super(props);
        this.state=({
            alumnos:[],
            alumno_nombre:'',
            alumno_email:'',
            alumno_celular:'',
            alumno_github:''
        })
        this.cambioNombre = this.cambioNombre.bind(this);
        this.cambioEmail = this.cambioEmail.bind(this);
        this.cambioCelular = this.cambioEmail.bind(this);
        this.cambioGithub = this.cambioEmail.bind(this);
        this.mostrar = this.mostrar.bind(this);
        this.guardar = this.guardar.bind(this);
    }
  
    cambioNombre(e){
        this.setState({
            alumno_nombre: e.target.value
        })
    }
  
    cambioEmail(e){
        this.setState({
            alumno_email:e.target.value
        })
    }

    cambioCelular(e){
        this.setState({
            alumno_celular:e.target.value
        })
    }

    cambioGithub(e){
        this.setState({
            alumno_github:e.target.value
        })
    }
  
    componentDidMount(){
       this.mostrar();
    }
  
    mostrar(){
      axios.get('http://localhost:5000/alumno')
      .then(res =>{
          //console.log(res.data);
          this.setState({alumnos:res.data})
      })
    }
  
    guardar(e){
      e.preventDefault();
      axios.post('http://localhost:5000/alumno',{
          nombre: this.state.nombre,
          email: this.state.email
      })
      this.setState({
          nombre:'',
          email:''
      })
      this.mostrar();
    }


    render() {
        return (
            <React.Fragment>
                <Row>
                    <Col md="12">
                    <Card>
                        <Card.Header>
                        Listado de Alumnos
                        </Card.Header>
                        <Card.Body>
                        <Table className="table">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Email</th>
                                <th>Celular</th>
                                <th>Github</th>
                            </tr>
                            </thead>
                            <tbody>
                            {
                                this.state.alumnos.map((alu,index) => {
                                    return(
                                        <tr>
                                            <td>{index + 1}</td>
                                            <td>{alu.alumno_nombre}</td>
                                            <td>{alu.alumno_email}</td>
                                            <td>{alu.alumno_celular}</td>
                                            <td>{alu.alumno_github}</td>
                                        </tr>
                                )})
                            }
                            </tbody>
                        </Table>
                        </Card.Body>
                    </Card>
                    </Col>
                </Row>
                <Row>
                <Col md="12">
                    <Card>
                        <Card.Header>
                        Listado de Alumnos
                        </Card.Header>
                        <Card.Body>
                            <Form onSubmit={this.guardar}>
                                
                                <Form.Group className="mb-3">
                                    <Form.Label>Nombre</Form.Label>
                                    <Form.Control type="text" placeholder="Nombre" onChange={this.cambioNombre} />
                                </Form.Group>
                                

                                <Form.Group className="mb-3" controlId="formBasicEmail">
                                    <Form.Label>Email</Form.Label>
                                    <Form.Control type="email" placeholder="Email" onChange={this.cambioEmail}/>
                                </Form.Group>

                                <Button variant="primary" type="submit">
                                    Insertar
                                </Button>
                            </Form>
                            </Card.Body>
                    </Card>
                    </Col>
                </Row>    
            </React.Fragment>
        );
    }
}

export default Alumnos;
