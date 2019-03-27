import React, { Component } from 'react'

import { Form, FormGroup, Label, Input } from 'reactstrap'


class Search extends Component{

    state = {
     filter: "",
     changeFilter: ""
    }

  /*  _onChange = e => {
        let { name, value } = e.target
        this.setState({
          [name] : value
          })
          console.log("name: ", name)
        console.log("value: ", value)
      }
   */

    _onChange = (e) => {
        let { name, value } = e.target
        this.setState({ filter : {
            ...this.state.filter,
            [name] : value
        }
        })
        console.log("Assets name: ", name)
        console.log("Assets value: ", value)
    }


   render(){

    console.log("Search: ", this)

        return (
        <Form>
            <FormGroup>
                <Label for="searchByAsset">Search By Asset</Label>
                <Input
                    type="text"
                    name="searchByAsset"
                    id="searchByAsset"
                    placeholder="e.g. 10010" 
                    value={this.filter}
                    onChange={e => this._onChange(e, this.changeFilter)}
                />
            </FormGroup>
        </Form>
    )
}
}
export default Search
