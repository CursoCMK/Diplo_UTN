import React from "react";

//import "../../styles/components/layout/Nav.css";

import { Link } from "react-router-dom";
//import { NavLink } from "react-router-dom";

const Nav = (props) => {
  return (
    //        <div>Nav</div>
    <nav>
      <div>
        <ul>
          <li>
            <Link to="/">Home</Link>
          </li>
          <li>
            <Link to="/nosotros">Nosotros</Link>
          </li>
          <li>
            <Link to="/novedades">Novedades</Link>
          </li>
          <li>
            <Link to="/contacto">Contacto</Link>
          </li>
        </ul>
      </div>
    </nav>

    /*            <Nav>
            <div>
                <ul>
                    <li><NavLink to="/" className={({ isActive}) => isActive? "activo" : undefined}>Home</NavLink></li>
                    <li><NavLink to="./nosotros" className={({ isActive}) => isActive? "activo" : undefined}>Nosotros</NavLink></li>
                    <li><NavLink to="./novedades" className={({ isActive}) => isActive? "activo" : undefined}>Novedades</NavLink></li>
                    <li><NavLink to="./contacto" className={({ isActive}) => isActive? "activo" : undefined}>Contacto</NavLink></li>
                </ul>
            </div>
        </Nav>
*/
  );
};

export default Nav;
