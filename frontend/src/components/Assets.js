import React, { Component } from 'react'
import Asset from './Asset'
import Search from './Search'

class Assets extends Component {
    state = ({
        filter: '',
        changeFilter: ''

    })

    changeFilter = (e) => {
        this.setState({ assets : {
            ...this.state.asset,
            name : e.target.value
        }
        })
    }

    render() {
        console.log("Assets filter: ", this.state.filter)
        console.log("Assets changeFilter: ", this.changeFilter)
        console.log("Assets this: ", this.props)

        if (!this.props.assets) {
            return <div>loading</div>
        }

        let listOfAssets = this.props.assets

        //filter(asset => asset.name.includes(this.state.filter))

            .map(asset => <Asset key={asset.asset_id} asset={asset}
          //  removeAssetFromList={this.props.removeAssetFromList}
          //  changeFilter={this.state.changeFilter}
          //  filter={this.state.filter}
          //  routeChange={this.props.routeChange}
             />)

console.log("filter", this.filter)
        return (

            <div className="list">

                            <Search
                                    filter={this.state.filter}
                                    changeFilter={this.state.changeFilter}
                                    assets={this.props.assets}
                                />


                {listOfAssets}

            </div>
        )
    }
}

export default Assets;
