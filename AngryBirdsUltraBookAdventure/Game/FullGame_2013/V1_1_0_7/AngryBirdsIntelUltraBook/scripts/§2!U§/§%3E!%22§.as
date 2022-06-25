package §2!U§
{
   import §"!i§.LevelManager;
   import §2y§.§[!i§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>!q§.§!^§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   
   public class §>!"§ extends §9![§
   {
      
      public static const §'!q§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §>!"§))
         {
            §'!q§ = "LevelEndFailStateRio";
         }
      }
      
      private var §`!%§:§!^§;
      
      public function §>!"§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
         }
         do
         {
            §'!Q§ = new §&!G§(this);
            do
            {
               §'!Q§.init(this.getViewXML());
            }
            while(_loc2_);
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      protected function getViewXML() : XML
      {
         return §2!z§.§ _§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(LevelManager.§8`§());
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(_loc1_));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr212:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc3_)
                                    {
                                       addr233:
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                       }
                                       addr235:
                                    }
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop10:
                                          while(!§§pop())
                                          {
                                             §§push(LevelManager.§7v§());
                                             if(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop10;
                                                   }
                                                   addr245:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop6;
                                                addr194:
                                             }
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue loop2;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      if(!(_loc2_ || this))
                                                      {
                                                         continue loop3;
                                                      }
                                                      (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
                                                      addr150:
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(true);
                                                         addr85:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               if(!(_loc2_ || _loc1_))
                                                               {
                                                                  continue loop4;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr166:
                                                            }
                                                            addr30:
                                                            return;
                                                         }
                                                      }
                                                   }
                                                   (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(false);
                                                   (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setVisibility(true);
                                                   §§goto(addr166);
                                                   addr175:
                                                   addr207:
                                                }
                                                §§goto(addr150);
                                             }
                                             else
                                             {
                                                (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(true);
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc1_))
                                                   {
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                }
                                                §§goto(addr175);
                                             }
                                          }
                                          (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
                                          §§goto(addr207);
                                       }
                                       §§goto(addr245);
                                    }
                                    continue loop1;
                                    addr236:
                                 }
                                 §§goto(addr233);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr235);
               }
            }
         }
         §§goto(addr157);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(false);
            do
            {
               (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setVisibility(false);
            }
            while(!_loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            while(true)
            {
               this.§`!%§ = new §!^§(0,0,0,0);
               while(true)
               {
                  §'!Q§.movieClip.addChildAt(this.§`!%§,§'!Q§.movieClip.numChildren - 1);
                  §§goto(addr87);
               }
            }
         }
         addr87:
         while(true)
         {
            this.showButtons();
            do
            {
               this.§`!%§.§^p§(0.7);
            }
            while(!_loc2_);
            
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_ || this)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr72:
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() == §9![§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     if(mNextState.length <= 0)
                     {
                        return §9![§.STATE_STATUS_RUNNING;
                     }
                     addr46:
                     if(!_loc3_)
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        §,!s§.§=!I§.clearLevel();
                        break;
                     }
                  }
                  if(_loc3_)
                  {
                     return §9![§.STATE_STATUS_COMPLETED;
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr46);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§`!%§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           if(§'!Q§.movieClip.contains(this.§`!%§))
                           {
                              while(true)
                              {
                                 §'!Q§.movieClip.removeChild(this.§`!%§);
                                 addr124:
                                 while(true)
                                 {
                                 }
                                 continue loop1;
                              }
                              addr119:
                           }
                           while(true)
                           {
                              §§push(this.§`!%§);
                              if(!_loc1_)
                              {
                                 continue loop1;
                              }
                              §§pop().clean();
                              while(!(_loc2_ && _loc2_))
                              {
                                 this.§`!%§ = null;
                                 while(_loc1_ || _loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.setButtonStates(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                continue;
                                             }
                                             §§goto(addr119);
                                          }
                                       }
                                       return;
                                       addr45:
                                       addr46:
                                    }
                                    continue loop0;
                                    if(_loc2_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr45);
                                 }
                              }
                           }
                        }
                        addr113:
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr46);
               }
            }
         }
         §§goto(addr113);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(param1);
            loop0:
            do
            {
               (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(param1);
               while(true)
               {
                  (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setComponentVisualState(param1);
                  while(_loc2_ || _loc3_)
                  {
                     (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setComponentVisualState(param1);
                     do
                     {
                        (§'!Q§.getItemByName("Button_MightyEagle") as §[!i§).setComponentVisualState(param1);
                     }
                     while(!(_loc2_ || param1));
                     
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc3_ && _loc3_);
            
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
      
      protected function §4>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3!;§.§9!G§();
         }
         do
         {
            mNextState = this.§0"#§();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            §§push("NEXT_LEVEL");
            if(_loc5_)
            {
               §§push(_loc4_);
               if(_loc5_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && param2))
                     {
                        §§push(0);
                        if(_loc6_ && param1)
                        {
                        }
                     }
                     else
                     {
                        addr178:
                        §§push(2);
                        if(_loc5_)
                        {
                           addr181:
                        }
                     }
                     §§goto(addr198);
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc5_ || param1)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && param1))
                        {
                           addr142:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§push(1);
                                 if(_loc6_ && this)
                                 {
                                 }
                                 §§goto(addr198);
                              }
                              else
                              {
                                 §§goto(addr178);
                              }
                           }
                           else
                           {
                              §§push("MENU");
                              if(!_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(!_loc6_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_ || param2)
                                       {
                                          §§goto(addr178);
                                       }
                                    }
                                    else
                                    {
                                       addr183:
                                       if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr198:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.§4>§();
                                                break;
                                                addr80:
                                             case 1:
                                                §3!;§.§0!1§();
                                                mNextState = this.§[!Q§();
                                                break;
                                                addr75:
                                                addr69:
                                             case 2:
                                                §-!Q§.§4!$§();
                                                addr54:
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr34:
                                                      mNextState = this.§8!X§();
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr80);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr75);
                                                }
                                                §§goto(addr69);
                                             case 3:
                                                AngryBirdsFP11.§'!g§.§]8§();
                                                if(_loc5_)
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr54);
                                                   }
                                                   §§goto(addr34);
                                                }
                                          }
                                          return;
                                          §§push(4);
                                       }
                                    }
                                    §§goto(addr198);
                                    §§goto(addr198);
                                 }
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr198);
                        }
                     }
                     §§goto(addr183);
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr183);
         }
         §§goto(addr178);
      }
      
      protected function §[!Q§() : String
      {
         return §3!;§.§'!q§;
      }
      
      protected function §8!X§() : String
      {
         return §2!=§.§'!q§;
      }
      
      protected function §0"#§() : String
      {
         return StateCutScene.§'!q§;
      }
   }
}
