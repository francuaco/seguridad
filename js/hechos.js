
function grabar_hecho_delictivo(){
	fecha = document.getElementById('fecha');
	hecho = document.getElementById('hecho');
	com = document.getElementById('comisaria');
	timepicker = document.getElementById('timepicker');
	dir = document.getElementById('dir');
	depto = document.getElementById('depto');
	mun = document.getElementById('mun');
	zona = document.getElementById('zona');
	ald = document.getElementById('aldea');
	fact = document.getElementById('factor');
	forma = document.getElementById('form');
	obs = document.getElementById('obs');
	if (fecha.value !="" && hecho.value != "" && com.value != "" && timepicker.value != "" && dir.value != "" && depto.value != "" && mun.value != "" && fact.value != "" && forma.value != "" && obs.value != ""){
		xajax_grabar_hecho(fecha.value,hecho.value,com.value,timepicker.value,dir.value,depto.value,mun.value,zona.value,ald.value,fact.value,forma.value,obs.value);
	}else{
				alert("INGRESE TODOS LOS CAMPOS REQUERIDOS!...");
		if(fecha.value ==""){
			fecha.style.borderColor = "#DF0101";
			fecha.style.backgroundColor = "F8E0E0";
		}else{
			fecha.style.borderColor = "#ccc";
			fecha.style.backgroundColor = "E6E6E6";
		}
		if(hecho.value ==""){
			hecho.style.borderColor = "#DF0101";
			hecho.style.backgroundColor = "F8E0E0";
		}else{
			hecho.style.borderColor = "#ccc";
			hecho.style.backgroundColor = "E6E6E6";
		}
		if(com.value ==""){
			com.style.borderColor = "#DF0101";
			com.style.backgroundColor = "F8E0E0";
		}else{
			com.style.borderColor = "#ccc";
			com.style.backgroundColor = "E6E6E6";
		}		
		if(timepicker.value ==""){
			timepicker.style.borderColor = "#DF0101";
			timepicker.style.backgroundColor = "F8E0E0";
		}else{
			timepicker.style.borderColor = "#ccc";
			timepicker.style.backgroundColor = "E6E6E6";
		}
		if(dir.value ==""){
			dir.style.borderColor = "#DF0101";
			dir.style.backgroundColor = "F8E0E0";
		}else{
			dir.style.borderColor = "#ccc";
			dir.style.backgroundColor = "E6E6E6";
		}	
		if(depto.value ==""){
			depto.style.borderColor = "#DF0101";
			depto.style.backgroundColor = "F8E0E0";
		}else{
			depto.style.borderColor = "#ccc";
			depto.style.backgroundColor = "E6E6E6";
		}		
		if(mun.value ==""){
			mun.style.borderColor = "#DF0101";
			mun.style.backgroundColor = "F8E0E0";
		}else{
			mun.style.borderColor = "#ccc";
			mun.style.backgroundColor = "E6E6E6";
		}	
		if(fact.value ==""){
			fact.style.borderColor = "#DF0101";
			fact.style.backgroundColor = "F8E0E0";
		}else{
			fact.style.borderColor = "#ccc";
			fact.style.backgroundColor = "E6E6E6";
		}	
		if(forma.value ==""){
			forma.style.borderColor = "#DF0101";
			forma.style.backgroundColor = "F8E0E0";
		}else{
			forma.style.borderColor = "#ccc";
			forma.style.backgroundColor = "E6E6E6";
		}	
		if(obs.value ==""){
			obs.style.borderColor = "#DF0101";
			obs.style.backgroundColor = "F8E0E0";
		}else{
			obs.style.borderColor = "#ccc";
			obs.style.backgroundColor = "E6E6E6";
		}

	}

}

function nuevo_delincuente(){
	dpi = document.getElementById('dpi');
	nom1 = document.getElementById('nom1');
	nom2 = document.getElementById('nom2');
	ape1 = document.getElementById('ape1');
	ape2 = document.getElementById('ape2');
	nac = document.getElementById('nac');
	gen = document.getElementById('gen');
	tatu = document.getElementById('tatu');
	alias = document.getElementById('alias');
	prof = document.getElementById('prof');
	obs = document.getElementById('obs');
	cod = document.getElementById('cod');
	if (nom1.value !="" && ape1.value != "" && nac.value != "" && gen.value != "" && tatu.value != "" && prof.value != "" && obs.value != "" ){
		xajax_grabar_delincuente(dpi.value,nom1.value,nom2.value,ape1.value,ape2.value,nac.value,gen.value,tatu.value,alias.value,prof.value,obs.value,cod.value);
	}else{
		alert("INGRESE TODOS LOS CAMPOS REQUERIDOS!...");
		if(nom1.value ==""){
			nom1.style.borderColor = "#DF0101";
			nom1.style.backgroundColor = "F8E0E0";
		}else{
			nom1.style.borderColor = "#ccc";
			nom1.style.backgroundColor = "E6E6E6";
		}
		if(ape1.value ==""){
			ape1.style.borderColor = "#DF0101";
			ape1.style.backgroundColor = "F8E0E0";
		}else{
			ape1.style.borderColor = "#ccc";
			ape1.style.backgroundColor = "E6E6E6";
		}
		if(nac.value ==""){
			nac.style.borderColor = "#DF0101";
			nac.style.backgroundColor = "F8E0E0";
		}else{
			nac.style.borderColor = "#ccc";
			nac.style.backgroundColor = "E6E6E6";
		}		
		if(gen.value ==""){
			gen.style.borderColor = "#DF0101";
			gen.style.backgroundColor = "F8E0E0";
		}else{
			gen.style.borderColor = "#ccc";
			gen.style.backgroundColor = "E6E6E6";
		}
		if(tatu.value ==""){
			tatu.style.borderColor = "#DF0101";
			tatu.style.backgroundColor = "F8E0E0";
		}else{
			tatu.style.borderColor = "#ccc";
			tatu.style.backgroundColor = "E6E6E6";
		}	
		if(prof.value ==""){
			prof.style.borderColor = "#DF0101";
			prof.style.backgroundColor = "F8E0E0";
		}else{
			prof.style.borderColor = "#ccc";
			prof.style.backgroundColor = "E6E6E6";
		}		
		if(obs.value ==""){
			obs.style.borderColor = "#DF0101";
			obs.style.backgroundColor = "F8E0E0";
		}else{
			obs.style.borderColor = "#ccc";
			obs.style.backgroundColor = "E6E6E6";
		}	
	}	
	
	
	
}