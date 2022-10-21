/* modules */
import React from 'react'

/* styles */
import './footer.styles.css'

const Footer = (): JSX.Element => {
    return (
        <footer>
            <div className="footer-container">
                <div className="footer-container__item">
                    <h3 className="footer-container__item__title">About Us</h3>
                    <p className="footer-container__item__text">One Panthéon is a technologic non-profit organization that lets students from Efrei develop their creativity, their project management skills and their technical skills. We are the unique incubator-trainin of Paris Panthéon-Assas Université, opent to all.</p>
                </div>
                <div className="footer-container__item">
                    <h3 className="footer-container__item__title">Contact Us</h3>
                    <p className="footer-container__item__text">+33 (0)6 52 61 25 51</p>
                </div>
                <div className="footer-container__item">
                    <h3 className="footer-container__item__title">Follow Us</h3>
                    <p className="footer-container__item__text">
                        Discord - <a href="https://discord.gg/rnQfXBnDZX">https://discord.gg/rnQfXBnDZX</a><br/>
                        Twitter - <a href="https://twitter.com/1PantheonAssas">https://twitter.com/1PantheonAssas</a><br/>
                        Linkedin - <a href="https://www.linkedin.com/company/one-panth%C3%A9on">https://www.linkedin.com/company/one-panth%C3%A9on</a></p>
                </div>
            </div>
        </footer>
    )
}

export default Footer