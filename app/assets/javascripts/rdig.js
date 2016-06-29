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
	criterium.append($("<label for='criteria["+criteriumIdx+"][field]'>Field #"+criteriumIdx+"</label>"));
	criterium.append($("<select name='criteria["+criteriumIdx+"][field]' id='field"+criteriumIdx+"' class='form-control' required>"));

	fillField("field"+criteriumIdx);

	//add operator. ex: equal..
	criterium.append($("<label for='criteria["+criteriumIdx+"][operator]'>Operator #"+criteriumIdx+"</label>"));
	criterium.append($("<select id='operator"+criteriumIdx+"' name='criteria["+criteriumIdx+"][operator]' class='form-control' required>"));

	fillOperator("operator"+criteriumIdx);

	//add Value of criteria. Ex: 1, 200, 'Rambo'...
	criterium.append($("<label for='criteria["+criteriumIdx+"][value]'>Value #"+criteriumIdx+"</label>"));
	criterium.append($("<input type='text' name='criteria["+criteriumIdx+"][value]' class='form-control' required>"));


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
		$("<option value='name'>Name</option>"
			+"<option value='email'>E-mail</option>"
			+"<option value='age'>Age</option>"
			+"<option value='uf'>State</option>"
			+"<option value='job'>Job</option>"
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

$( document ).ready(function() {
	var url = '/segments.json';
	$.ajax({
		method: 'GET',
		url: url

	})
	.done(function(segments)
	{
		$.each(segments, function(i,seg) {
			$("#criterium").append($("<option>").val(seg.id).html(seg.name));
		});
		console.log(segments);
	});



});