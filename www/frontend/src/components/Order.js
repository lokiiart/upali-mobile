import React from 'react';
import areaData from './areaData';
import '../../node_modules/whatwg-fetch';

let AreaSelector = React.createClass({
getInitialState: function() {
return {
prov: this.props.options.prov,
city: this.props.options.city,
county: this.props.options.county,
    province: ''

};
},
selectProv: function (evt) {
    console.log("select prov");
this.setState({
prov: evt.target.value,
city: '',
county: ''
});
},
selectCity: function(evt){
    console.log("select city");
this.setState({
city: evt.target.value,
county: ''
});
},
selectCounty: function(evt){
    console.log("select county");
    let province = this.props.data.provinces[this.state.prov].name;
    let city = this.props.data.provinces[this.state.prov].citys[this.state.city].name;
            let area=this.props.data.provinces[this.state.prov].citys[this.state.city].countys[evt.target.value].name;
this.setState({
    county: evt.target.value
});
    this.props.onProvinceChange(province,city,area);
},


render: function() {
var data = this.props.data,
    options = Object.assign({
    defaultName:['provinceId','cityId','countyId'],
    defaultText:['请选择','请选择','请选择']
    },this.props.options);
var provs = [], citys = [], countys = [];
for(var i in data.provinces){
    provs.push([i,data.provinces[i].name]);
}
provs = provs.map(function(item){
    return (<option key={item[1]} value={item[0]}>{item[1]}</option>);
});

if(this.state.prov){
for(var i in data.provinces[this.state.prov].citys){
    citys.push([i,data.provinces[this.state.prov].citys[i].name]);
}
citys = citys.map(function(item){
    return (<option key={item[1]}  value={item[0]}>{item[1]}</option>);
});
}
if(this.state.prov && this.state.city){
for(var i in data.provinces[this.state.prov].citys[this.state.city].countys){
    countys.push([i,data.provinces[this.state.prov].citys[this.state.city].countys[i].name]);
}
countys = countys.map(function(item){
    return (<option key={item[1]}  value={item[0]}>{item[1]}</option>);
});
}

return (<div className="J_area_selector">
        <select class="J_area_prov" name="province"  value={this.state.prov}  onChange={this.selectProv}>
<option value="">{options.defaultText[0]}</option>
{provs}
</select>
        <select name="city" class="J_area_city"  value={this.state.city}  onChange={this.selectCity}>
<option value="">{options.defaultText[1]}</option>
{citys}
</select>
        <select class="J_area_county" name="area"  value={this.state.county} onChange={this.selectCounty}>
<option value="">{options.defaultText[2]}</option>
{countys}
</select>
        </div>)
;
}
});

let data = areaData;
let AreaOptions= {
        defaultText:['省份','城市','区县']
};


class Order extends React.Component {

    constructor(props){
        super(props);
        this.state = {
            price:'888',
            customer:'',
            phone:'',
            province: '',
            address: '',
            payment:'货到付款',
            notes:''
        };
    }


    handleCustomer(e){
        this.setState({customer:e.target.value});
    }

    handlePhone(e){
        this.setState({phone:e.target.value});
    }

    handleProvince(province,city,area){
        this.setState({
            province:province,
            city:city,
            area:area
                      });
    }

    handleAddress(e){
        this.setState({address:e.target.value});
    }

    handlePayment(e){
        if(e.currentTarget.value=='支付宝'){
            this.setState({
                payment:e.currentTarget.value,
                form_status: '_blank'
            });
        }else if(e.currentTarget.value == '货到付款'){
            this.setState({
                payment:e.currentTarget.value
            });
        }
    }

    handleNotes(e){
        this.setState({notes:e.target.value});
    }

    handleSubmit(e){
        e.preventDefault();
        if(this.state.payment=='支付宝'){
            let aplipay_form= document.querySelector(".orderForm");
            aplipay_form.submit();
        }else if(this.state.payment=="货到付款"){
            fetch('/api/orders', {
                method: 'POST',
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(this.state)
            }).then(function(response){
                return response.json();
            }).then(function(j){
                if(j.error){
                    alert(j.message);
                }else{
                    console.dir(j);
                    alert("订购成功！");
                }
            });
        }
    }

    handlePrice(e){
        switch(e.currentTarget.value){
        case '700':
            this.setState({price:'888'});
            break;
        case '550':
            this.setState({price:'688'});
            break;
        case '366':
            this.setState({price:'458'});
            break;
        case '220':
            this.setState({price:'288'});
            break;
        }
    }

    render(){
        return (
                <div className="section">
                <div className="order-title">
                <img  src="dist/images/dg.jpg" />
                <p>
                支付说明：由于货到付款，顺丰快递要加收5%的服务费用，所以，如果选择货到付款购买我们产品，没有相关优惠。<em>本公司已与支付宝签订战略协议，选择支付宝付款，可享受8折优惠。如需其他支付方式（网银支付/转账汇款/微信支付等）可以我们<a href="http://pgt.zoosnet.net/LR/Chatpre.aspx?id=PGT57696928&lng=cn">在线客服</a>，索取转款账号。谢谢！</em>
                </p>
                </div>
                <form method="POST" action="/api/alipay_orders" className="pure-form orderForm" onSubmit={e=>this.handleSubmit(e)} target={this.state.form_status}>
                <fieldset>
                <legend>产品选择</legend>
                <input type="radio" name="price" value="700" defaultChecked="true" onChange={this.handlePrice.bind(this)} />￥888 4个疗程8瓶装 <em>支付宝付款：￥700</em><br />
                <input type="radio" name="price" value="550" onChange={this.handlePrice.bind(this)} />￥688 3个疗程6瓶装 <em>支付宝付款：￥550</em><br />
                <input type="radio" name="price" value="366" onChange={this.handlePrice.bind(this)}  />￥458 2个疗程4瓶装 <em>支付宝付款：￥366</em><br />
                <input type="radio" name="price" value="220" onChange={this.handlePrice.bind(this)}  />￥288 1个疗程2瓶装 <em>支付宝付款：￥220</em>
                </fieldset>
                <fieldset>
                <legend>联系方式</legend>
                <label>姓名<input type="text" name="customer" value={this.state.customer} onChange={this.handleCustomer.bind(this)}  /></label><br />
                <label>手机<input type="text" name="phone" value={this.state.phone} onChange={this.handlePhone.bind(this)}  /></label><br />
                <label>收货地址</label><AreaSelector data={data} options={AreaOptions} onProvinceChange={this.handleProvince.bind(this)} /><br />
                <label>详细地址<br /><input type="text" name="address" value={this.state.address} onChange={this.handleAddress.bind(this)} /></label>
                </fieldset>
                <fieldset>
                <legend>付款方式</legend>
                <input type="radio" name="payment" value="货到付款" defaultChecked="checked" onChange={this.handlePayment.bind(this)}  />货到付款
                <input type="radio" name="payment" value="支付宝" onChange={this.handlePayment.bind(this)}   />支付宝付款
                </fieldset>
                <fieldset>
                <legend>备注信息</legend>
                <textarea className="form-textarea" name="notes" value={this.state.notes} onChange={this.handleNotes.bind(this)} />
                </fieldset>
                <div className="order-submit-wrapper">
                    <button className="order-submit" type="submit">提交</button>
                </div>
                </form>
                </div>
        );
    }
};

export default Order;
