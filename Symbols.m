function [symbs] = Symbols(nodesym,NumAtm)
%Convert atomic numbers to symbols

symbs = cell(NumAtm,1);
 for i = 1:numel(symbs)
     if nodesym(i) == 1
         symbs{i} = 'H';
     elseif nodesym(i) == 2
         symbs{i} = 'He';
     elseif nodesym(i) == 3
         symbs{i} = 'Li';       
     elseif nodesym(i) == 4
         symbs{i} = 'Be';
     elseif nodesym(i) == 5
         symbs{i} = 'B';
     elseif nodesym(i) == 6
         symbs{i} = 'C';
     elseif nodesym(i) == 7
         symbs{i} = 'N';
     elseif nodesym(i) == 8
         symbs{i} = 'O';
     elseif nodesym(i) == 9 
         symbs{i} = 'F';
     elseif nodesym(i) == 10
         symbs{i} = 'Ne';
     elseif nodesym(i) == 11
         symbs{i} = 'Na';     
     elseif nodesym(i) == 12
         symbs{i} = 'Mg';
     elseif nodesym(i) == 13
         symbs{i} = 'Al';
     elseif nodesym(i) == 14
         symbs{i} = 'Si';
     elseif nodesym(i) == 15
         symbs{i} = 'P';
     elseif nodesym(i) == 16 
         symbs{i} = 'S';
     elseif nodesym(i) == 17 
         symbs{i} = 'Cl';
     elseif nodesym(i) == 18
         symbs{i} = 'Ar';
     elseif nodesym(i) == 19
         symbs{i} = 'K';
     elseif nodesym(i) == 20
         symbs{i} = 'Ca';         
     end
 end
%disp(symbols)