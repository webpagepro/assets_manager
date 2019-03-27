import React, { Component } from 'react';
import { Button, Table, CardImg } from 'reactstrap'
import axios from 'axios';
import {
  BrowserRouter as Router,
  Route, Switch, Link, Redirect
} from 'react-router-dom'
import {withRouter, browserHistory } from 'react-router-dom'


const sbutton = {
  styles: {
    TextAlign: 'right',
    marginLeft: '70%',
    marginBottom: '20px',
    marginTop: '10px'
  }
}

class AssetID extends Component {

  state = {
    asset: {},
    id: "",
    assets: "",
    asset: "",
    qrcode: "",
    categories: "",
    redirect: false,
    editForm: false,
    editedForm: false,
    editFormButton: false,
    path: '/'
  }

  componentDidMount() {
    axios.get(`http://localhost:8080/assets/${this.props.id}`)
      .then(res => {
        this.setState({ asset: res.data })
      })
      .catch((err) => {
        console.error('err', err);
      });
  }


  handleChange = e => {
    let { name, value } = e.target
    this.setState({
      fighter: {
        ...this.state.asset,
        [name]: value,
      }

    })
  }


  _onClickEditShowForm = e => {
    this.setState(prev => {
      return {
        editForm: !prev.editForm
      }
    })
  }



  _onClickSubmitEdit = e => {
    axios.put(`http://localhost:8080/asset/${this.state.asset.id}`,
      {
        name: this.state.asset.asset_id,
        bio: this.state.asset.categorry_id,
        image_url: this.state.asset.createdAt,
        strength: Number(this.state.asset.editedAt)
      })
      .then(res => {
        this.setState({editForm: false})
      })
      .catch(function (error) {
        console.log(error);
      })
  }

  Home = () => {
    return (<h1>Back to Fighter List</h1>)
  }

  Asset = () => {
    return (<h1>Refresh</h1>)
  }

  setRedirect = () => {
    alert('test redirect')
this.setState({
  redirect: true
})
  }

  renderRedirect = () => {
   // alert('test redirect')
    if (this.state.redirect) {
      return <Redirect to={`/`} />
    }
  }


  routeChange = () => {
    let path = '/';
   this.props.history.push(path);
  }



  render() {
 /*   console.log("PROPS: ", this)
    console.log("name ", this.state.name)
    console.log("bio ", this.state.bio)
    console.log("image_url ", this.state.image_url)
    console.log("strength ", this.state.strength)
  */

    return (

      <div>
        <Table striped>
          <th>Code</th><th>Attributes</th><th>Notes</th>

          <tbody>

            <tr>

              <td className="name-single">{this.state.asset.asset_id}</td>
              <td className="bio-single">{this.state.asset.category_id}</td>
              <td className="power-single">{this.state.asset.asset_id}</td>
              <td className="image_url-single"><CardImg src={this.state.asset.qrcode} alt={this.state.asset.category_id} /></td>

            </tr>
          </tbody>
        </Table>

        <div className="button-delete-single"><Button onClick={
          () => this.props.removeFighterFromList(this.props.id, this.props.history)}

         style={sbutton.styles}>Remove Asset {this.props.id}</Button></div>

        <div className="button-edit"><Button onClick={this._onClickEditShowForm}
        style={sbutton.styles}>Edit Asset {this.state.asset.id}</Button></div>


        <div className="editForm-container">


          {this.state.editForm ?
            <form className="editAssetForm" onSubmit={this._onClickEditShowForm}>
              <label>Name</label><input
                type="text"
                value={this.state.asset.asset_id}
                name="name"
                onChange={this.handleChange.bind(this)}
              />

              <label>Strength</label><input
                type="Number"
                value={this.state.assets.attribute_value}
                name="strength"
                onChange={this.handleChange.bind(this)}
              />

              <label>image_url</label><input
                type="text"
                value={this.state.assets.qrcode}
                name="qrcode"
                onChange={this.handleChange.bind(this)}
              />
              <label>{`${this.state.assets.attribute_name}`}</label><input
                type="textArea"
                value={this.state.assets.asset_id}
                name="bio"
                onChange={this.handleChange.bind(this)}
              />
              <Button onClick={this._onClickSubmitEdit} style={sbutton.styles}>Update Asset {this.state.assets.asset_id}</Button>
            </form>

            : null}

        </div>
        <Link to='/' className="backTo">Back to Asset List</Link>
      </div>
    )
  }

}

export default AssetID
//export default withRouter(Fighter)
