function valid=valid_date(year,month,day)
%checking for scalar input
if ~isscalar(year) || ~isscalar(month) || ~isscalar(day)
    valid=false;
    return
end
%now we need to check if the month, year and date entered are correct or
%not
%the most common mistake I made here was that I considered July as 30 days
%another mistake was that I included February which has to be fetched later
%for the leap year check
if year>=1 && month<=12 && (ismember(month,[1,3,5,7,8,10,12]) && ismember(day,1:31)) || (ismember(month,[4,6,9,11]) && ismember(day,1:30))
    valid=true;
%now we need to check for leap year too
%take care of AND/OR operator in the end and apply perfect paranthesis
elseif month==2 && ismember(day,1:29) && (mod(year,4)==0 && mod(year,100)~=0 || mod(year,400)==0)
    valid=true;
%now for non leap year February month
elseif month==2 && ismember(day,1:28)
    valid=true;
else
    valid=false;
end
end
