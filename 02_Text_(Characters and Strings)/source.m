whole_text = 'Hello, my name is Silver and my favourite colour is Blue.';
% In matalab the string or text is also saved in matrix form of type class.
% In the above case it is a char vector

% spearating the above text into a cell array based on spaces
words_sep = regexp(whole_text,' ','split');   % In this the type of vector is cell 

% Remove any words with exactly 4 characters
numchars = cellfun(@length,words_sep);
words2keep = numchars~=4;
words_sep2 = words_sep(words2keep);

% Replace a text string with another
targetName = 'Silver';
targetColour = 'Blue';
nameStart = strfind(whole_text,targetName);
colourStart = strfind(whole_text,targetColour);
new_text = [whole_text(1:nameStart-1) 'Silver Tarus' ...... this helps in continuing the long line of code in the next line as well as 
    whole_text(nameStart+length(targetName):colourStart+length(targetColour)-1) ' and Black'  ... let the comment to be written
    whole_text(colourStart+length(targetColour):end)];
