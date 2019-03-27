import React, { Component } from 'react'
import AssetsID from './AssetsID';


class AssetsIndividual extends Component {
 state = ({
      filter: '',
      changeFilter: ''

 })

render(){

console.log("AssetsIndividual: ", this.props)
      return(

            <>
        ASSETS

           <AssetsID id={this.props.id }
           removeAssetFromList={this.props.removeAssetFromList}
           changeFilter={this.state.changeFilter}
            filter={this.state.filter}
            //routeChange={this.props.routeChange}
            data={this.props.data}
            />

          </>
   )}
}

export default AssetsIndividual;
