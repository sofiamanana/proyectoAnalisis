import 'bootstrap/dist/css/bootstrap.min.css';
import React, { Component } from "react";
import axios from 'axios';


class Login extends Component{

  state = {
    username: ''
  }

  handleChange = event =>{
    this.setState({username: event.target.value});
  }

  handleSubmit = event =>{
    event.preventDefault();
  }

  componentDidMount(){
    const cred = {
      username: this.state.username
    }
    axios.post('https://jsonplaceholder.typicode.com/users', cred)
      .then(res => {
        console.log(res);
        console.log(res.data);
      })
  }

  /*
  login = event =>{
    const cred = {
      username: 'yuyo',
      password: 'yuyito123'
    }
    axios.post('http://127.0.0.1:8000/api/logout/', cred)
      .then(console.log('AAAAAAAAAAAA'))
  }


  inputChanged = event => {
    const cred = this.state.credentials;
    cred[event.target.name] = event.target.value;
    this.setState({credentials: cred});
  }
*/
    render(){
        return (
            <div>
              <h1>Login User</h1>
              <form onSubmit={this.handleSubmit}>
                <label>
                  Username:
                  <input type="text" name="username" 
                  onChange={this.handleChange}/>
                </label>
                <br/>
                <button type="submit"> Login </button>
              </form>
              
              
            </div>
          );
    }
}


export default Login;
