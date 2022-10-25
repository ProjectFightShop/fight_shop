/* modules */
import { Outlet } from 'react-router-dom';

/* styles */
import Navbar from '../../components/Navbar/navbar.component';
import Footer from '../../components/Footer/footer.component';

import './pagelayout.styles.css'

const PageLayout = ():JSX.Element => {
  return (
    <div className='scroller'>
      <Navbar />
      <Outlet />
      <Footer />
    </div>
  );
};

export default PageLayout;
