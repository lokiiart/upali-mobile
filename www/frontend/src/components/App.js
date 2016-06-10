import React from 'react';
import { Link } from 'react-router';
import ReactSwipe from 'react-swipe';
import Widget from './Widget';

const App = ({ children}) => (
  <div>
        <header>
        <div className="top">
        <Link to="/">
            <img className="logo" src="dist/images/top1.jpg" />
        </Link>

        </div>
        <ul className="nav">
        <li>
        <Link to="/">
        <img src="dist/images/index_ico.png" />
        <p>首页</p>
        </Link>
        </li>
        <li>
        <Link to="/product">
        <p>产品</p>
        </Link>
        </li>
        <li>
        <Link to="/brand">
        <p>品牌</p>
        </Link>
        </li>
        <li>
        <Link to="/example">
        <p>案例</p>
        </Link>
        </li>
        <li>
        <Link to="/order">
        <p>订购</p>
        </Link>
        </li>
        <li>
        <a href="http://pgt.zoosnet.net/LR/Chatpre.aspx?id=PGT57696928&lng=cn">
        <p>咨询</p>
        </a>
        </li>
        </ul>
    </header>
        <Widget />
    <section>
        {children||
         <div>
         <ReactSwipe className='carousel' swipeOptions={{continous: false}}>
         <div>
         <Link to="/product">
         <img className="layout-img" src="dist/images/m2_06.jpg" />
         </Link>
         </div>
         <div>
         <Link to="/product">
         <img className="layout-img" src="dist/images/slide_2.jpg" />
         </Link>
         </div>
         </ReactSwipe>
            <div className="welware section">
                <p className="section-title">公益活动</p>
                <Link to="/welware">
                <img src="dist/images/m2_22.jpg" />
                </Link>
            </div>
            <div className="news section">
                <p className="section-title">品牌新闻</p>
                <ul>
         <Link to="/news">
                <li className="new-list clearfix">
                <img src="dist/images/m2_25.jpg" />
                <div className="new-content">
         <h3>广东省行政管理局莅临我公司参观并指导工作</h3>
         <p>
         2015年3月 被广东省行政管理局授于“守合同重信用企业”。广东省行政管理局莅临我公司参观并指导工作
         </p>
                </div>
                </li>
         </Link>
         <Link to="/news1">
         <li className="new-list clearfix">
         <img src="dist/images/m2_28.jpg" />
         <div className="new-content">
         <h3>广东省省食品药品监督管理局副局长调研我市保健食品生产企业</h3>
         <p>
         生产营运部总监孙总就企业发展历程、生产技术、生产团队以及原材料的选择和使用等方面进行了讲解，强调了在外部环境不可控的情况下，严格把好企业内部质...</p>

         </div>
         </li>
         </Link>
         <Link to="news2">
         <li className="new-list clearfix">
         <img src="dist/images/m2_30.jpg" />
         <div className="new-content">
         <h3>优波粒浪漫普吉岛之行</h3>
         <p>
         优波粒团队的所有人员就这样互相照顾着、谈笑着、快乐的度过了普吉岛之行，放松了心情，增加了团队凝聚力，让我们更默契、更高效的投入到16年的工作中，为自己的目标和理想、为健康事业全力以赴。
         </p>
         </div>
         </li>
         </Link>
                </ul>
            </div>
         </div>
        }
    </section>
    <footer className="clearfix">
        <p className="footer-2"><img src="dist/images/m2_33.jpg" width="136" height="137" /></p>
           <p className="footer-1">美国优波粒制药集团（广州）<br/>
        联系电话:4000-963-983<br/>
        京ICP证040350号 京公网安备110301000336号<br/></p>
    </footer>
  </div>
);

App.propTypes = { children: React.PropTypes.object};

export default App;
