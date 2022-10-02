function ConvertRoman() 
{
  var num = document.getElementById("userVal1").value;
    var roman = {
      M: 1000,
      CM: 900,
      D: 500,
      CD: 400,
      C: 100,
      XC: 90,
      L: 50,
      XL: 40,
      X: 10,
      IX: 9,
      V: 5,
      IV: 4,
      I: 1
    };
    var str = '';
  
    for (var i of Object.keys(roman)) {
      var q = Math.floor(num / roman[i]);
      num -= q * roman[i];
      str += i.repeat(q);
    }
  
    document.getElementById("results").textContent = str;  
}

function Reset() 
{
  document.getElementById("userVal1").value = '';
  document.getElementById("results").textContent = '';
}

