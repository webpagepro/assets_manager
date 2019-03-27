import React, { Component } from 'react';
import { Button, Table} from 'reactstrap'
import { Link, withRouter } from 'react-router-dom'


const sbutton = {
  styles: {
    TextAlign: 'right',
    marginLeft: '70%',
    marginBottom: '20px',
    marginTop: '10px'
  }
}
const leftColumn = {
  styles: {
    TextAlign: 'right',
    marginLeft: '0%',
    marginBottom: '2px',
    marginTop: '40px',
    top: '4px',
    position: 'relative'
  }
}


class Asset extends Component {

  handleChange = e => {
    let { name, value } = e.target
    this.setState({ [name]: value })
  }

  render() {



    return (
      <div className="none" style={leftColumn.styles}>


     <Table striped>

   <tbody>
   <th>Asset</th><th>Attributes</th><th>Notes</th>
     <tr className="list">
       <td className="name-list"><Link to={`assets/${this.props.asset.asset_id}`} >{this.props.asset.asset_id}</Link></td>
       <td className="bio-list">{this.props.asset.category_id}</td>
       {/*<td><CardImg width='50' src={this.props.Asset.image_url} alt="Card image" /></td>
       <td className="strength-list">{this.props.asset.asset_id}</td> */}
     </tr>
   </tbody>
 </Table>



        <div className="button"><Button onClick={() => this.props.removeAssetFromList(this.props.asset.asset_id, this.props.history)} style={sbutton.styles}>Remove Asset {this.props.asset.asset_id}</Button></div>

      </div>
    )
  }
}
export default withRouter(Asset)
