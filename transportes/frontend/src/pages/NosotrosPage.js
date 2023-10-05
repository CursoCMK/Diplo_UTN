import React from "react";

//import "../styles/components/pages/NosotrosPage.css";

const NosotrosPage = (props) => {
  return (
    //        <div>NosotrosPage</div>
    <main className="holder">
      <div className="historia">
        <h2>Historia</h2>
        <p>Lorem </p>
        <p>Lorem impsum </p>
      </div>

      <div className="staff">
        <h2>Staff</h2>
        <div className="personas">
          <div className="persona">
            <img src="img/nosotros/nosotros1.jpg" alt="Juan Gomez" />
            <h5>Juan Gomez</h5>
            <h6>Gerente General</h6>
            <p>Lorem </p>
          </div>
        </div>
      </div>
    </main>
  );
};

export default NosotrosPage;
