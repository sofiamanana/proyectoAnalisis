import 'bootstrap/dist/css/bootstrap.min.css';
import React, { Component } from "react";
import axios from 'axios';


class Login extends Component{

  state = {
    username: 'a',
    password: 'a'
  }
  componentDidMount(){
    const cred = {
      username: 'yuyo',
      password: 'yuyito123'
    }
    axios.post('http://127.0.0.1:8000/api/login/', cred)
      .then(console.log('AAAAAAAAAAAA'))
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
              <label>
                Username:
                <input type="text" name="username" 
                value='a'/>
              </label>
              <br/>
              <label>
                Password:
                <input type="password" name="password"
                value='a'/>
              </label>
              <button >Login</button>
            </div>
          );
    }
}


export default Login;
