<?php
$ma=$_POST["ma"];
$nom=$_POST["nom"];
$prenom=$_POST["prenom"];
$genre=$_POST["genre"];
$email=$_POST["email"];
require("connxion.php");
$conn= mysql_connect($server,$username,$password,$db) or die ("probleme de connxion au serveur ou ala base de donnees");
$sql="SELECT*from pilote where ma='$ma' and nom='$nom' and prenom='$prenom' and genre='$genre' and email='$email';";
$res=mysql_query($conn,$sql);
if (mysql_num_rows($res)==0)
   echo "pilote non inscrit";

if(mysql_num_rows($res)!=0){
    echo "Cet e-mail est déja utilisé par un autre élève. Veuillez en choisir un nouveau.";
    }else{
        $req="INSERT INTO pilote (ma, nom, prenom, genre, email) VALUES 
        ('".$ma."','".$nom."', '".$prenom."', '".$genre."', '".$email."')";
        $res=mysql_query($sql)or die (mysql_error());
        if (mysql_affected_rows()!=-1)
            echo "pilote avec success";
    }
mysql_close($conn);

?>