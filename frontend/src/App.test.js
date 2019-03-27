import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<App />, div);
  ReactDOM.unmountComponentAtNode(div);
});
import React, { Component } from 'react';
//import Search from './components/Search';
import { Container, Table, TopNavBar, Footer, Header } from 'react-strap'
import './App.css';
import axios from 'axios';
import {
  BrowserRouter as Router,
  Route, browserHistory, IndexRourte, Switch, Link, withRouter, Redirect
} from 'react-router-dom'
import Assets from './components/Assets';
import AssetsIndividual from './components/AssetsIndividual';

////"proxy": "http://localhost:8080",

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
    const response = await fetch('http://localhost:8080/assets/attributes')
    const json = await response.json()
    if (!response) {
      console.log("failed api response")
    }
    console.log("async: ", this)
    this.setState({ assets: json })
  }

  // ? this.state.books.filter(book => book.title.includes(this.state.filter)) : this.state.books
  removeFighterFromList = (id, history) => {
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

  addFighterToList = id => {
    axios.post(`http://localhost:8080/assets/${id}`)
      .then(res => {
        let otherAssets = this.state.assets
        this.setState({ asets: [...otherAssets.filter(asset => asset.id !== id), res.data] })
        console.log("App.js - addFighterToList: ", res.data)
      })
  }

      renderRedirect = () => {
        // alert('test redirect')
       // if (this.state.redirect) {
          return <Redirect to={`/`} />
      }


  render() {



    return (

      <div className="App"><Container>

        <Router><ul>

          <Table>
          </Table>
          <Switch>

            <Route exact path="/" render={(props) => <Assets assets={this.state.assets} removeAssetFromList={this.removeAssetFromList}
              getIndividualAsset={this.getIndividualAsset}
              filter={this.state.filter}
              changeFilter={this.changeFilter}
              routeChange={this.routeChange}
            />} />

            <Route exact path='/assets/:id' render={(data) => {
              console.log("APP: ", data)
              return <AssetsIndividual id={data.match.params.id}
              removeAssetFromList={this.removeAssetFromList}
              routeChange={this.routeChange}
              data={data}
              />
            }} />

          </Switch>


        </ul>

        </Router>
      </Container>
      </div>
    );
  }
}
//export default withRouter(App)
export default App
