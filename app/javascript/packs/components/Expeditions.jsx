import React from 'react';
import Expedition from "./Expedition";

export default class Expeditions extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      expeditions: []
    };
  }

  render() {
    const {expeditions} = this.state; // деструктуризация
    const rows = expeditions.map(function(value) {
      return (
        <Expedition expedition={value}/>
      );
    });
    return (
      <table className="table table-bordered">
        <thead>
          <tr onClick={this.handler}>
            <th>Название</th>
          </tr>
        </thead>
        <tbody>
          {rows}
        </tbody>
      </table>
    );
  }

  componentDidMount() {

    fetch('/v1/expeditions.json', {
      headers: {
        'Authorization': 'Token asdfasdfasd'
      }
    })
      .then((response) => response.json())
      .then((result) => {
        this.setState({
          expeditions: result
        });
      })
      .catch(err => console.error(err))
    ;

  }
}