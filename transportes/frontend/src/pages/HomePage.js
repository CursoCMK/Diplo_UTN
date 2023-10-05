import React from "react";

//import "../styles/components/pages/HomePage.css";

const HomePage = (props) => {
  return (
    //        <div>HomePage</div>
    <main className="holder">
      <div className="homeimg">
        <img src="img/home/img01.jpg" alt="Avión" />
      </div>

      <div className="columnas">
        <div className="bienvenidos">
          <h2>Bienvenidos</h2>
          <p>
            Lorem impsum Cupidatat nostrud dolore proident eiusmod dolor tempor
            duis occaecat laborum anim Lorem. Esse proident cillum ullamco
            irure. Commodo fugiat aliqua esse mollit fugiat fugiat adipisicing
            ex quis ipsum. Aliquip est laboris adipisicing et eiusmod. Eu dolor
            Lorem cillum cillum.
          </p>
          <p>
            Lorem impsum Proident consequat et in aliquip id dolor amet est enim
            esse ad consequat Lorem consequat. Sit ea quis sit consequat ea
            commodo velit minim consectetur commodo ex incididunt. Sint dolor
            cillum aliqua labore quis ex nisi veniam eu. Exercitation cupidatat
            fugiat culpa est minim nulla qui aliqua. Est esse adipisicing do
            exercitation. Ea nulla ullamco ad culpa et. Ad in cillum nisi
            voluptate nostrud in ullamco do sint.
          </p>
        </div>

        <div className="testimonios">
          <h2>Testimonios</h2>
          <div className="testimonio">
            <span className="cita">Simplemente Excelente</span>
            <span className="autor">Juan Perez - zapatos.com</span>
          </div>
        </div>
      </div>
    </main>
  );
};

export default HomePage;
