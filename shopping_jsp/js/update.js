/**
 * 
 */

const tds = document.querySelectorAll("td");
const form = document.querySelector("form");

tds.forEach(element => {
	element.addEventListener("dblclick", () => {
		const rowIds = element.parentNode.querySelectorAll("td");
		const obj = {};
		rowIds.forEach((el, index) => {
			obj[index] = el.innerHTML;
		});


		const isUpdate = confirm("정보를 수정하시겠습니까?");

		if (isUpdate) {
			for (const key in obj) {
				const hiddenInput = document.createElement("input");
				hiddenInput.type = "hidden";
				hiddenInput.name = key;
				hiddenInput.value = obj[key];
				form.appendChild(hiddenInput);
			}
			form.submit();
		}


		console.log(obj);
	})
})