import React, {Component} from "react"

class editedForm extends Component {
    constructor() {
        super()
        this.state = {
            attribute_name: "",
            attribute_value: "",
            qrcode:"",
            attribute_notes: ""
        }
        this.handleChange = this.handleChange.bind(this)
    }

    handleChange(event) {
        const {name, value} = event.target
        this.setState({
            [name]: value
        })
    }

    render() {
        return (
            <form>
                <input
                    type="text"
                    value={this.state.attributes.asset_id}
                    name="asset"
                    placeholder="Search assets here..."
                    onChange={this.handleChange}
                />
                <br />
                <input
                    type="textarea"
                    value={this.state.attributes.attribute_name}
                    name="attribute_name"
                    placeholder="attribute"
                    onChange={this.handleChange}
                />
                 <br />
                <input
                    type="textarea"
                    value={this.state.attributes.attribute_value}
                    name="attribute_value"
                    placeholder="attribute value"
                    onChange={this.handleChange}
                />


            </form>
        )
    }
}

export default Form

                    /**{
                     * Other useful form elements:
                     *
                     *  <textarea /> element
                     *  <input type="checkbox" />
                     *  <input type="radio" />
                     *  <select> and <option> elements
                      }*/
