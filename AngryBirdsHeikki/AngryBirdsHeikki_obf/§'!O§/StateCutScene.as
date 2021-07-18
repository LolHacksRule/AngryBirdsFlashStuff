package §'!O§
{
   import §'!N§.§25§;
   import §-!"§.§=p§;
   import §7Z§.§%!b§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §^!5§.§,4§;
   
   public class StateCutScene extends §=j§
   {
      
      public static const §@o§:String = "StateCutScene";
      
      private static var §=!§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@o§ = "StateCutScene";
            do
            {
               §=!§ = false;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §=!_§:§%!b§;
      
      private var §7C§:Boolean;
      
      public function StateCutScene(param1:Boolean = true, param2:String = "StateCutScene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      public static function set §1c§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §=!§ = param1;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            loop0:
            while(true)
            {
               §4!N§ = new §-k§(75,0,0,1);
               while(true)
               {
                  §]!9§ = new §]!Q§(this);
                  loop2:
                  while(!_loc1_)
                  {
                     while(true)
                     {
                        §]!9§.init(§;A§.§=I§.Views.View_CutScene[0]);
                        if(!(_loc1_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      override protected function setInitialState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
            while(true)
            {
               §]!9§.getItemByName("Button_Tutorial").setVisibility(false);
               while(true)
               {
                  sHighscoreSidebar.enableCreditsButton(false);
                  §§goto(addr63);
               }
            }
         }
         addr63:
         while(true)
         {
            sHighscoreSidebar.enableLogOutButton(false);
            if(!(_loc2_ && _loc1_))
            {
               if(!_loc2_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr58:
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            while(true)
            {
               sHighscoreSidebar.enableHighScoreTab(true);
               loop1:
               while(true)
               {
                  this.§7C§ = false;
                  loop2:
                  while(true)
                  {
                     if(!§=!§)
                     {
                        while(true)
                        {
                           mNextState = §<r§.§@o§;
                           addr94:
                           while(!_loc2_)
                           {
                           }
                           continue loop1;
                        }
                        addr90:
                     }
                     loop5:
                     while(true)
                     {
                        (§]!9§.getItemByName("MovieClip_CutSceneHelmet") as §25§).§<v§("Start");
                        while(_loc1_ || _loc1_)
                        {
                           continue loop2;
                           while(!(_loc2_ && _loc2_))
                           {
                              (§]!9§.getItemByName("MovieClip_CutSceneHelmet") as §25§).setVisibility(true);
                              if(_loc2_)
                              {
                                 continue;
                              }
                              if(_loc1_)
                              {
                                 break loop5;
                              }
                              §§goto(addr90);
                           }
                        }
                        §§goto(addr94);
                     }
                  }
               }
            }
         }
      }
      
      private function §0![§() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§,4§.§<A§);
         if(_loc4_ || _loc1_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(§,4§.§?!>§().§4V§(_loc1_ + "-OUTRO"));
         if(_loc4_ || this)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr129:
                        while(true)
                        {
                           §§push(§,4§.§58§);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(!§§pop());
                           }
                           if(!_loc4_)
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           while(true)
                           {
                              §§push(§,4§.§0!$§);
                              addr109:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr110:
                                 while(true)
                                 {
                                    _loc1_ = §§pop();
                                 }
                              }
                           }
                           addr107:
                        }
                        loop5:
                        while(!_loc3_)
                        {
                           §§push(§,4§.§?!>§().§4V§(_loc1_ + "-INTRO"));
                           loop6:
                           while(!(_loc3_ && _loc1_))
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             continue loop7;
                                          }
                                          return §§pop();
                                          addr46:
                                       }
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr109);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr46);
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §]!9§.getItemByName("Button_Skip").setVisibility(false);
         }
         while(true)
         {
            §=!§ = false;
            while(_loc1_)
            {
               (§]!9§.getItemByName("MovieClip_CutSceneHelmet") as §25§).§<v§("Start");
               while(!(_loc2_ && _loc1_))
               {
                  super.deActivate();
                  if(_loc1_ || this)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         loop0:
         while(true)
         {
            var _loc4_:* = param2;
            if(_loc5_)
            {
               if("SKIP" === _loc4_)
               {
                  addr68:
                  §§push(0);
                  if(!_loc5_)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               loop2:
               switch(§§pop())
               {
                  case 0:
                     this.§7C§ = true;
                     while(true)
                     {
                        mNextState = §<n§.§@o§;
                        if(_loc6_)
                        {
                           break loop2;
                        }
                        if(!(_loc6_ && param2))
                        {
                           if(true)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                     }
               }
               return;
            }
            §§goto(addr68);
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §]!9§.getItemByName("Button_Skip").setVisibility(true);
            if(_loc4_)
            {
               if(this.§7C§)
               {
                  if(_loc3_)
                  {
                     §§goto(addr39);
                  }
               }
               §§goto(addr39);
            }
            return §=p§.STATE_STATUS_COMPLETED;
         }
         addr39:
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() == §=p§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  do
                  {
                     this.§'H§(§]!9§.getItemByName("MovieClip_CutSceneHelmet") as §25§,param1);
                     while(true)
                     {
                        if(!(_loc3_ && this))
                        {
                           if(mNextState.length <= 0)
                           {
                              break;
                           }
                           if(_loc3_ && this)
                           {
                              break;
                           }
                           if(_loc4_ || param1)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                     }
                     return §=p§.STATE_STATUS_RUNNING;
                  }
                  while(!_loc4_);
                  
                  §§goto(addr91);
               }
               return _loc2_;
            }
         }
         addr91:
         return §=p§.STATE_STATUS_COMPLETED;
      }
      
      private function §'H§(param1:§25§, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(!(_loc5_ && this))
         {
            if(param1.§&A§ == true)
            {
               loop0:
               while(true)
               {
                  §§push(param1.§>Z§(param2));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 if(§§pop() != "End")
                                 {
                                    break;
                                 }
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 addr68:
                                 if(_loc4_ || _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr65);
      }
   }
}
