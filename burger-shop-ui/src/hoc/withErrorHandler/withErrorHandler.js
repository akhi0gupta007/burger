import React, { Component } from "react";
import Aux from "../Auxilary/Auxilary";
import Modal from "../../components/UI/Modal/Modal";

const withErrorHandler = (WrappedComponent, axios) => {
  return class extends Component {
    state = {
      error: null
    };

    // constructor(props){
    //     super(props);
    //     axios.interceptors.request.use((request) => {
    //         // this.setState({ error: null }); //reset the error object
    //         this.state = {
    //             error:null
    //         }
    //         return request;
    //       });
    //       axios.interceptors.response.use(res => res, (error) => {
    //         console.log("constructor");
    //         console.log(error);
    //         this.state = {
    //             error:error
    //         }
    //       });
    // }

    //componentDidMount is ideal, but in this case we want to initialise in adavce, we can also use constructor here
    componentWillMount()  {
      axios.interceptors.request.use((request) => {
        this.setState({ error: null }); //reset the error object
        return request;
      });
      axios.interceptors.response.use(res => res, (error) => {
        this.setState({ error: error });
      });
    }

    errorConfirmedHandler = () => {
      this.setState({ error: null });
    };

    render() {
      return (
        <Aux>
          <Modal show={this.state.error} modalClosed={this.errorConfirmedHandler}>
            {this.state.error ? this.state.error.message:null}
          </Modal>
          <WrappedComponent {...this.props} />
        </Aux>
      );
    }
  };
};

export default withErrorHandler;
