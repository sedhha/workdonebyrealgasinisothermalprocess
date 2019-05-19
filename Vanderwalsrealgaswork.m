%Vanderval's real gas work done in an isothermal process
VE=imread('1.JPG');
%To display vanderWal's equation
imshow(VE);
disp('Input the variables one by one as asked. Input R to reset.'); %Reset used to re enter the variables
val='K';
while (val~='Q')
    a=input('Enter the value of attractive force co-efficient.(MUST BE NUMERIC)');
    if(~isnumeric(a))
        disp('Value of a must be a numeric value. Resetting all values! Input again.');
    else
    b=input('Enter the value of Volume Correction factor. (MUST BE NUMERIC)');
    if(~isnumeric(b))
       disp('Value of b must be a numeric value. Resetting all values! Input again.'); 
    else
        disp('Awesome! a and b datas have been recorded. To proceed with work computation, Choose the known inputs.');
        choice=input('\n\nFor unknown: \nP1 enter ---> 1.\nP2 enter --> 2.\nV1 enter --> 3.\nV4 enter --> 4.');
        if(~isnumeric(choice))
            disp('Choice must be between 1 and 4.');
        else
            if(choice<1||choice>4)
                disp('Choice must be between 1 and 4.');
            else
                if(choice==1)
                    P2=input('Enter value of final pressure.(in N/m2)');
                    V1=input('Enter value of initial volume. (in m3)');
                    V2=input('Enter value of final volume. (in m3)');
                    if(~isnumeric(P2)||~isnumeric(V1)||~isnumeric(V2))
                        disp('Invalid input');
                    else
                        %Computing p1:
                        temp=(V2-b)/(V1-b);
                        P1=temp*(P2+(a/V2)^2);
                        if(b==V2||b>V2||b>V1||V1==0||V2==0)
                            disp('Invalid Input');
                        else
                        WD=((P1+(a/V1)^2)*(V1-b)*(log((V1-b)/(V2-b))))+(a*((1/V1)-(1/V2)));
                        disp(['Work done in the given process is: ',num2str(WD),' Joules']);
                        end
                    end
                    
                elseif(choice==2)
                    P2=input('Enter value of final pressure.(in N/m2)');
                    P1=input('Enter value of initial pressure. (in N/m2)');
                    V2=input('Enter value of final volume. (in m3)');
                    if(~isnumeric(P2)||~isnumeric(P1)||~isnumeric(V2))
                        disp('Invalid input');
                    else
                        %Computing p1:
                        temp=(P2+(a/V2)^2)/P1;
                        V1=(temp*(V2-b))+b;
                        if(b==V2||b>V2||b>V1||V1==0||V2==0)
                            disp('Invalid Input');
                        else
                        WD=((P1+(a/V1)^2)*(V1-b)*(log((V1-b)/(V2-b))))+(a*((1/V1)-(1/V2)));
                        disp(['Work done in the given process is: ',num2str(WD),' Joules']);
                        end
                    end
                elseif(choice==3)
                    P1=input('Enter value of initial pressure.(in N/m2)');
                    V1=input('Enter value of final Volume. (in m3)');
                    V2=input('Enter value of final volume. (in m3)');
                    if(~isnumeric(P1)||~isnumeric(V1)||~isnumeric(V2))
                        disp('Invalid input');
                    else
                        if(b==V2||b>V2||b>V1||V1==0||V2==0)
                            disp('Invalid Input');
                        else
                        WD=((P1+(a/V1)^2)*(V1-b)*(log((V1-b)/(V2-b))))+(a*((1/V1)-(1/V2)));
                        disp(['Work done in the given process is: ',num2str(WD),' Joules']);
                        end
                        
                    end
                else
                    P1=input('Enter value of initial pressure.(in N/m2)');
                    P2=input('Enter value of final pressure. (in N/m2)');
                    V1=input('Enter value of initial volume. (in m3)');
                    if(~isnumeric(P2)||~isnumeric(P1)||~isnumeric(V1))
                        disp('Invalid input');
                    else
                        %Computing p1:
                        temp=(P1+(a/V1)^2)/P2;
                        V2=(temp*(V1-b))+b;
                        if(b==V2||b>V2||b>V1||V1==0||V2==0)
                            disp('Invalid Input');
                        else
                        WD=((P1+(a/V1)^2)*(V1-b)*(log((V1-b)/(V2-b))))+(a*((1/V1)-(1/V2)));
                        disp(['Work done in the given process is: ',num2str(WD),' Joules']);
                        end
                    end
                end
            end
        end
    end
    end
    val=input("Process finished, press 'Q' to quit else press anything to compute another variable.");
end