class AppProfile extends React.Component {
  constructor() {
    super();
    
    this.state = {
      loading: true
    };

    this.profile = {
      address: "Tallinna maantee 1, Tallinn, Eesti",
            email: "kaarel.kask@gmail.com",
            phone: "+372 53 411 017"
    };
  }

  componentDidMount() {
    setTimeout(() => this.setState({ loading: false }), 1500); 
  }
  
  render() {
    const { loading } = this.state;
    
    if(loading) {
      return null; 
    }
    
    return  (
      <div>
	  <table border="0" cellpadding="1" cellspacing="1" style={{"width":"500px"}}>
 <tbody>
  <tr>
   <td style={{"width":"241px"}}>Nimi</td>
   <td style={{"width":"256px"}}>Isikukood</td>
  </tr>
  <tr>
   <td style={{"width":"241px"}}><strong>Kaarel Kask</strong></td>
   <td style={{"width":"256px"}}><strong>123456789</strong></td>
  </tr>
 </tbody>
</table>
<br/>
<p><strong>Postiaadress</strong><br/><input type="text" name="aadress" defaultValue ={this.profile.address}  />  </p>
<p><strong>Kontakt E-Mail</strong><br/><input type="email" name="email" defaultValue ={this.profile.email}/>  </p>
<p><strong>Mobiiltelefon</strong><br/><input type="text" name="phone" defaultValue ={this.profile.phone}/>  </p>

	  </div>
    ); 
  }
}

function SubmitForm(frm) {
    frm.submit();
}






 