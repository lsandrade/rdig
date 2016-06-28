console.log('ola');

var criteriumIdx = 0;

var addCriterium = function()
{
	console.log(criteriumIdx);

	var criteria = $("#criteria");
	

	criteria.append(
		$("<div>",{
			id:"criterium"+criteriumIdx
		})
		);
	var criterium = $("#criterium"+criteriumIdx);

	//add Field of criterium. ex: Name, Age, etc
	criterium.append($("<label for='criteria[field"+criteriumIdx+"]'>Field #"+criteriumIdx+"</label>"));
	criterium.append($("<select name='criteria[field"+criteriumIdx+"]' id='field"+criteriumIdx+"' class='form-control'>"));

	fillField("field"+criteriumIdx);

	//add operator. ex: equal..
	criterium.append($("<label for='criteria[operator"+criteriumIdx+"]'>Operator #"+criteriumIdx+"</label>"));
	criterium.append($("<select id='operator"+criteriumIdx+"' name='criteria[operator"+criteriumIdx+"]' class='form-control'>"));

	fillOperator("operator"+criteriumIdx);

	//add Value of criteria. Ex: 1, 200, 'Rambo'...
	criterium.append($("<label for='criteria[value"+criteriumIdx+"]'>Value #"+criteriumIdx+"</label>"));
	criterium.append($("<input type='text' name='criteria[value"+criteriumIdx+"]' class='form-control'>"));


	//Remove criterium
	criterium.append(
		$("<a>",
		{
			class:"btn btn-danger",
			html: "Remove criterium #"+criteriumIdx,
			style:"color:white"
		})
		.click(function()
		{
			$(this).parent().remove();
		})
		);

	criteriumIdx++;

}

var fillField = function(identifier)
{
	var field = $("#"+identifier);
	field.append(
		$("<option value='1'>Name</option>"
		+"<option value='2'>E-mail</option>"
		+"<option value='3'>Age</option>"
		+"<option value='4'>State</option>"
		+"<option value='5'>Job</option>"
		));
}

var fillOperator = function(identifier){
	var field = $("#"+identifier);
	field.append(
		$("<option value='1'>Equal</option>"
		+"<option value='2'>Contains</option>"
		+"<option value='3'>Starts with</option>"
		+"<option value='4'>Ends with</option>"
		+"<option value='5'>Greater or equal</option>"
		+"<option value='6'>Less or equal</option>"
		
		));
}