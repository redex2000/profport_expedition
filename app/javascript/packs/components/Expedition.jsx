import React from 'react';

export default class Expedition extends React.Component {
  render() {
    const {expedition} = this.props;
    return (
      <tr>
        <td>{expedition.title}</td>
      </tr>
    );
  }
}