import React, { Component } from 'react';
import './App.css';

const Wurst = ({message}) => {
  return (
    <h1>Hello World</h1>
  )
};

class App extends Component {
  constructor(props) {
    super(props);
    this.state={
      name: ''
    }
  }

  handleChange = (e) => {
    const name = e.target.value;
    this.setState({
      name
    })
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
            <Wurst/>
            Tag {this.state.name}
            <form>
              <input type='text' onChange={this.handleChange}/>
              <input type='submit' onClick={() => alert(this.state.name)} value='Submit'/>
            </form>
        </header>
      </div>
    );
  }
}

export default App;
