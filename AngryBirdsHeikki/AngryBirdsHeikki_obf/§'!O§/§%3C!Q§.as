package §'!O§
{
   import §-!"§.§=p§;
   import §2`§.HighscoreSidebar;
   import §3Y§.§4!_§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §9b§.§"!S§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   
   public class §<!Q§ extends §=j§
   {
      
      public static const §@o§:String = "LevelEndFailState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@o§ = "LevelEndFailState";
         }
      }
      
      private var §+!_§:§-k§;
      
      private var §[!`§:Array;
      
      public function §<!Q§(param1:Boolean = false, param2:String = "LevelEndFailState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§[!`§ = [];
            do
            {
               super(param1,param2);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            while(true)
            {
               §]!9§ = new §]!Q§(this);
               addr105:
               while(true)
               {
                  §]!9§.init(§;A§.§=I§.Views.View_LevelEndFail[0]);
                  addr88:
                  while(true)
                  {
                     this.§]!a§();
                  }
               }
            }
            addr108:
         }
         loop3:
         while(true)
         {
            this.§+!_§ = new §-k§(0,0,0,0);
            while(true)
            {
               if(_loc2_ || this)
               {
                  if(!_loc1_)
                  {
                     if(!_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr105);
                  }
                  break;
               }
               continue loop3;
            }
            §§goto(addr88);
         }
      }
      
      protected function §]!a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§[!`§);
            while(true)
            {
               §§pop().push(§]!9§.getItemByName("Button_Menu").x);
            }
            addr76:
         }
         loop1:
         while(true)
         {
            §§push(this.§[!`§);
            loop2:
            while(_loc1_)
            {
               §§pop().push(§]!9§.getItemByName("Button_Replay").x);
               while(!_loc2_)
               {
                  §§push(this.§[!`§);
                  if(!_loc2_)
                  {
                     §§pop().push(§]!9§.getItemByName("Button_Next").x);
                     if(!_loc1_)
                     {
                        §§goto(addr61);
                     }
                     return;
                  }
                  continue loop2;
               }
               continue loop1;
            }
            §§goto(addr76);
         }
      }
      
      protected function §3f§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §]!9§.getItemByName("Button_Menu").setVisibility(true);
            loop0:
            while(true)
            {
               §]!9§.getItemByName("Button_Replay").setVisibility(true);
               loop1:
               do
               {
                  if(!param1)
                  {
                     §]!9§.getItemByName("Button_Next").setVisibility(false);
                     loop2:
                     while(!(_loc3_ && _loc3_))
                     {
                        §]!9§.getItemByName("Button_Menu").x = this.§[!`§[0] + Math.abs(this.§[!`§[1] - this.§[!`§[0]) / 2;
                        do
                        {
                           §]!9§.getItemByName("Button_Replay").x = this.§[!`§[1] + Math.abs(this.§[!`§[2] - this.§[!`§[1]) / 2 + §]!9§.getItemByName("Button_Replay").width / 4;
                        }
                        while(_loc3_ && this);
                        
                        if(!(_loc3_ && this))
                        {
                           if(_loc2_)
                           {
                              addr24:
                              return;
                              addr74:
                           }
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 §]!9§.getItemByName("Button_Next").x = this.§[!`§[2];
                                 break loop2;
                              }
                              loop6:
                              while(_loc3_ && param1)
                              {
                                 while(true)
                                 {
                                    §]!9§.getItemByName("Button_Next").setVisibility(true);
                                    addr181:
                                    while(!_loc3_)
                                    {
                                       §]!9§.getItemByName("Button_Menu").x = this.§[!`§[0];
                                       continue loop6;
                                    }
                                    continue loop0;
                                 }
                              }
                              §]!9§.getItemByName("Button_Replay").x = this.§[!`§[1];
                           }
                           continue loop1;
                        }
                     }
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        §§goto(addr181);
                     }
                  }
                  §§goto(addr176);
               }
               while(!(_loc2_ || _loc3_));
               
               §§goto(addr24);
            }
         }
         §§goto(addr74);
      }
      
      override public function activate() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         if(_loc3_)
         {
            super.activate();
            while(true)
            {
               sHighscoreSidebar.enableHelpButton(false);
               loop1:
               for(; !(_loc2_ && this); if(!(_loc2_ && this))
               {
                  addr64:
                  return;
               })
               {
                  §"!S§.§-!7§.§%2§(true);
                  loop2:
                  while(true)
                  {
                     this.§+!_§.§4!?§(0.7);
                     addr70:
                     while(true)
                     {
                        this.§3f§(§4!_§.§]#§(§,4§.§;!4§()));
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr64);
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      override protected function setInitialState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            sHighscoreSidebar.selectedLevelName = §,4§.§0!$§;
            do
            {
               sHighscoreSidebar.changeState(HighscoreSidebar.§`!e§);
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §=p§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(mNextState.length > 0)
                  {
                     if(!_loc4_)
                     {
                        return §=p§.STATE_STATUS_COMPLETED;
                     }
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && param1))
                        {
                           break;
                        }
                        addr83:
                        return _loc2_;
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  return §=p§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr83);
         }
         §§goto(addr85);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.deActivate();
            do
            {
               this.§+!_§.§import§(0);
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc4_:* = param2;
         if(_loc5_ || this)
         {
            if("NEXT_LEVEL" === _loc4_)
            {
               if(!(_loc6_ && this))
               {
                  addr126:
                  §§push(0);
                  if(_loc6_ && param2)
                  {
                  }
               }
               else
               {
                  addr147:
                  §§push(2);
                  if(!_loc5_)
                  {
                  }
               }
               §§goto(addr165);
            }
            else
            {
               if("REPLAY" !== _loc4_)
               {
                  if("MENU" === _loc4_)
                  {
                     §§goto(addr147);
                  }
                  else
                  {
                     §§push(3);
                  }
                  addr165:
                  loop3:
                  switch(§§pop())
                  {
                     case 0:
                        §<r§.§4=§();
                        mNextState = §<r§.§@o§;
                        if(!(_loc6_ && param3))
                        {
                           break;
                        }
                        break;
                        addr97:
                     case 1:
                        §<r§.§0^§();
                        while(true)
                        {
                           if(_loc5_ || param2)
                           {
                              mNextState = §<r§.§@o§;
                              continue;
                           }
                           §§goto(addr97);
                        }
                        break;
                     case 2:
                        §&M§.§=!7§();
                        while(true)
                        {
                           if(_loc5_ || param2)
                           {
                              mNextState = §,L§.§[!;§;
                              if(_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    continue;
                                 }
                                 if(true)
                                 {
                                    break loop3;
                                 }
                              }
                              break loop3;
                           }
                           §§goto(addr48);
                           §§goto(addr30);
                        }
                  }
                  return;
               }
               if(!_loc6_)
               {
                  §§push(1);
                  if(_loc6_)
                  {
                  }
               }
               else
               {
                  §§goto(addr147);
               }
               §§goto(addr165);
            }
            §§goto(addr147);
         }
         §§goto(addr126);
      }
   }
}
