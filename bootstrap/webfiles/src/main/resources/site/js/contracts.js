class App extends React.Component {
  constructor() {
    super();
    
    this.state = {
      loading: true
    };
  }

  componentDidMount() {
    setTimeout(() => this.setState({ loading: false }), 1500); 
  }
  
  render() {
    const { loading } = this.state;
    
    if(loading) {
      return null; 
    } else {
	ReactDOM.render(<Lepingud title="Kehtivad lepingud" contracts={validContracts} />, document.getElementById('kehtivadLepingud'));
	ReactDOM.render(<Lepingud title="Kehtetud lepingud" contracts={nonValidContracts} />, document.getElementById('kehtetudLepingud'));
	}
    
    return  (
      <div>
	  </div>
    ); 
  }
}

ReactDOM.render(
  <App />,
  document.getElementById('app')
);


var Lepingud = React.createClass({
    render: function() {
        var lepingudComponents = this.props.contracts.map(function(contract) {
		return <tr><td>{contract.number}</td><td>{contract.address}</td><td>{contract.startDate}</td><td>{contract.package}</td><td>{contract.signDate}</td><td>{contract.validity}</td><td><input type="button" value="Vaata"/></td></tr>;
        });
	 return <div><h3>{this.props.title}: </h3><table border="0" cellpadding="1" cellspacing="1" style={{"width":"750px"}}>
 <thead>
  <tr>
     <td><strong>Lepingu nr</strong></td>
     <td><strong>Tarbimiskoht aadress</strong></td>
     <td><strong>Tarneaja algus</strong></td>
     <td><strong>Pakett</strong></td>
	 <td><strong>Lepingu sõlmimisaeg</strong></td>
	 <td><strong>Kestus</strong></td>
	 <td></td>
  </tr>
 </thead><tbody>{lepingudComponents}</tbody></table></div>;
    }
}); 

	 
var validContracts = [
  {number:'A3991',address:'Tallinna mnt 1, Tallinn',startDate:'01.07.2017',package:'SPOT',signDate:'06.06.2017',validity:'Tähtajatu'},
  {number:'B3422',address:'Pärnu mnt 12, Tallinn',startDate:'04.02.2017',package:'SPOT',signDate:'04.03.2017',validity:'Tähtajaline'}
]

var nonValidContracts = [
  {number:'JL-34222',address:'Tallinna mnt 1, Tallinn',startDate:'01.07.2017',package:'SPOT',signDate:'06.06.2017',validity:'Tähtajatu'},
  {number:'KL-12223',address:'Riia 44, Tartu',startDate:'04.02.2017',package:'SPOT',signDate:'04.03.2017',validity:'Tähtajaline'},
   {number:'EE-7432',address:'Kotka 3-1, Valga',startDate:'04.02.2017',package:'SPOT',signDate:'04.03.2017',validity:'Tähtajaline'},
    {number:'ST-6322',address:'Pärnu mnt 45-2, Tallinn',startDate:'04.02.2017',package:'SPOT',signDate:'04.03.2017',validity:'Tähtajaline'}
]


 