import logo from './logo.svg';
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import React from "react";
import Barra from "./components/Barra.js";
import Login from "./components/Login.js";
import axios from 'axios';
import DjangoCSRFToken from 'django-react-csrftoken';

const api = axios.create({
  baseURL: 'http://127.0.0.1:8000/api/login/'
})

function App() {
  return (
    <div>
      <Barra texto="Super Intendencia del Medio Ambiente"></Barra>
        <Login/>
    </div>
  );
}

export default App;




