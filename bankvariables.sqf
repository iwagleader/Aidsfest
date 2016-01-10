if(debug)then{['geld', 15000000] call INV_AddInvItem};
StartGeld                = 25000;
if(iscop)then{StartGeld = 80000;};
maxcopbonus		 = 30000;
maxcivbonus 	 	 = 30000;
robb_timeSperre          = 1200;   
local_useBankPossible    = true;  
maxinsafe                = 300000;
BankRaubKontoverlust     = 4000;  
ShopRaubKontovershop     = 0;
ShopRaubProzentVershop   = 0;
rblock			 = 0;
stolencash		 = 0;
Maxbankrobpercentlost    = 0.1; 
bank_steuer              = 5;
zinsen_prozent           = 1;
zinsen_dauer             = 1200;
robenable              	 = true;     
Kontostand               = StartGeld; 
shopflagarray            = [shop1,shop2]; //[shop1,shop2,shop3,shop4];
bankflagarray            = [mainbank,copbank,copairbank,copairbank2,copswatbank,copsgtbank,copdispatchbank,copsheriffbank,copcmdbank,copcoastguardbank,atm1,atm2,atm3,atm4,atm5,atm6,atm7,atm8,atm10,atm11,atm12,atm13,atm14,donoratm,milpbank,ciabank,IRAatm,bhuntbank,atmswag,devatm,atmmall,atmsubfire];
speedcamarray            = [speed1,speed2,speed3,speed5,speed7,speed8,speed10,speed11,speed12,speed13,speed15,speed16,speed17,speed18,speed20]; //speed9//speed6//speed4//speed14//speed19
drugsellarray		 = [mdrugsell,cdrugsell,ldrugsell,hdrugsell,whalesell,methsell];
TankstellenArray         = 

[
fuelshop1,fuelshop2,fuelshop3,fuelshop4,fuelshop5,fuelshop6,fuelshop7,fuelshop8,fuelshop9
/*
(nearestobject[getpos fuelshop1,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop2,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop3,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop4,"Land_A_Fuelstation_Feed"]),
(nearestobject[getpos fuelshop5,"Land_A_Fuelstation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_benzina_schnell","Land_fuelstation_army"],20])
*/
];

