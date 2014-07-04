%%%%% Generate 231x231x3 overlapping regions from the TORONTO dataset along 
%%%%% with fixations correspondingly. %%%%%%%%


path = '../TORONTO/';
output = '../TORONTO231/';
[~,~,~] = mkdir(output);
listing = dir(path);
checkpic = @(name, ext)(~isempty(strfind(name, ext)));
step = 231;
for item_i = 1:length(listing)
    name = listing(item_i).name;
    if checkpic(name, '.png') || checkpic(name, '.jpg') || checkpic(name, '.jpeg')
        img = imread([path, name]);
        for hi = 1:floor(step/2):size(img,1)-step+1
            for wi = 1:floor(step/2):size(img,2)-step+1
                imgsub = img(hi:hi+step-1,wi:wi+step-1,:);
%                 imshow(imgsub); pause;
                imwrite(imgsub, [output, num2str(hi), '_', num2str(wi), '_', name]);
            end
        end
    end
end