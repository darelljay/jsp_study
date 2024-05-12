/**
 * 
 */
const btns = document.querySelectorAll("input[type='button']");
const form = document.querySelector("form");
const inputs = document.querySelectorAll(".input");

const isFormValid = () =>{
	let inValidElement = null;
	
	inputs.forEach(element=>{
		
		if(element.value === ""){
		   element.focus();
		   inValidElement = element;
		   return;
		}
		
	});
	return inValidElement;
}

btns[0].addEventListener("click",(e)=>{
	if(e.target.value == "수정"){
		alert("수정이 완료되었습니다.");
	}
	
	if(isFormValid()){
		alert("모든 문항을 체우신후 등록 해주시길 바랍니다.");
	}else{
		form.submit();
	}
});