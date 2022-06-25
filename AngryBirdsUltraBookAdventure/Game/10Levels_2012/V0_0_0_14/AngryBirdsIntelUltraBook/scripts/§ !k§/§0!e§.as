package § !k§
{
   import §!!§.LevelManager;
   import §06§.§9!b§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§,c§;
   
   public class §0!e§ extends §+_§
   {
      
      public static const §3F§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §3F§ = "LevelEndFailStateRio";
         }
      }
      
      private var §++§:§9!b§;
      
      public function §0!e§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
         }
         do
         {
            §`-§ = new § C§(this);
            do
            {
               §`-§.init(this.getViewXML());
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
      
      protected function getViewXML() : XML
      {
         return dynamic.§[6§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(LevelManager.§=L§());
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            §§push(Boolean(_loc1_));
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
                              addr198:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr101:
                                       if(_loc2_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       if(!§§pop())
                                       {
                                          (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(true);
                                          loop13:
                                          for(; !(_loc2_ && _loc3_); (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(false),if(!(_loc3_ || _loc1_))
                                          {
                                             continue;
                                          },if(!_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                addr186:
                                                (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
                                                (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(false);
                                                §§goto(addr151);
                                                addr193:
                                             }
                                             §§goto(addr26);
                                          },§§goto(addr193))
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   addr151:
                                                   (§`-§.getItemByName("Button_MightyEagle") as §,c§).setVisibility(true);
                                                }
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   addr26:
                                                   return;
                                                   addr142:
                                                }
                                                continue loop4;
                                             }
                                             addr119:
                                             addr119:
                                             while(true)
                                             {
                                                (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
                                                addr126:
                                                while(true)
                                                {
                                                   (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(true);
                                                   break loop13;
                                                }
                                             }
                                          }
                                          while(_loc2_)
                                          {
                                             §§goto(addr126);
                                          }
                                          if(!(_loc3_ || this))
                                          {
                                             continue loop3;
                                          }
                                          §§goto(addr26);
                                       }
                                       §§goto(addr119);
                                    }
                                 }
                                 addr219:
                                 while(!_loc2_)
                                 {
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc3_ || _loc3_))
                     {
                        continue loop1;
                     }
                     if(!§§pop())
                     {
                        §§goto(addr231);
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr91);
               }
            }
         }
         §§goto(addr119);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(false);
            do
            {
               (§`-§.getItemByName("Button_MightyEagle") as §,c§).setVisibility(false);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            while(true)
            {
               this.§++§ = new §9!b§(0,0,0,0);
               loop1:
               for(; _loc2_ || _loc1_; if(_loc1_ && _loc1_)
               {
                  continue;
               },§§goto(addr64))
               {
                  §`-§.movieClip.addChildAt(this.§++§,§`-§.movieClip.numChildren - 1);
                  loop2:
                  while(true)
                  {
                     this.showButtons();
                     while(true)
                     {
                        if(_loc2_ || this)
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr64:
                        this.§++§.§&!f§(0.7);
                        if(!(_loc1_ && _loc1_))
                        {
                           return;
                           addr36:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §+_§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     if(!(_loc3_ && _loc2_))
                     {
                        §4!]§.§8C§.clearLevel();
                        return §+_§.STATE_STATUS_COMPLETED;
                     }
                  }
                  §§goto(addr27);
               }
               return _loc2_;
            }
         }
         addr27:
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§++§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        this.setButtonStates(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                        addr59:
                        loop8:
                        while(_loc2_ || _loc2_)
                        {
                           if(_loc2_)
                           {
                              this.hideButtons();
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break loop7;
                                 }
                                 §§goto(addr115);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§++§ = null;
                                    break loop8;
                                 }
                                 addr97:
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        while(!_loc1_)
                        {
                           while(true)
                           {
                              continue loop7;
                           }
                           §§goto(addr59);
                        }
                     }
                     return;
                  }
                  addr120:
                  if(!(_loc1_ && _loc2_))
                  {
                     if(!§`-§.movieClip.contains(this.§++§))
                     {
                        continue;
                     }
                  }
                  while(true)
                  {
                     §`-§.movieClip.removeChild(this.§++§);
                  }
                  addr115:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            (§`-§.getItemByName("Button_Menu") as §,c§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§`-§.getItemByName("Button_Replay") as §,c§).setComponentVisualState(param1);
               loop1:
               while(true)
               {
                  (§`-§.getItemByName("Button_NextLevel") as §,c§).setComponentVisualState(param1);
                  while(true)
                  {
                     (§`-§.getItemByName("Button_CutScene") as §,c§).setComponentVisualState(param1);
                     loop3:
                     while(!(_loc2_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              (§`-§.getItemByName("Button_MightyEagle") as §,c§).setComponentVisualState(param1);
                              if(!(_loc2_ && param1))
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param2))
         {
            §§push("NEXT_LEVEL");
            if(!_loc6_)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        addr115:
                        §§push(0);
                        if(!_loc5_)
                        {
                           addr141:
                        }
                     }
                     else
                     {
                        addr173:
                        §§push(3);
                        if(!(_loc6_ && param1))
                        {
                           addr181:
                        }
                     }
                     §§goto(addr186);
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(!(_loc6_ && param3))
                     {
                        §§push(_loc4_);
                        if(_loc5_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_ || this)
                              {
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                    §§goto(addr141);
                                 }
                                 else
                                 {
                                    addr169:
                                 }
                              }
                              else
                              {
                                 §§goto(addr173);
                              }
                              §§goto(addr186);
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc5_ || param1)
                              {
                                 addr160:
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr172);
                              }
                              addr171:
                              addr172:
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr173);
                              }
                              else
                              {
                                 §§push(4);
                              }
                              addr186:
                              switch(§§pop())
                              {
                                 case 0:
                                    §%]§.§]!b§();
                                    mNextState = this.§9!1§();
                                    break;
                                    addr78:
                                    addr73:
                                 case 1:
                                    §%]§.§=>§();
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr78);
                                    }
                                    break;
                                 case 2:
                                    §6!H§.§[!W§();
                                    if(_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          addr27:
                                          mNextState = this.§"q§();
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          break;
                                       }
                                       §§goto(addr73);
                                    }
                                    break;
                                 case 3:
                                    AngryBirdsFP11.§`!c§.§catch§();
                                    if(_loc5_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr27);
                                    }
                              }
                              return;
                              §§push(_loc4_);
                           }
                           §§goto(addr173);
                        }
                        if(§§pop() === §§pop())
                        {
                           if(!_loc6_)
                           {
                              §§push(2);
                              if(!_loc6_)
                              {
                                 §§goto(addr169);
                              }
                              else
                              {
                                 §§goto(addr181);
                              }
                           }
                           else
                           {
                              §§goto(addr173);
                           }
                           §§goto(addr186);
                        }
                        else
                        {
                           §§push("FULLSCREEN_BUTTON");
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr171);
                  }
               }
               §§goto(addr172);
            }
            §§goto(addr160);
         }
         §§goto(addr115);
      }
      
      protected function set() : String
      {
         return §%]§.§3F§;
      }
      
      protected function §"q§() : String
      {
         return §6!U§.§3F§;
      }
      
      protected function §9!1§() : String
      {
         return StateCutScene.§3F§;
      }
   }
}
