
import React, { Component } from 'react'
import { Row } from 'reactstrap'


class TopNavBar extends Component {
    render () {
        return (
          <div>

          <Row>
                               <div className="top-menu"><a href="/assets/attributes">Assets</a>
                               <a href="/categories">Categories</a></div>
                          </Row>
            </div>
        )
    }
}

export default TopNavBar
