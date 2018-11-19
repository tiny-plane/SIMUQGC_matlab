function OUT = data_transfer_uint8(head,index,data)
%this function has been rewriten in order to adapt new
%struct type in class Plane.
%the early version is data_transfer_uint8_testonly
%for now this function dose not support listener
%2018/10/4 11:00 latest version code by DWC

%num = size(index,2);
OUT = uint8(zeros(5 + 1 * 36,1));
OUT = [uint8(head)';typecast(single(data),'uint8')'];
OUT(6:36:end) = uint8(index(:));
%OUT(1 : 5) = uint8(obj.Data.head);
%             counter = 6;
%             for i = 1 : num
%                 OUT(counter) = obj.Data.index(i);
%                 counter = counter + 4;
%                 OUT(counter : counter + 31) = typecast(single(obj.Data.data(i * 8 - 7 : i * 8)),'uint8');
%                 counter = counter + 32;
%             end
end

