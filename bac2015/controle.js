function alpha(ch) {
    ch = ch.toUpperCase();
    for (let i = 0; i < ch.length; i++) {
      if (ch[i] > "Z" || ch[i] < "A") {
        return false;
      }
    }
    return true;
  }
  
function ajouter() {
    const mat = document.getElementById("mat").value;
    let Ltr = mat.substr(0, 2);
    let Cfr = mat.substr(2, 2);
    if (mat.length != 4 || !alpha(Ltr) || isNaN(Cfr)) {
      alert("Vérifier Votre Matricule SVP");
      return false;
    }
    const nom = document.getElementById("nom").value;
    if (nom == "" || !alpha(nom)) {
      alert("Vérifier Votre Nom SVP");
      return false;
    }
    const pre = document.getElementById("pre").value;
    if (prenom == "" || !alpha(prenom)) {
      alert("Vérifier Votre Prénom SVP");
      return false;
    }
    const f = document.getElementById("f").checked;
    const h = document.getElementById("h").checked;
    if (!f & !h) {
      alert("Vérifier Votre Genre");
      return false;
    }
    const email = document.getElementById("email").value;
    pnt = email.indexOf(".");
    at = email.indexOf("@");
    ch1 = email.substr(0, at); 
    ch2 = email.substr(at + 1, pnt - (at + 1));
    ch3 = email.substr(pnt);
    if (mail == "") {
      alert("Entre Votre Email SVP");
      return false;
    }
    if (pnt == -1 || at == -1) {
      alert("Il n'y a pas de point / @");
      return false;
    }
    if (pnt < at) {
      alert("Vérifier Les Positions des Point et @ SVP");
      return false;
    }
    if (
      ch1 == "" ||
      ch2 == "" ||
      ch3 == "" ||
      !alpha(ch1) ||
      !alpha(ch2) ||
      !alpha(ch3)
    ) {
      alert("Vérifier Votre Email SVP");
      return false;
    }
    alert("Bravo");
  }