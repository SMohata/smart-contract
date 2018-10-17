pragma solidity ^0.4.25;

contract Certificates  {
     
    struct Certificate
        {
            string  Name;
            string  Year;
            string  Result;
        }

    mapping(uint  => Certificate) public tableCertificates;
    uint[] public listCertificates;

    constructor() public
            {
            }

 
    function listCertificatesCount() public constant returns(uint count)
    {
        return listCertificates.length;
    }

    function certificateAtIndex(uint row) public constant returns(uint)
    {
        return listCertificates[row];
    }


    function getCertificateData(uint  _rollno) public constant returns( string, string, string) {
        return ( tableCertificates[_rollno].Name,   tableCertificates[_rollno].Year, tableCertificates[_rollno].Result);
    }

   
    function putCertificateData(uint  _rollno,  string _name, string _year, string _result) public returns (bool success) {    
       
                listCertificates.push(_rollno);

                tableCertificates[_rollno].Name   = _name;
                tableCertificates[_rollno].Year   = _year;
                tableCertificates[_rollno].Result = _result;

                return true;                                               
    }
 }

 