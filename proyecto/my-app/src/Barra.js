const divStyle = {
    background: '#70A9A1',
    text: 'center',
  };

function Barra(props){
    return(
        <div>
            <h1 style={divStyle}>{ props.texto }</h1>
        </div>
    )
}

export default Barra;