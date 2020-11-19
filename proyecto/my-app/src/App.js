import logo from './logo.svg';
import './App.css';

import 'bootstrap/dist/css/bootstrap.min.css';
import React from "react";
import Barra from "./Barra.js";
import Columna from "./Columna.js"

function App() {
  return (
    <div>
      <Barra texto="Super Intendencia del Medio Ambiente"></Barra>
      <Columna texto="Soy una columna"></Columna>
    </div>
  );
}

export default App;




