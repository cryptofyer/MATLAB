%CAESER encryption program
%Follow the read.me file to know more about CAESER cipher

function coded = caeser(string,shift)
%now we need to convert character string to double int and assign it into
%variable named "value"
%the below formula shows that for eg.string=' ' and shift=1 thus,
%value=double(string)+1 which is 32+1=33.
value=double(string)+shift;
for i=1:length(value)
%95 is derived from 126(last ASCII elementh and 32(first ASCII elementh,
%thus the counter used will be 126-32=95
    while value(i)<32
        value(i)=value(i)+95;
    end
%now to wrap around we need to +-95 as the counter in the value
    while value(i)>126
        value(i)=value(i)-95;
    end
end
coded=char(value)
end
%This cipher can also be solved using the mod function and also the
%circshift function which is the easiest and the smartest method for
%preallocation in MATLAB
