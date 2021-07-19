package § C§
{
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §>-§.§6H§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   
   public class §+!"§ extends §-§
   {
      
      public static const §?B§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?B§ = "LevelEndFailStateRio";
         }
      }
      
      private var §^!D§:§6H§;
      
      public function §+!"§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.init();
            do
            {
               §,R§ = new §#H§(this);
               do
               {
                  §,R§.init(this.getViewXML());
               }
               while(!(_loc1_ || this));
               
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      protected function getViewXML() : XML
      {
         return §set §.§&!1§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§0$§.§?W§());
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §§push(Boolean(_loc1_));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc2_ && _loc2_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 §§push(AngryBirdsFP11.§64§);
                                 if(!(_loc3_ || _loc1_))
                                 {
                                    break;
                                 }
                                 §§push(§0$§.§[C§);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop().isLevelPassed(§§pop()));
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       addr169:
                                       while(_loc3_ || _loc1_)
                                       {
                                       }
                                       continue loop4;
                                    }
                                    addr168:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop().isLevelOpen(§§pop()));
                                       continue loop0;
                                    }
                                    addr200:
                                 }
                                 addr93:
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue loop0;
                                 }
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(true);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(false);
                                       }
                                       else
                                       {
                                          addr65:
                                          if(_loc3_ || _loc1_)
                                          {
                                             if(!(_loc3_ || this))
                                             {
                                                addr125:
                                                (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(false);
                                                (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(true);
                                                §§goto(addr65);
                                                addr132:
                                             }
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr26);
                                                }
                                                else
                                                {
                                                   addr229:
                                                }
                                                while(true)
                                                {
                                                   §§push(AngryBirdsFP11.§64§);
                                                   break loop5;
                                                }
                                                addr229:
                                             }
                                             else
                                             {
                                                (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(false);
                                                (§,R§.getItemByName("Button_MightyEagle") as §^P§).setVisibility(true);
                                                addr185:
                                                if(_loc2_)
                                                {
                                                   addr178:
                                                   (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(false);
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr26);
                                             }
                                             §§goto(addr26);
                                          }
                                          §§goto(addr132);
                                       }
                                       addr26:
                                       return;
                                    }
                                    §§goto(addr125);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                    addr228:
                                 }
                                 §§goto(addr229);
                              }
                              while(true)
                              {
                                 §§goto(addr200);
                              }
                           }
                           while(!§§pop())
                           {
                              §§push(§0$§.§;e§());
                              if(_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr93);
                                 }
                                 §§goto(addr168);
                              }
                              §§goto(addr169);
                           }
                           §§goto(addr178);
                        }
                        continue loop1;
                     }
                     addr211:
                  }
                  §§goto(addr228);
               }
            }
         }
         §§goto(addr229);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(false);
            do
            {
               (§,R§.getItemByName("Button_MightyEagle") as §^P§).setVisibility(false);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            while(true)
            {
               this.§^!D§ = new §6H§(0,0,0,0);
               while(_loc1_ || this)
               {
                  §,R§.movieClip.addChildAt(this.§^!D§,§,R§.movieClip.numChildren - 1);
                  do
                  {
                     this.showButtons();
                     do
                     {
                        this.§^!D§.§@2§(0.7);
                     }
                     while(_loc2_ && _loc1_);
                     
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return;
                  addr59:
               }
            }
         }
         §§goto(addr59);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() == §-§.STATE_STATUS_RUNNING)
               {
                  if(mNextState.length <= 0)
                  {
                     return §-§.STATE_STATUS_RUNNING;
                  }
                  if(_loc3_)
                  {
                     §[o§.§='§.clearLevel();
                     return §-§.STATE_STATUS_COMPLETED;
                  }
                  addr90:
                  §§push(_loc2_);
               }
               §§goto(addr90);
            }
            return §§pop();
         }
         §§goto(addr90);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.deActivate();
         loop0:
         while(true)
         {
            §§push(this.§^!D§);
            loop1:
            while(true)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     if(§,R§.movieClip.contains(this.§^!D§))
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        §,R§.movieClip.removeChild(this.§^!D§);
                        while(true)
                        {
                           addr63:
                           this.hideButtons();
                           if(!(_loc1_ || _loc1_))
                           {
                              continue;
                           }
                           if(_loc2_ && this)
                           {
                              continue loop2;
                           }
                           return;
                           addr38:
                        }
                     }
                     while(true)
                     {
                        §§push(this.§^!D§);
                        if(!_loc1_)
                        {
                           break;
                        }
                        §§pop().clean();
                        loop5:
                        while(true)
                        {
                           this.§^!D§ = null;
                           while(true)
                           {
                              addr49:
                              while(true)
                              {
                                 this.setButtonStates(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr63);
                              }
                              §§goto(addr38);
                           }
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
               §§goto(addr49);
            }
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            (§,R§.getItemByName("Button_Menu") as §^P§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§,R§.getItemByName("Button_Replay") as §^P§).setComponentVisualState(param1);
               do
               {
                  (§,R§.getItemByName("Button_NextLevel") as §^P§).setComponentVisualState(param1);
                  do
                  {
                     (§,R§.getItemByName("Button_CutScene") as §^P§).setComponentVisualState(param1);
                     continue loop0;
                  }
                  while(!_loc3_);
                  
               }
               while(!_loc3_);
               
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            §§push("NEXT_LEVEL");
            if(_loc5_ || param3)
            {
               §§push(_loc4_);
               if(_loc5_ || param3)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(_loc6_ && this)
                        {
                        }
                     }
                     else
                     {
                        addr142:
                        §§push(1);
                        if(_loc6_ && param1)
                        {
                           addr188:
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc5_ || param3)
                     {
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr142);
                              }
                              §§goto(addr200);
                           }
                           else
                           {
                              §§push("MENU");
                              if(!(_loc6_ && param1))
                              {
                                 addr159:
                                 §§push(_loc4_);
                                 if(!(_loc6_ && param2))
                                 {
                                    addr177:
                                    if(§§pop() === §§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          addr180:
                                          §§push(2);
                                          if(_loc5_ || param3)
                                          {
                                             §§goto(addr188);
                                          }
                                       }
                                       else
                                       {
                                          addr192:
                                          §§push(3);
                                          if(_loc6_)
                                          {
                                          }
                                       }
                                       §§goto(addr200);
                                    }
                                    else
                                    {
                                       addr190:
                                       §§push("FULLSCREEN_BUTTON");
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr192);
                                 }
                                 if(§§pop() !== §§pop())
                                 {
                                    addr200:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §7!6§.§2v§();
                                          mNextState = this.§@e§();
                                          break;
                                          addr77:
                                       case 1:
                                          §7!6§.§<!G§();
                                          mNextState = this.§`^§();
                                          break;
                                          addr71:
                                          addr65:
                                       case 2:
                                          §@6§.§&t§();
                                          addr32:
                                          mNextState = this.§[9§();
                                          if(!_loc6_)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   break;
                                                }
                                                §§goto(addr77);
                                             }
                                             else
                                             {
                                                §§goto(addr71);
                                             }
                                          }
                                          §§goto(addr65);
                                       case 3:
                                          AngryBirdsFP11.§?L§.§,!!§();
                                          if(_loc5_ || this)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr32);
                                          }
                                          §§goto(addr32);
                                    }
                                    return;
                                    §§push(4);
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr190);
                           }
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr200);
               }
               §§goto(addr177);
            }
            §§goto(addr190);
         }
         §§goto(addr180);
      }
      
      protected function §`^§() : String
      {
         return §7!6§.§?B§;
      }
      
      protected function §[9§() : String
      {
         return §4t§.§?B§;
      }
      
      protected function §@e§() : String
      {
         return StateCutScene.§?B§;
      }
   }
}
