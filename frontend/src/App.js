import React, { Component } from 'react';
//import Search from './components/Search';
import { Container, Table, Card, CardImg, CardBody} from 'reactstrap'
import './App.css';
import axios from 'axios';
import {
  BrowserRouter as Router,
 Route, browserHistory, IndexRourte, Switch, Link, withRouter, Redirect
} from 'react-router-dom'
import Assets from './components/Assets';
import AssetsIndividual from './components/AssetsIndividual';
////"proxy": "http://localhost:8080",
import TopNavBar from './components/TopNavBar'
import Header from './components/Header'
import Footer from './components/Footer'

class App extends Component {
  Home = () => {
    return (<h1>Home</h1>)
  }

  state = {
    assets: [],
    asset: {},
    category: 1,
    attributes: '',
    notes: false

  }

  changeFilter = filter => {
    this.setState({ filter })
  }

  async componentDidMount() {
    const response = await fetch('http://localhost:8080/assets')
    const json = await response.json()
    if (!response) {
      console.log("failed api response")
    }
    console.log("async: ", this)
    this.setState({ assets: json })
  }

  // ? this.state.books.filter(book => book.title.includes(this.state.filter)) : this.state.books
  removeAssetFromList = (id, history) => {
    axios.delete(`http://localhost:8080/assets/${id}`)
      .then(res => {
        let otherAssets = this.state.assets.filter(asset => {
          console.log(`deleted asset id is ${id} ---------- asset id is: ${asset.asset_id}`)
          return asset.asset_id !== parseInt(id)
        })
        console.log('---------------',otherAssets)
        this.setState({ assets: [...otherAssets] })
        console.log("App.js - removeAsset: ", res.data)
        history.push('/')
      })
  }

  addAssetToList = id => {
    axios.post(`http://localhost:8080/assets/${id}`)
      .then(res => {
        let otherAssets = this.state.assets
        this.setState({ assets: [...otherAssets.filter(asset => asset.id !== id), res.data] })
        console.log("App.js - addAssetToList: ", res.data)
      })
  }

    /*  renderRedirect = () => {
        // alert('test redirect')
       // if (this.state.redirect) {
          return <Redirect to={`/`} />
      }
*/

  render() {


console.log("assets from app ", this.state.assets)
let sampleQRC = `https://api.qr-code-generator.com/v1/create?access-token=EBephxedmZHs9OWzR2Kbv-125ifulLI1LemyW4NO2hwWifAzpHadEVcOq-OkFtNz&frame_name=no-frame&frame_color=%23000000&foreground_color=%23000000&marker_left_template=version1&marker_right_template=version1&marker_bottom_template=version1&qr_code_text=http%3A%2F%2Flocalhost%3A3000%2Fassets%2F10010&frame_text=Scan%20me&frame_icon_name=mobile&image_format=PNG&image_width=300`;

    return (
<Router>
      <div className="App">
      <Container>
      <TopNavBar />
      <Header />
      <Route exact path='/assets/:id' render={(data) => {
                        console.log("APP: ", data)
                        return <AssetsIndividual aid={data.match.params.asset_id}
                          removeAssetFromList={this.removeAssetFromList}
                        //  routeChange={this.routeChange}
                          data={data}
                        />
                      }} />
           <Assets assets={this.state.assets} removeAssetFromList={this.removeAssetFromList}

              filter={this.state.filter}
/>
<CardBody>
  <CardImg src={sampleQRC} alt={`sampleQRC`} top width='50%' />
  </CardBody>
        <Footer />
      </Container>
      </div>
      </Router>
    );
  }
}
//export default withRouter(App)
export default App
