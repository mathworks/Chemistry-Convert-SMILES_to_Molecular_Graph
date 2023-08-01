function [adjacency] = pdbToADJ(filename)
    % create the pdb file
%    disp(fileName)
%    command1 = append('cd ', pwd);
%    system(command1);
%    command2 = append('obabel ',fileName,' -O ', fileName,'.pdb');
%    system(command2);

    % construct the adjacency matrix
    adjacency = zeros(100);
    % read the pdb file

    %fileID = fopen(strcat(filename,'.pdb'));
     fileID = fopen(strcat(filename));

    tline = fgetl(fileID);
    while ischar(tline)
        tline = strsplit(tline);
        if tline{1} == "CONECT" % this line refers to adjacency
            atom1 = str2num(tline{2});
            
            for i = 3:length(tline)
                adjacency(atom1, str2num(tline{i})) = adjacency(atom1, str2num(tline{i})) + 1;
            end
        end
        tline = fgetl(fileID);
    end

    fclose(fileID);
 %   system('rm *.pdb');
end