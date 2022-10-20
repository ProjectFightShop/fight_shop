/* modules */
import React from 'react'
import { Outlet } from 'react-router-dom';

/* styles */
import Navbar from '../../components/Navbar/navbar.component';
import Footer from '../../components/Footer/footer.component';

import './pagelayout.styles.css'

const PageLayout = ():JSX.Element => {
  return (
    <>
      <Navbar />
      <Outlet />
      <Footer />
    </>
  );
};

export default PageLayout;
