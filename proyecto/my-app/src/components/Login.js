import 'bootstrap/dist/css/bootstrap.min.css';
import React, { Component } from "react";


class Login extends Component{

  state = {
    credentials: {username: '', password: ''}
  }

  login = event =>{
    console.log(this.state.credentials);
    fetch('http://localhost:8000/auth/', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json'},
      body: JSON.stringify(this.state.credentials)
    }).then(
      data => {
        console.log(data);
      }
    ).catch(error => console.log(error))
  }

  inputChanged = event => {
    const cred = this.state.credentials;
    cred[event.target.name] = event.target.value;
    this.setState({credentials: cred});
  }

    render(){
        return (
            <div>
              <h1>Login User</h1>
              <label>
                Username:
                <input type="text" name="username" 
                value={this.state.credentials.username}
                onChange={this.inputChanged} />
              </label>
              <br/>
              <label>
                Password:
                <input type="password" name="password"
                value={this.state.credentials.password}
                onChange={this.inputChanged}/>
              </label>
              <button onClick={this.login}>Login</button>
            </div>
          );
    }
}


export default Login;
