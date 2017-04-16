(* Created with the Wolfram Language : www.wolfram.com *)
{Derivative[1][g][t] == (-19*g[t]^3*Log[10])/(96*Pi^2), 
 Derivative[1][gp][t] == (41*gp[t]^3*Log[10])/(96*Pi^2), 
 Derivative[1][gs][t] == (-7*gs[t]^3*Log[10])/(16*Pi^2), 
 Derivative[1][\[Lambda]][t] == 
  (Log[10]*((9*g[t]^4)/4 + (3*g[t]^2*gp[t]^2)/2 + (3*gp[t]^4)/4 - 
     3*(3*g[t]^2 + gp[t]^2)*\[Lambda][t] + 12*\[Lambda][t]^2 + 
     4*\[Lambda][t]*(3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t])) - 
     4*(3*(Conjugate[GD[1, 1][t]]*(GD[1, 1][t]*(Conjugate[GD[1, 1][t]]*
              GD[1, 1][t] + Conjugate[GD[1, 2][t]]*GD[1, 2][t] + 
             Conjugate[GD[1, 3][t]]*GD[1, 3][t]) + 
           (Conjugate[GD[2, 1][t]]*GD[1, 1][t] + Conjugate[GD[2, 2][t]]*
              GD[1, 2][t] + Conjugate[GD[2, 3][t]]*GD[1, 3][t])*GD[2, 1][t] + 
           (Conjugate[GD[3, 1][t]]*GD[1, 1][t] + Conjugate[GD[3, 2][t]]*
              GD[1, 2][t] + Conjugate[GD[3, 3][t]]*GD[1, 3][t])*
            GD[3, 1][t]) + Conjugate[GD[2, 1][t]]*
          (GD[1, 1][t]*(Conjugate[GD[1, 1][t]]*GD[2, 1][t] + 
             Conjugate[GD[1, 2][t]]*GD[2, 2][t] + Conjugate[GD[1, 3][t]]*
              GD[2, 3][t]) + GD[2, 1][t]*(Conjugate[GD[2, 1][t]]*
              GD[2, 1][t] + Conjugate[GD[2, 2][t]]*GD[2, 2][t] + 
             Conjugate[GD[2, 3][t]]*GD[2, 3][t]) + 
           (Conjugate[GD[3, 1][t]]*GD[2, 1][t] + Conjugate[GD[3, 2][t]]*
              GD[2, 2][t] + Conjugate[GD[3, 3][t]]*GD[2, 3][t])*
            GD[3, 1][t]) + Conjugate[GD[1, 2][t]]*
          (GD[1, 2][t]*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
             Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
              GD[1, 3][t]) + (Conjugate[GD[2, 1][t]]*GD[1, 1][t] + 
             Conjugate[GD[2, 2][t]]*GD[1, 2][t] + Conjugate[GD[2, 3][t]]*
              GD[1, 3][t])*GD[2, 2][t] + (Conjugate[GD[3, 1][t]]*
              GD[1, 1][t] + Conjugate[GD[3, 2][t]]*GD[1, 2][t] + 
             Conjugate[GD[3, 3][t]]*GD[1, 3][t])*GD[3, 2][t]) + 
         Conjugate[GD[2, 2][t]]*(GD[1, 2][t]*(Conjugate[GD[1, 1][t]]*
              GD[2, 1][t] + Conjugate[GD[1, 2][t]]*GD[2, 2][t] + 
             Conjugate[GD[1, 3][t]]*GD[2, 3][t]) + GD[2, 2][t]*
            (Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
              GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t]) + 
           (Conjugate[GD[3, 1][t]]*GD[2, 1][t] + Conjugate[GD[3, 2][t]]*
              GD[2, 2][t] + Conjugate[GD[3, 3][t]]*GD[2, 3][t])*
            GD[3, 2][t]) + Conjugate[GD[1, 3][t]]*
          (GD[1, 3][t]*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
             Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
              GD[1, 3][t]) + (Conjugate[GD[2, 1][t]]*GD[1, 1][t] + 
             Conjugate[GD[2, 2][t]]*GD[1, 2][t] + Conjugate[GD[2, 3][t]]*
              GD[1, 3][t])*GD[2, 3][t] + (Conjugate[GD[3, 1][t]]*
              GD[1, 1][t] + Conjugate[GD[3, 2][t]]*GD[1, 2][t] + 
             Conjugate[GD[3, 3][t]]*GD[1, 3][t])*GD[3, 3][t]) + 
         Conjugate[GD[2, 3][t]]*(GD[1, 3][t]*(Conjugate[GD[1, 1][t]]*
              GD[2, 1][t] + Conjugate[GD[1, 2][t]]*GD[2, 2][t] + 
             Conjugate[GD[1, 3][t]]*GD[2, 3][t]) + GD[2, 3][t]*
            (Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
              GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t]) + 
           (Conjugate[GD[3, 1][t]]*GD[2, 1][t] + Conjugate[GD[3, 2][t]]*
              GD[2, 2][t] + Conjugate[GD[3, 3][t]]*GD[2, 3][t])*
            GD[3, 3][t]) + Conjugate[GD[3, 1][t]]*
          (GD[1, 1][t]*(Conjugate[GD[1, 1][t]]*GD[3, 1][t] + 
             Conjugate[GD[1, 2][t]]*GD[3, 2][t] + Conjugate[GD[1, 3][t]]*
              GD[3, 3][t]) + GD[2, 1][t]*(Conjugate[GD[2, 1][t]]*
              GD[3, 1][t] + Conjugate[GD[2, 2][t]]*GD[3, 2][t] + 
             Conjugate[GD[2, 3][t]]*GD[3, 3][t]) + GD[3, 1][t]*
            (Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
              GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t])) + 
         Conjugate[GD[3, 2][t]]*(GD[1, 2][t]*(Conjugate[GD[1, 1][t]]*
              GD[3, 1][t] + Conjugate[GD[1, 2][t]]*GD[3, 2][t] + 
             Conjugate[GD[1, 3][t]]*GD[3, 3][t]) + GD[2, 2][t]*
            (Conjugate[GD[2, 1][t]]*GD[3, 1][t] + Conjugate[GD[2, 2][t]]*
              GD[3, 2][t] + Conjugate[GD[2, 3][t]]*GD[3, 3][t]) + 
           GD[3, 2][t]*(Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
             Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
              GD[3, 3][t])) + Conjugate[GD[3, 3][t]]*
          (GD[1, 3][t]*(Conjugate[GD[1, 1][t]]*GD[3, 1][t] + 
             Conjugate[GD[1, 2][t]]*GD[3, 2][t] + Conjugate[GD[1, 3][t]]*
              GD[3, 3][t]) + GD[2, 3][t]*(Conjugate[GD[2, 1][t]]*
              GD[3, 1][t] + Conjugate[GD[2, 2][t]]*GD[3, 2][t] + 
             Conjugate[GD[2, 3][t]]*GD[3, 3][t]) + GD[3, 3][t]*
            (Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
              GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]))) + 
       Conjugate[GE[1, 1][t]]*(GE[1, 1][t]*(Conjugate[GE[1, 1][t]]*
            GE[1, 1][t] + Conjugate[GE[1, 2][t]]*GE[1, 2][t] + 
           Conjugate[GE[1, 3][t]]*GE[1, 3][t]) + 
         (Conjugate[GE[2, 1][t]]*GE[1, 1][t] + Conjugate[GE[2, 2][t]]*
            GE[1, 2][t] + Conjugate[GE[2, 3][t]]*GE[1, 3][t])*GE[2, 1][t] + 
         (Conjugate[GE[3, 1][t]]*GE[1, 1][t] + Conjugate[GE[3, 2][t]]*
            GE[1, 2][t] + Conjugate[GE[3, 3][t]]*GE[1, 3][t])*GE[3, 1][t]) + 
       Conjugate[GE[2, 1][t]]*(GE[1, 1][t]*(Conjugate[GE[1, 1][t]]*
            GE[2, 1][t] + Conjugate[GE[1, 2][t]]*GE[2, 2][t] + 
           Conjugate[GE[1, 3][t]]*GE[2, 3][t]) + GE[2, 1][t]*
          (Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
            GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t]) + 
         (Conjugate[GE[3, 1][t]]*GE[2, 1][t] + Conjugate[GE[3, 2][t]]*
            GE[2, 2][t] + Conjugate[GE[3, 3][t]]*GE[2, 3][t])*GE[3, 1][t]) + 
       Conjugate[GE[1, 2][t]]*(GE[1, 2][t]*(Conjugate[GE[1, 1][t]]*
            GE[1, 1][t] + Conjugate[GE[1, 2][t]]*GE[1, 2][t] + 
           Conjugate[GE[1, 3][t]]*GE[1, 3][t]) + 
         (Conjugate[GE[2, 1][t]]*GE[1, 1][t] + Conjugate[GE[2, 2][t]]*
            GE[1, 2][t] + Conjugate[GE[2, 3][t]]*GE[1, 3][t])*GE[2, 2][t] + 
         (Conjugate[GE[3, 1][t]]*GE[1, 1][t] + Conjugate[GE[3, 2][t]]*
            GE[1, 2][t] + Conjugate[GE[3, 3][t]]*GE[1, 3][t])*GE[3, 2][t]) + 
       Conjugate[GE[2, 2][t]]*(GE[1, 2][t]*(Conjugate[GE[1, 1][t]]*
            GE[2, 1][t] + Conjugate[GE[1, 2][t]]*GE[2, 2][t] + 
           Conjugate[GE[1, 3][t]]*GE[2, 3][t]) + GE[2, 2][t]*
          (Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
            GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t]) + 
         (Conjugate[GE[3, 1][t]]*GE[2, 1][t] + Conjugate[GE[3, 2][t]]*
            GE[2, 2][t] + Conjugate[GE[3, 3][t]]*GE[2, 3][t])*GE[3, 2][t]) + 
       Conjugate[GE[1, 3][t]]*(GE[1, 3][t]*(Conjugate[GE[1, 1][t]]*
            GE[1, 1][t] + Conjugate[GE[1, 2][t]]*GE[1, 2][t] + 
           Conjugate[GE[1, 3][t]]*GE[1, 3][t]) + 
         (Conjugate[GE[2, 1][t]]*GE[1, 1][t] + Conjugate[GE[2, 2][t]]*
            GE[1, 2][t] + Conjugate[GE[2, 3][t]]*GE[1, 3][t])*GE[2, 3][t] + 
         (Conjugate[GE[3, 1][t]]*GE[1, 1][t] + Conjugate[GE[3, 2][t]]*
            GE[1, 2][t] + Conjugate[GE[3, 3][t]]*GE[1, 3][t])*GE[3, 3][t]) + 
       Conjugate[GE[2, 3][t]]*(GE[1, 3][t]*(Conjugate[GE[1, 1][t]]*
            GE[2, 1][t] + Conjugate[GE[1, 2][t]]*GE[2, 2][t] + 
           Conjugate[GE[1, 3][t]]*GE[2, 3][t]) + GE[2, 3][t]*
          (Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
            GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t]) + 
         (Conjugate[GE[3, 1][t]]*GE[2, 1][t] + Conjugate[GE[3, 2][t]]*
            GE[2, 2][t] + Conjugate[GE[3, 3][t]]*GE[2, 3][t])*GE[3, 3][t]) + 
       Conjugate[GE[3, 1][t]]*(GE[1, 1][t]*(Conjugate[GE[1, 1][t]]*
            GE[3, 1][t] + Conjugate[GE[1, 2][t]]*GE[3, 2][t] + 
           Conjugate[GE[1, 3][t]]*GE[3, 3][t]) + GE[2, 1][t]*
          (Conjugate[GE[2, 1][t]]*GE[3, 1][t] + Conjugate[GE[2, 2][t]]*
            GE[3, 2][t] + Conjugate[GE[2, 3][t]]*GE[3, 3][t]) + 
         GE[3, 1][t]*(Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
           Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
            GE[3, 3][t])) + Conjugate[GE[3, 2][t]]*
        (GE[1, 2][t]*(Conjugate[GE[1, 1][t]]*GE[3, 1][t] + 
           Conjugate[GE[1, 2][t]]*GE[3, 2][t] + Conjugate[GE[1, 3][t]]*
            GE[3, 3][t]) + GE[2, 2][t]*(Conjugate[GE[2, 1][t]]*GE[3, 1][t] + 
           Conjugate[GE[2, 2][t]]*GE[3, 2][t] + Conjugate[GE[2, 3][t]]*
            GE[3, 3][t]) + GE[3, 2][t]*(Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
           Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
            GE[3, 3][t])) + Conjugate[GE[3, 3][t]]*
        (GE[1, 3][t]*(Conjugate[GE[1, 1][t]]*GE[3, 1][t] + 
           Conjugate[GE[1, 2][t]]*GE[3, 2][t] + Conjugate[GE[1, 3][t]]*
            GE[3, 3][t]) + GE[2, 3][t]*(Conjugate[GE[2, 1][t]]*GE[3, 1][t] + 
           Conjugate[GE[2, 2][t]]*GE[3, 2][t] + Conjugate[GE[2, 3][t]]*
            GE[3, 3][t]) + GE[3, 3][t]*(Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
           Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
            GE[3, 3][t])) + 3*(Conjugate[GU[1, 1][t]]*
          (GU[1, 1][t]*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
             Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
              GU[1, 3][t]) + (Conjugate[GU[2, 1][t]]*GU[1, 1][t] + 
             Conjugate[GU[2, 2][t]]*GU[1, 2][t] + Conjugate[GU[2, 3][t]]*
              GU[1, 3][t])*GU[2, 1][t] + (Conjugate[GU[3, 1][t]]*
              GU[1, 1][t] + Conjugate[GU[3, 2][t]]*GU[1, 2][t] + 
             Conjugate[GU[3, 3][t]]*GU[1, 3][t])*GU[3, 1][t]) + 
         Conjugate[GU[2, 1][t]]*(GU[1, 1][t]*(Conjugate[GU[1, 1][t]]*
              GU[2, 1][t] + Conjugate[GU[1, 2][t]]*GU[2, 2][t] + 
             Conjugate[GU[1, 3][t]]*GU[2, 3][t]) + GU[2, 1][t]*
            (Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
              GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t]) + 
           (Conjugate[GU[3, 1][t]]*GU[2, 1][t] + Conjugate[GU[3, 2][t]]*
              GU[2, 2][t] + Conjugate[GU[3, 3][t]]*GU[2, 3][t])*
            GU[3, 1][t]) + Conjugate[GU[1, 2][t]]*
          (GU[1, 2][t]*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
             Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
              GU[1, 3][t]) + (Conjugate[GU[2, 1][t]]*GU[1, 1][t] + 
             Conjugate[GU[2, 2][t]]*GU[1, 2][t] + Conjugate[GU[2, 3][t]]*
              GU[1, 3][t])*GU[2, 2][t] + (Conjugate[GU[3, 1][t]]*
              GU[1, 1][t] + Conjugate[GU[3, 2][t]]*GU[1, 2][t] + 
             Conjugate[GU[3, 3][t]]*GU[1, 3][t])*GU[3, 2][t]) + 
         Conjugate[GU[2, 2][t]]*(GU[1, 2][t]*(Conjugate[GU[1, 1][t]]*
              GU[2, 1][t] + Conjugate[GU[1, 2][t]]*GU[2, 2][t] + 
             Conjugate[GU[1, 3][t]]*GU[2, 3][t]) + GU[2, 2][t]*
            (Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
              GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t]) + 
           (Conjugate[GU[3, 1][t]]*GU[2, 1][t] + Conjugate[GU[3, 2][t]]*
              GU[2, 2][t] + Conjugate[GU[3, 3][t]]*GU[2, 3][t])*
            GU[3, 2][t]) + Conjugate[GU[1, 3][t]]*
          (GU[1, 3][t]*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
             Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
              GU[1, 3][t]) + (Conjugate[GU[2, 1][t]]*GU[1, 1][t] + 
             Conjugate[GU[2, 2][t]]*GU[1, 2][t] + Conjugate[GU[2, 3][t]]*
              GU[1, 3][t])*GU[2, 3][t] + (Conjugate[GU[3, 1][t]]*
              GU[1, 1][t] + Conjugate[GU[3, 2][t]]*GU[1, 2][t] + 
             Conjugate[GU[3, 3][t]]*GU[1, 3][t])*GU[3, 3][t]) + 
         Conjugate[GU[2, 3][t]]*(GU[1, 3][t]*(Conjugate[GU[1, 1][t]]*
              GU[2, 1][t] + Conjugate[GU[1, 2][t]]*GU[2, 2][t] + 
             Conjugate[GU[1, 3][t]]*GU[2, 3][t]) + GU[2, 3][t]*
            (Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
              GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t]) + 
           (Conjugate[GU[3, 1][t]]*GU[2, 1][t] + Conjugate[GU[3, 2][t]]*
              GU[2, 2][t] + Conjugate[GU[3, 3][t]]*GU[2, 3][t])*
            GU[3, 3][t]) + Conjugate[GU[3, 1][t]]*
          (GU[1, 1][t]*(Conjugate[GU[1, 1][t]]*GU[3, 1][t] + 
             Conjugate[GU[1, 2][t]]*GU[3, 2][t] + Conjugate[GU[1, 3][t]]*
              GU[3, 3][t]) + GU[2, 1][t]*(Conjugate[GU[2, 1][t]]*
              GU[3, 1][t] + Conjugate[GU[2, 2][t]]*GU[3, 2][t] + 
             Conjugate[GU[2, 3][t]]*GU[3, 3][t]) + GU[3, 1][t]*
            (Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
              GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t])) + 
         Conjugate[GU[3, 2][t]]*(GU[1, 2][t]*(Conjugate[GU[1, 1][t]]*
              GU[3, 1][t] + Conjugate[GU[1, 2][t]]*GU[3, 2][t] + 
             Conjugate[GU[1, 3][t]]*GU[3, 3][t]) + GU[2, 2][t]*
            (Conjugate[GU[2, 1][t]]*GU[3, 1][t] + Conjugate[GU[2, 2][t]]*
              GU[3, 2][t] + Conjugate[GU[2, 3][t]]*GU[3, 3][t]) + 
           GU[3, 2][t]*(Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
             Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
              GU[3, 3][t])) + Conjugate[GU[3, 3][t]]*
          (GU[1, 3][t]*(Conjugate[GU[1, 1][t]]*GU[3, 1][t] + 
             Conjugate[GU[1, 2][t]]*GU[3, 2][t] + Conjugate[GU[1, 3][t]]*
              GU[3, 3][t]) + GU[2, 3][t]*(Conjugate[GU[2, 1][t]]*
              GU[3, 1][t] + Conjugate[GU[2, 2][t]]*GU[3, 2][t] + 
             Conjugate[GU[2, 3][t]]*GU[3, 3][t]) + GU[3, 3][t]*
            (Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
              GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))))/
   (16*Pi^2), Derivative[1][m2][t] == 
  (Log[10]*m2[t]*((-9*g[t]^2)/2 - (3*gp[t]^2)/2 + 6*\[Lambda][t] + 
     2*(3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GU[1, 1]][t] == 
  (Log[10]*
    ((3*(-((Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
            GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t])*GU[1, 1][t]) + 
        GU[1, 1][t]*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[1, 3][t]) - (Conjugate[GD[2, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[1, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[1, 3][t])*GU[2, 1][t] + (Conjugate[GU[2, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[1, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[1, 3][t])*GU[2, 1][t] - (Conjugate[GD[3, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[1, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[1, 3][t])*GU[3, 1][t] + (Conjugate[GU[3, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[1, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[1, 3][t])*GU[3, 1][t]))/2 + GU[1, 1][t]*
      ((-9*g[t]^2)/4 - (17*gp[t]^2)/12 - 8*gs[t]^2 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GU[1, 2]][t] == 
  (Log[10]*
    ((3*(-((Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
            GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t])*GU[1, 2][t]) + 
        GU[1, 2][t]*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[1, 3][t]) - (Conjugate[GD[2, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[1, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[1, 3][t])*GU[2, 2][t] + (Conjugate[GU[2, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[1, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[1, 3][t])*GU[2, 2][t] - (Conjugate[GD[3, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[1, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[1, 3][t])*GU[3, 2][t] + (Conjugate[GU[3, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[1, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[1, 3][t])*GU[3, 2][t]))/2 + GU[1, 2][t]*
      ((-9*g[t]^2)/4 - (17*gp[t]^2)/12 - 8*gs[t]^2 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GU[1, 3]][t] == 
  (Log[10]*
    ((3*(-((Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
            GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t])*GU[1, 3][t]) + 
        GU[1, 3][t]*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[1, 3][t]) - (Conjugate[GD[2, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[1, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[1, 3][t])*GU[2, 3][t] + (Conjugate[GU[2, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[1, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[1, 3][t])*GU[2, 3][t] - (Conjugate[GD[3, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[1, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[1, 3][t])*GU[3, 3][t] + (Conjugate[GU[3, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[1, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[1, 3][t])*GU[3, 3][t]))/2 + GU[1, 3][t]*
      ((-9*g[t]^2)/4 - (17*gp[t]^2)/12 - 8*gs[t]^2 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GU[2, 1]][t] == 
  (Log[10]*
    ((3*(-((Conjugate[GD[1, 1][t]]*GD[2, 1][t] + Conjugate[GD[1, 2][t]]*
            GD[2, 2][t] + Conjugate[GD[1, 3][t]]*GD[2, 3][t])*GU[1, 1][t]) - 
        (Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
           GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t])*GU[2, 1][t] + 
        GU[1, 1][t]*(Conjugate[GU[1, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[2, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[2, 3][t]) + GU[2, 1][t]*(Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[2, 3][t]) - (Conjugate[GD[3, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[2, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[2, 3][t])*GU[3, 1][t] + (Conjugate[GU[3, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[2, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[2, 3][t])*GU[3, 1][t]))/2 + GU[2, 1][t]*
      ((-9*g[t]^2)/4 - (17*gp[t]^2)/12 - 8*gs[t]^2 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GU[2, 2]][t] == 
  (Log[10]*
    ((3*(-((Conjugate[GD[1, 1][t]]*GD[2, 1][t] + Conjugate[GD[1, 2][t]]*
            GD[2, 2][t] + Conjugate[GD[1, 3][t]]*GD[2, 3][t])*GU[1, 2][t]) - 
        (Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
           GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t])*GU[2, 2][t] + 
        GU[1, 2][t]*(Conjugate[GU[1, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[2, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[2, 3][t]) + GU[2, 2][t]*(Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[2, 3][t]) - (Conjugate[GD[3, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[2, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[2, 3][t])*GU[3, 2][t] + (Conjugate[GU[3, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[2, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[2, 3][t])*GU[3, 2][t]))/2 + GU[2, 2][t]*
      ((-9*g[t]^2)/4 - (17*gp[t]^2)/12 - 8*gs[t]^2 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GU[2, 3]][t] == 
  (Log[10]*
    ((3*(-((Conjugate[GD[1, 1][t]]*GD[2, 1][t] + Conjugate[GD[1, 2][t]]*
            GD[2, 2][t] + Conjugate[GD[1, 3][t]]*GD[2, 3][t])*GU[1, 3][t]) - 
        (Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
           GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t])*GU[2, 3][t] + 
        GU[1, 3][t]*(Conjugate[GU[1, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[2, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[2, 3][t]) + GU[2, 3][t]*(Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[2, 3][t]) - (Conjugate[GD[3, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[2, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[2, 3][t])*GU[3, 3][t] + (Conjugate[GU[3, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[2, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[2, 3][t])*GU[3, 3][t]))/2 + GU[2, 3][t]*
      ((-9*g[t]^2)/4 - (17*gp[t]^2)/12 - 8*gs[t]^2 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GU[3, 1]][t] == 
  (Log[10]*
    ((3*(-((Conjugate[GD[1, 1][t]]*GD[3, 1][t] + Conjugate[GD[1, 2][t]]*
            GD[3, 2][t] + Conjugate[GD[1, 3][t]]*GD[3, 3][t])*GU[1, 1][t]) - 
        (Conjugate[GD[2, 1][t]]*GD[3, 1][t] + Conjugate[GD[2, 2][t]]*
           GD[3, 2][t] + Conjugate[GD[2, 3][t]]*GD[3, 3][t])*GU[2, 1][t] - 
        (Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
           GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t])*GU[3, 1][t] + 
        GU[1, 1][t]*(Conjugate[GU[1, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[3, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[3, 3][t]) + GU[2, 1][t]*(Conjugate[GU[2, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[3, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[3, 3][t]) + GU[3, 1][t]*(Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[3, 3][t])))/2 + GU[3, 1][t]*((-9*g[t]^2)/4 - (17*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GU[3, 2]][t] == 
  (Log[10]*
    ((3*(-((Conjugate[GD[1, 1][t]]*GD[3, 1][t] + Conjugate[GD[1, 2][t]]*
            GD[3, 2][t] + Conjugate[GD[1, 3][t]]*GD[3, 3][t])*GU[1, 2][t]) - 
        (Conjugate[GD[2, 1][t]]*GD[3, 1][t] + Conjugate[GD[2, 2][t]]*
           GD[3, 2][t] + Conjugate[GD[2, 3][t]]*GD[3, 3][t])*GU[2, 2][t] - 
        (Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
           GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t])*GU[3, 2][t] + 
        GU[1, 2][t]*(Conjugate[GU[1, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[3, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[3, 3][t]) + GU[2, 2][t]*(Conjugate[GU[2, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[3, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[3, 3][t]) + GU[3, 2][t]*(Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[3, 3][t])))/2 + GU[3, 2][t]*((-9*g[t]^2)/4 - (17*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GU[3, 3]][t] == 
  (Log[10]*
    ((3*(-((Conjugate[GD[1, 1][t]]*GD[3, 1][t] + Conjugate[GD[1, 2][t]]*
            GD[3, 2][t] + Conjugate[GD[1, 3][t]]*GD[3, 3][t])*GU[1, 3][t]) - 
        (Conjugate[GD[2, 1][t]]*GD[3, 1][t] + Conjugate[GD[2, 2][t]]*
           GD[3, 2][t] + Conjugate[GD[2, 3][t]]*GD[3, 3][t])*GU[2, 3][t] - 
        (Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
           GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t])*GU[3, 3][t] + 
        GU[1, 3][t]*(Conjugate[GU[1, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[3, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[3, 3][t]) + GU[2, 3][t]*(Conjugate[GU[2, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[3, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[3, 3][t]) + GU[3, 3][t]*(Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[3, 3][t])))/2 + GU[3, 3][t]*((-9*g[t]^2)/4 - (17*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GD[1, 1]][t] == 
  (Log[10]*((3*(GD[1, 1][t]*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
           GD[1, 3][t]) + (Conjugate[GD[2, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[1, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[1, 3][t])*GD[2, 1][t] + (Conjugate[GD[3, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[1, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[1, 3][t])*GD[3, 1][t] - GD[1, 1][t]*
         (Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
           GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t]) - 
        GD[2, 1][t]*(Conjugate[GU[2, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[1, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[1, 3][t]) - GD[3, 1][t]*(Conjugate[GU[3, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[1, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[1, 3][t])))/2 + GD[1, 1][t]*((-9*g[t]^2)/4 - (5*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GD[1, 2]][t] == 
  (Log[10]*((3*(GD[1, 2][t]*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
           GD[1, 3][t]) + (Conjugate[GD[2, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[1, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[1, 3][t])*GD[2, 2][t] + (Conjugate[GD[3, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[1, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[1, 3][t])*GD[3, 2][t] - GD[1, 2][t]*
         (Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
           GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t]) - 
        GD[2, 2][t]*(Conjugate[GU[2, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[1, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[1, 3][t]) - GD[3, 2][t]*(Conjugate[GU[3, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[1, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[1, 3][t])))/2 + GD[1, 2][t]*((-9*g[t]^2)/4 - (5*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GD[1, 3]][t] == 
  (Log[10]*((3*(GD[1, 3][t]*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
           GD[1, 3][t]) + (Conjugate[GD[2, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[1, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[1, 3][t])*GD[2, 3][t] + (Conjugate[GD[3, 1][t]]*GD[1, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[1, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[1, 3][t])*GD[3, 3][t] - GD[1, 3][t]*
         (Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
           GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t]) - 
        GD[2, 3][t]*(Conjugate[GU[2, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[1, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[1, 3][t]) - GD[3, 3][t]*(Conjugate[GU[3, 1][t]]*GU[1, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[1, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[1, 3][t])))/2 + GD[1, 3][t]*((-9*g[t]^2)/4 - (5*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GD[2, 1]][t] == 
  (Log[10]*((3*(GD[1, 1][t]*(Conjugate[GD[1, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[1, 2][t]]*GD[2, 2][t] + Conjugate[GD[1, 3][t]]*
           GD[2, 3][t]) + GD[2, 1][t]*(Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[2, 3][t]) + (Conjugate[GD[3, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[2, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[2, 3][t])*GD[3, 1][t] - GD[1, 1][t]*
         (Conjugate[GU[1, 1][t]]*GU[2, 1][t] + Conjugate[GU[1, 2][t]]*
           GU[2, 2][t] + Conjugate[GU[1, 3][t]]*GU[2, 3][t]) - 
        GD[2, 1][t]*(Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[2, 3][t]) - GD[3, 1][t]*(Conjugate[GU[3, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[2, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[2, 3][t])))/2 + GD[2, 1][t]*((-9*g[t]^2)/4 - (5*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GD[2, 2]][t] == 
  (Log[10]*((3*(GD[1, 2][t]*(Conjugate[GD[1, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[1, 2][t]]*GD[2, 2][t] + Conjugate[GD[1, 3][t]]*
           GD[2, 3][t]) + GD[2, 2][t]*(Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[2, 3][t]) + (Conjugate[GD[3, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[2, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[2, 3][t])*GD[3, 2][t] - GD[1, 2][t]*
         (Conjugate[GU[1, 1][t]]*GU[2, 1][t] + Conjugate[GU[1, 2][t]]*
           GU[2, 2][t] + Conjugate[GU[1, 3][t]]*GU[2, 3][t]) - 
        GD[2, 2][t]*(Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[2, 3][t]) - GD[3, 2][t]*(Conjugate[GU[3, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[2, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[2, 3][t])))/2 + GD[2, 2][t]*((-9*g[t]^2)/4 - (5*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GD[2, 3]][t] == 
  (Log[10]*((3*(GD[1, 3][t]*(Conjugate[GD[1, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[1, 2][t]]*GD[2, 2][t] + Conjugate[GD[1, 3][t]]*
           GD[2, 3][t]) + GD[2, 3][t]*(Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[2, 3][t]) + (Conjugate[GD[3, 1][t]]*GD[2, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[2, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[2, 3][t])*GD[3, 3][t] - GD[1, 3][t]*
         (Conjugate[GU[1, 1][t]]*GU[2, 1][t] + Conjugate[GU[1, 2][t]]*
           GU[2, 2][t] + Conjugate[GU[1, 3][t]]*GU[2, 3][t]) - 
        GD[2, 3][t]*(Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[2, 3][t]) - GD[3, 3][t]*(Conjugate[GU[3, 1][t]]*GU[2, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[2, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[2, 3][t])))/2 + GD[2, 3][t]*((-9*g[t]^2)/4 - (5*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GD[3, 1]][t] == 
  (Log[10]*((3*(GD[1, 1][t]*(Conjugate[GD[1, 1][t]]*GD[3, 1][t] + 
          Conjugate[GD[1, 2][t]]*GD[3, 2][t] + Conjugate[GD[1, 3][t]]*
           GD[3, 3][t]) + GD[2, 1][t]*(Conjugate[GD[2, 1][t]]*GD[3, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[3, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[3, 3][t]) + GD[3, 1][t]*(Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[3, 3][t]) - GD[1, 1][t]*(Conjugate[GU[1, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[3, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[3, 3][t]) - GD[2, 1][t]*(Conjugate[GU[2, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[3, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[3, 3][t]) - GD[3, 1][t]*(Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[3, 3][t])))/2 + GD[3, 1][t]*((-9*g[t]^2)/4 - (5*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GD[3, 2]][t] == 
  (Log[10]*((3*(GD[1, 2][t]*(Conjugate[GD[1, 1][t]]*GD[3, 1][t] + 
          Conjugate[GD[1, 2][t]]*GD[3, 2][t] + Conjugate[GD[1, 3][t]]*
           GD[3, 3][t]) + GD[2, 2][t]*(Conjugate[GD[2, 1][t]]*GD[3, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[3, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[3, 3][t]) + GD[3, 2][t]*(Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[3, 3][t]) - GD[1, 2][t]*(Conjugate[GU[1, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[3, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[3, 3][t]) - GD[2, 2][t]*(Conjugate[GU[2, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[3, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[3, 3][t]) - GD[3, 2][t]*(Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[3, 3][t])))/2 + GD[3, 2][t]*((-9*g[t]^2)/4 - (5*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GD[3, 3]][t] == 
  (Log[10]*((3*(GD[1, 3][t]*(Conjugate[GD[1, 1][t]]*GD[3, 1][t] + 
          Conjugate[GD[1, 2][t]]*GD[3, 2][t] + Conjugate[GD[1, 3][t]]*
           GD[3, 3][t]) + GD[2, 3][t]*(Conjugate[GD[2, 1][t]]*GD[3, 1][t] + 
          Conjugate[GD[2, 2][t]]*GD[3, 2][t] + Conjugate[GD[2, 3][t]]*
           GD[3, 3][t]) + GD[3, 3][t]*(Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
          Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
           GD[3, 3][t]) - GD[1, 3][t]*(Conjugate[GU[1, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[1, 2][t]]*GU[3, 2][t] + Conjugate[GU[1, 3][t]]*
           GU[3, 3][t]) - GD[2, 3][t]*(Conjugate[GU[2, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[2, 2][t]]*GU[3, 2][t] + Conjugate[GU[2, 3][t]]*
           GU[3, 3][t]) - GD[3, 3][t]*(Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
          Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
           GU[3, 3][t])))/2 + GD[3, 3][t]*((-9*g[t]^2)/4 - (5*gp[t]^2)/12 - 
       8*gs[t]^2 + 3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + 
         Conjugate[GD[1, 2][t]]*GD[1, 2][t] + Conjugate[GD[1, 3][t]]*
          GD[1, 3][t] + Conjugate[GD[2, 1][t]]*GD[2, 1][t] + 
         Conjugate[GD[2, 2][t]]*GD[2, 2][t] + Conjugate[GD[2, 3][t]]*
          GD[2, 3][t] + Conjugate[GD[3, 1][t]]*GD[3, 1][t] + 
         Conjugate[GD[3, 2][t]]*GD[3, 2][t] + Conjugate[GD[3, 3][t]]*
          GD[3, 3][t]) + Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
       Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
        GE[1, 3][t] + Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
       Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
        GE[2, 3][t] + Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
       Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
        GE[3, 3][t] + 3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + 
         Conjugate[GU[1, 2][t]]*GU[1, 2][t] + Conjugate[GU[1, 3][t]]*
          GU[1, 3][t] + Conjugate[GU[2, 1][t]]*GU[2, 1][t] + 
         Conjugate[GU[2, 2][t]]*GU[2, 2][t] + Conjugate[GU[2, 3][t]]*
          GU[2, 3][t] + Conjugate[GU[3, 1][t]]*GU[3, 1][t] + 
         Conjugate[GU[3, 2][t]]*GU[3, 2][t] + Conjugate[GU[3, 3][t]]*
          GU[3, 3][t]))))/(16*Pi^2), Derivative[1][GE[1, 1]][t] == 
  (Log[10]*((3*(GE[1, 1][t]*(Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
          Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
           GE[1, 3][t]) + (Conjugate[GE[2, 1][t]]*GE[1, 1][t] + 
          Conjugate[GE[2, 2][t]]*GE[1, 2][t] + Conjugate[GE[2, 3][t]]*
           GE[1, 3][t])*GE[2, 1][t] + (Conjugate[GE[3, 1][t]]*GE[1, 1][t] + 
          Conjugate[GE[3, 2][t]]*GE[1, 2][t] + Conjugate[GE[3, 3][t]]*
           GE[1, 3][t])*GE[3, 1][t]))/2 + GE[1, 1][t]*
      ((-3*(3*g[t]^2 + 5*gp[t]^2))/4 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GE[1, 2]][t] == 
  (Log[10]*((3*(GE[1, 2][t]*(Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
          Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
           GE[1, 3][t]) + (Conjugate[GE[2, 1][t]]*GE[1, 1][t] + 
          Conjugate[GE[2, 2][t]]*GE[1, 2][t] + Conjugate[GE[2, 3][t]]*
           GE[1, 3][t])*GE[2, 2][t] + (Conjugate[GE[3, 1][t]]*GE[1, 1][t] + 
          Conjugate[GE[3, 2][t]]*GE[1, 2][t] + Conjugate[GE[3, 3][t]]*
           GE[1, 3][t])*GE[3, 2][t]))/2 + GE[1, 2][t]*
      ((-3*(3*g[t]^2 + 5*gp[t]^2))/4 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GE[1, 3]][t] == 
  (Log[10]*((3*(GE[1, 3][t]*(Conjugate[GE[1, 1][t]]*GE[1, 1][t] + 
          Conjugate[GE[1, 2][t]]*GE[1, 2][t] + Conjugate[GE[1, 3][t]]*
           GE[1, 3][t]) + (Conjugate[GE[2, 1][t]]*GE[1, 1][t] + 
          Conjugate[GE[2, 2][t]]*GE[1, 2][t] + Conjugate[GE[2, 3][t]]*
           GE[1, 3][t])*GE[2, 3][t] + (Conjugate[GE[3, 1][t]]*GE[1, 1][t] + 
          Conjugate[GE[3, 2][t]]*GE[1, 2][t] + Conjugate[GE[3, 3][t]]*
           GE[1, 3][t])*GE[3, 3][t]))/2 + GE[1, 3][t]*
      ((-3*(3*g[t]^2 + 5*gp[t]^2))/4 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GE[2, 1]][t] == 
  (Log[10]*((3*(GE[1, 1][t]*(Conjugate[GE[1, 1][t]]*GE[2, 1][t] + 
          Conjugate[GE[1, 2][t]]*GE[2, 2][t] + Conjugate[GE[1, 3][t]]*
           GE[2, 3][t]) + GE[2, 1][t]*(Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
          Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
           GE[2, 3][t]) + (Conjugate[GE[3, 1][t]]*GE[2, 1][t] + 
          Conjugate[GE[3, 2][t]]*GE[2, 2][t] + Conjugate[GE[3, 3][t]]*
           GE[2, 3][t])*GE[3, 1][t]))/2 + GE[2, 1][t]*
      ((-3*(3*g[t]^2 + 5*gp[t]^2))/4 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GE[2, 2]][t] == 
  (Log[10]*((3*(GE[1, 2][t]*(Conjugate[GE[1, 1][t]]*GE[2, 1][t] + 
          Conjugate[GE[1, 2][t]]*GE[2, 2][t] + Conjugate[GE[1, 3][t]]*
           GE[2, 3][t]) + GE[2, 2][t]*(Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
          Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
           GE[2, 3][t]) + (Conjugate[GE[3, 1][t]]*GE[2, 1][t] + 
          Conjugate[GE[3, 2][t]]*GE[2, 2][t] + Conjugate[GE[3, 3][t]]*
           GE[2, 3][t])*GE[3, 2][t]))/2 + GE[2, 2][t]*
      ((-3*(3*g[t]^2 + 5*gp[t]^2))/4 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GE[2, 3]][t] == 
  (Log[10]*((3*(GE[1, 3][t]*(Conjugate[GE[1, 1][t]]*GE[2, 1][t] + 
          Conjugate[GE[1, 2][t]]*GE[2, 2][t] + Conjugate[GE[1, 3][t]]*
           GE[2, 3][t]) + GE[2, 3][t]*(Conjugate[GE[2, 1][t]]*GE[2, 1][t] + 
          Conjugate[GE[2, 2][t]]*GE[2, 2][t] + Conjugate[GE[2, 3][t]]*
           GE[2, 3][t]) + (Conjugate[GE[3, 1][t]]*GE[2, 1][t] + 
          Conjugate[GE[3, 2][t]]*GE[2, 2][t] + Conjugate[GE[3, 3][t]]*
           GE[2, 3][t])*GE[3, 3][t]))/2 + GE[2, 3][t]*
      ((-3*(3*g[t]^2 + 5*gp[t]^2))/4 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GE[3, 1]][t] == 
  (Log[10]*((3*(GE[1, 1][t]*(Conjugate[GE[1, 1][t]]*GE[3, 1][t] + 
          Conjugate[GE[1, 2][t]]*GE[3, 2][t] + Conjugate[GE[1, 3][t]]*
           GE[3, 3][t]) + GE[2, 1][t]*(Conjugate[GE[2, 1][t]]*GE[3, 1][t] + 
          Conjugate[GE[2, 2][t]]*GE[3, 2][t] + Conjugate[GE[2, 3][t]]*
           GE[3, 3][t]) + GE[3, 1][t]*(Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
          Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
           GE[3, 3][t])))/2 + GE[3, 1][t]*((-3*(3*g[t]^2 + 5*gp[t]^2))/4 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GE[3, 2]][t] == 
  (Log[10]*((3*(GE[1, 2][t]*(Conjugate[GE[1, 1][t]]*GE[3, 1][t] + 
          Conjugate[GE[1, 2][t]]*GE[3, 2][t] + Conjugate[GE[1, 3][t]]*
           GE[3, 3][t]) + GE[2, 2][t]*(Conjugate[GE[2, 1][t]]*GE[3, 1][t] + 
          Conjugate[GE[2, 2][t]]*GE[3, 2][t] + Conjugate[GE[2, 3][t]]*
           GE[3, 3][t]) + GE[3, 2][t]*(Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
          Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
           GE[3, 3][t])))/2 + GE[3, 2][t]*((-3*(3*g[t]^2 + 5*gp[t]^2))/4 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][GE[3, 3]][t] == 
  (Log[10]*((3*(GE[1, 3][t]*(Conjugate[GE[1, 1][t]]*GE[3, 1][t] + 
          Conjugate[GE[1, 2][t]]*GE[3, 2][t] + Conjugate[GE[1, 3][t]]*
           GE[3, 3][t]) + GE[2, 3][t]*(Conjugate[GE[2, 1][t]]*GE[3, 1][t] + 
          Conjugate[GE[2, 2][t]]*GE[3, 2][t] + Conjugate[GE[2, 3][t]]*
           GE[3, 3][t]) + GE[3, 3][t]*(Conjugate[GE[3, 1][t]]*GE[3, 1][t] + 
          Conjugate[GE[3, 2][t]]*GE[3, 2][t] + Conjugate[GE[3, 3][t]]*
           GE[3, 3][t])))/2 + GE[3, 3][t]*((-3*(3*g[t]^2 + 5*gp[t]^2))/4 + 
       3*(Conjugate[GD[1, 1][t]]*GD[1, 1][t] + Conjugate[GD[1, 2][t]]*
          GD[1, 2][t] + Conjugate[GD[1, 3][t]]*GD[1, 3][t] + 
         Conjugate[GD[2, 1][t]]*GD[2, 1][t] + Conjugate[GD[2, 2][t]]*
          GD[2, 2][t] + Conjugate[GD[2, 3][t]]*GD[2, 3][t] + 
         Conjugate[GD[3, 1][t]]*GD[3, 1][t] + Conjugate[GD[3, 2][t]]*
          GD[3, 2][t] + Conjugate[GD[3, 3][t]]*GD[3, 3][t]) + 
       Conjugate[GE[1, 1][t]]*GE[1, 1][t] + Conjugate[GE[1, 2][t]]*
        GE[1, 2][t] + Conjugate[GE[1, 3][t]]*GE[1, 3][t] + 
       Conjugate[GE[2, 1][t]]*GE[2, 1][t] + Conjugate[GE[2, 2][t]]*
        GE[2, 2][t] + Conjugate[GE[2, 3][t]]*GE[2, 3][t] + 
       Conjugate[GE[3, 1][t]]*GE[3, 1][t] + Conjugate[GE[3, 2][t]]*
        GE[3, 2][t] + Conjugate[GE[3, 3][t]]*GE[3, 3][t] + 
       3*(Conjugate[GU[1, 1][t]]*GU[1, 1][t] + Conjugate[GU[1, 2][t]]*
          GU[1, 2][t] + Conjugate[GU[1, 3][t]]*GU[1, 3][t] + 
         Conjugate[GU[2, 1][t]]*GU[2, 1][t] + Conjugate[GU[2, 2][t]]*
          GU[2, 2][t] + Conjugate[GU[2, 3][t]]*GU[2, 3][t] + 
         Conjugate[GU[3, 1][t]]*GU[3, 1][t] + Conjugate[GU[3, 2][t]]*
          GU[3, 2][t] + Conjugate[GU[3, 3][t]]*GU[3, 3][t]))))/(16*Pi^2), 
 Derivative[1][\[Theta]][t] == 0, Derivative[1][\[Theta]p][t] == 0, 
 Derivative[1][\[Theta]s][t] == 0}
