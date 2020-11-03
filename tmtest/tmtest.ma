[top]
components : tmtest


[tmtest]
type : cell
dim : (2,40)
delay : transport
defaultDelayTime  : 1000
border : wrapped 

neighbors : tmtest(0,-5) 	tmtest(0,-4) 
neighbors : tmtest(0,-3) 	tmtest(0,-2) 
neighbors : tmtest(0,-1)	tmtest(0,0) 
neighbors : tmtest(0,1) 	tmtest(0,2)
neighbors : tmtest(0,3)	tmtest(0,4)
neighbors : tmtest(1,-5) 	tmtest(1,-4) 
neighbors : tmtest(1,-3) 	tmtest(1,-2) 
neighbors : tmtset(1,-1)	tmtest(1,0) 
neighbors : tmtest(1,1)
		
initialvalue : 0
localtransition : move-rule
stateVariables : velocity init acce
stateValues : 9 0 0
initialvariablesvalue : tmtest.stvalues
neighborports: warning movement accele

[move-rule]
rule : {1} {$velocity := $velocity;$init := $init;$acce := $acce;} 0 { (0,0) = 0 } 
rule : {~movement := $velocity;~accele := $acce;} {$init := -1;} 100 {$init = 0}
 
rule : {~movement := 5;~warning := 2;~accele := (0,-5)~accele;} {$velocity := 5;} 1000 { $velocity = 9 and (0,-1)~movement = 9 and (0,-2)~movement = 9 and (0,-3)~movement = 9 and (0,-4)~movement = 9 and (0,-5)~movement = 5}
rule : {~movement := 5;~warning := 2;~accele := (0,-5)~accele;} {$velocity := 5;} 1000 { $velocity = 9 and (0,-1)~movement = 9 and (0,-2)~movement = 9 and (0,-3)~movement = 9 and (0,-4)~movement = 9 and (0,-5)~movement = 4}
rule : {~movement := 4;~warning := 2;~accele := (0,-4)~accele;} {$velocity := 4;} 1000 { $velocity = 9 and (0,-1)~movement = 9 and (0,-2)~movement = 9 and (0,-3)~movement = 9 and (0,-4)~movement = 4 and (0,1)~movement != 9}
rule : {~movement := 4;~warning := 2;~accele := (0,-4)~accele;} {$velocity := 4;} 1000 { $velocity = 9 and (0,-1)~movement = 9 and (0,-2)~movement = 9 and (0,-3)~movement = 9 and (0,-4)~movement > 4 and (0,-4)~movement != 9 and (0,1)~movement != 9}
rule : {~movement := 4;~warning := 2;~accele := (0,-4)~accele;} {$velocity := 4;} 1000 { $velocity = 9 and (0,-1)~movement = 9 and (0,-2)~movement = 9 and (0,-3)~movement = 9 and (0,-4)~movement = 3}
rule : {~movement := 3;~warning := 2;~accele := (0,-3)~accele;} {$velocity := 3;} 1000 { (0,-1)~movement = 9 and (0,-2)~movement = 9 and (0,-3)~movement = 3 and $velocity = 9 and (0,1)~movement != 9}
rule : {~movement := 3;~warning := 2;~accele := (0,-3)~accele;} {$velocity := 3;} 1000 { (0,-1)~movement = 9 and (0,-2)~movement = 9 and (0,-3)~movement > 3 and (0,-3)~movement != 9 and $velocity = 9 and (0,1)~movement != 9}
rule : {~movement := 3;~warning := 2;~accele := (0,-3)~accele;} {$velocity := 3;} 1000 { (0,-3)~movement = 2 and (0,-2)~movement = 9 and (0,-1)~movement = 9 and $velocity = 9}
rule : {~movement := 2;~warning := 2;~accele := (0,-2)~accele;} {$velocity := 2;} 1000 { (0,-2)~movement = 1 and (0,-1)~movement = 9 and $velocity = 9}
rule : {~movement := 2;~warning := 2;~accele := (0,-2)~accele;} {$velocity := 2;} 1000 { (0,-1)~movement = 9 and (0,-2)~movement = 2 and $velocity = 9 and (0,1)~movement != 9 }
rule : {~movement := 2;~warning := 2;~accele := (0,-2)~accele;} {$velocity := 2;} 1000 { (0,-1)~movement = 9 and (0,-2)~movement > 2 and (0,-2)~movement != 9 and (0,1)~movement != 9 and $velocity = 9}
rule : {~movement := 1;~warning := 2;~accele := (0,-1)~accele;} {$velocity := 1;} 1000 { (0,-1)~movement = 1 and $velocity = 9 and (0,1)~movement != 9}
rule : {~movement := 1;~warning := 2;~accele := (0,-1)~accele;} {$velocity := 1;} 1000 { (0,-1)~movement > 1 and (0,-1)~movement != 9 and (0,1)~movement != 9 and $velocity = 9}
rule : {~movement := 0;~warning := 1;~accele := (0,0)~accele;} {$velocity := 0;} 1000 { $velocity != 9 and (0,1)~movement != 9 and (0,1)~movement != 0}
rule : {~movement := 0;~warning := 1;~accele := (0,0)~accele;} {$velocity := 0;} 1000 { $velocity != 9 and (0,1)~movement = 0 and (1,1)~movement != 9}
rule : {~movement := 0;~warning := 1;~accele := (0,0)~accele;} {$velocity := 0;} 1000 { $velocity != 9 and (0,1)~movement = 0 and (1,0)~movement != 9}
rule : {~movement := 0;~warning := 1;~accele := (0,0)~accele;} {$velocity := 0;} 1000 { $velocity != 9 and (0,1)~movement = 0 and (1,-1)~movement != 9}
rule : {~movement := 0;~warning := 1;~accele := (0,0)~accele;} {$velocity := 0;} 1000 { $velocity != 9 and (0,1)~movement = 0 and (1,-2)~movement != 9}
rule : {~movement := 0;~warning := 1;~accele := (0,0)~accele;} {$velocity := 0;} 1000 { $velocity != 9 and (0,1)~movement = 0 and (1,-3)~movement != 9}
rule : {~movement := 0;~warning := 1;~accele := (0,0)~accele;} {$velocity := 0;} 1000 { $velocity != 9 and (0,1)~movement = 0 and (1,-4)~movement != 9}
rule : {~movement := 0;~warning := 1;~accele := (0,0)~accele;} {$velocity := 0;} 1000 { $velocity != 9 and (0,1)~movement = 0 and (1,-5)~movement != 9}

rule : {~movement := 1;~warning := 2;~accele := (0,-1)~accele;} {$velocity := 1;} 1000 { (0,-1)~movement = 0 and $velocity = 9 and ((0,1)~movement != 9 or (0,2)~movement != 9 or (0,3)~movement != 9 or (0,4)~movement != 9)}
rule : {~movement := $velocity;~warning := 2;~accele := (0,-2)~accele;} {$velocity := (0,-2)~accele;} 1000 { (0,-2)~movement = 0 and $velocity = 9 and (0,-1)~movement = 9 and (0,1)~movement = 9 and (0,2)~movement = 9 and (0,3)~movement = 9 }


rule : {~movement := 1;~warning := 2;~accele := (1,-1)~accele;} {$velocity := 1;} 1000 { $velocity = 9 and (0,-1)~movement = 9 and (0,-2)~movement = 9 and (0,-3)~movement = 9 and (0,-4)~movement = 9 and (0,-5)~movement = 9 and (1,0)~movement = 0 and (1,-1)~movement != 9 }

rule : {~movement := 9;~warning := 2;~accele := 0;} {$velocity := 9;} 1000 { $velocity != 9 and (0,1)~movement = 9}
rule : {~movement := 9;~warning := 2;~accele := 0;} {$velocity := 9;} 1000 { $velocity != 9 and (0,1)~movement = 0 and (1,0)~movement = 9 and (1,-1)~movement = 9 and (1,-2)~movement = 9 and (1,-3)~movement = 9 and (1,-4)~movement = 9 and (1,-5)~movement = 9 and (1,1)~movement = 9}

rule : {} 0 {t}


