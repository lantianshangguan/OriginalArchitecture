function uout = para_switch(alfa_f,alfa_r)





% 
% % C_f1 = -1.7822*10^5;
% % C_r1 = -1.4623*10^5;
% % C_f1 = -1.1822*10^5;
% % C_r1 = -1.1623*10^5;
% C_f1 = -9.372*10^4;
% C_r1 = -9.406*10^4;
% 
% % C_f1 = -5.7325*10^5;
% % C_r1 = -3.1847*10^5;
% 
% % f_thre = 0.0168;
% % r_thre = 0.0107;
% f_thre = 0.0168;
% r_thre = 0.0147;
% 
% C_f2 = 356.7325;
% C_r2 = -5.4624*10^4;
% 
% C_f3 = 587.5674;
% C_r3 = -5.3352*10^4;
% 
% bf1 = -9.9155;
% br1 = -3.6278;
% 
% bf2 = 3003;
% br2 = 972.6879;
% 
% bf3 = -3049.2;
% br3 = -998.8310;





%%% high miu 0.85
C_f1 = -9.372*10^4;
C_r1 = -9.406*10^4;

f_thre = 0.093;
r_thre = 0.071;

C_f2 = -2.6908*10^3;
C_r2 = -3.6596*10^3;

C_f3 = C_f2;
C_r3 = C_r2;

bf1 = 0;
br1 = 0;

bf2 = 8.3285*10^3;
br2 = 6.4448*10^3;

bf3 = -bf2;
br3 = -br2;


%%% low miu 0.4
% C_f1 = -4.6862*10^4;
% C_r1 = -5.6762*10^4;
% 
% f_thre = 0.08;
% r_thre = 0.055;
% 
% 
% 
% C_f2 = -1.2108*10^3;
% C_r2 = -1.6468*10^3;
% 
% C_f3 = C_f2;
% C_r3 = C_r2;
% 
% bf1 = 0;
% br1 = 0;
% 
% bf2 = 3.7478*10^3;
% br2 = 2.9002*10^3;
% 
% bf3 = -bf2;
% br3 = -br2;



if ((-f_thre <= alfa_f) && (alfa_f <= f_thre)) && ((-r_thre<= alfa_r) && (alfa_r <=r_thre))
    K_f = C_f1;
    K_r = C_r1;
    b_f = bf1;
    b_r = br1;
    d = 1;
else if ((-f_thre <= alfa_f) && (alfa_f <= f_thre)) && (alfa_r <= -r_thre)
        K_f = C_f1;
        K_r = C_r2;
        b_f = bf1;
        b_r = br2;
        d = 2;
    else if ((-f_thre <= alfa_f) && (alfa_f <= f_thre)) && (alfa_r >= r_thre)
            K_f = C_f1;
            K_r = C_r3;
            b_f = bf1;
            b_r = br3;
            d = 3;
        else if ((alfa_f <= -f_thre) && ((-r_thre<= alfa_r) && (alfa_r <=r_thre)))
                K_f = C_f2;
                K_r = C_r1;
                b_f = bf2;
                b_r = br1;
                d = 4;
            else if (alfa_f <= -f_thre) && (alfa_r <= -r_thre)
                    K_f = C_f2;
                    K_r = C_r2;
                    b_f = bf2;
                    b_r = br2;
                    d = 5;
                else if (alfa_f <= -f_thre) && (alfa_r >= r_thre)
                        K_f = C_f2;
                        K_r = C_r3;
                        b_f = bf2;
                        b_r = br3;
                        d = 6;
                    else if (alfa_f >= f_thre) && ((-r_thre<= alfa_r) && (alfa_r <=r_thre))
                            K_f = C_f3;
                            K_r = C_r1;
                            b_f = bf3;
                            b_r = br1;
                            d = 7;
                        else if (alfa_f >= f_thre) && (alfa_r <= -r_thre)
                                K_f = C_f3;
                                K_r = C_r2;
                                b_f = bf3;
                                b_r = br2;
                                d = 8;
                            else if (alfa_f >= f_thre) && (alfa_r >= r_thre)
                                    K_f = C_f3;
                                    K_r = C_r3;
                                    b_f = bf3;
                                    b_r = br3;
                                    d = 9;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
uout = [K_f;K_r;b_f;b_r;d];
end