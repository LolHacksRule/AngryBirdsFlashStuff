package §_-ad§
{
   import §_-0Ar§.§_-0AO§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-Mu§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   
   public class §_-rF§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §_-pk§ = "LevelEndFailStateRio";
         }
      }
      
      private var §_-ny§:§_-0AO§;
      
      public function §_-rF§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
            while(true)
            {
               §_-s0§ = new §_-5q§(this);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §_-s0§.init(this.getViewXML());
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
      
      protected function getViewXML() : XML
      {
         return §_-vB§.§_-ky§.Views.View_LevelEndFailRio[0];
      }
      
      protected function showButtons() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(LevelManager.§_-xE§());
         if(!(_loc2_ && _loc3_))
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
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr234:
                        loop15:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           loop16:
                           while(true)
                           {
                              §§push(_loc1_);
                              loop17:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 if(!_loc2_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr214:
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc3_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr227:
                                                      while(true)
                                                      {
                                                         §§push(AngryBirdsFP11.sUserProgress);
                                                         if(_loc3_)
                                                         {
                                                            §§push(LevelManager.§_-HM§);
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop().§_-Z3§(§§pop()));
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     do
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                     while(!_loc2_);
                                                                     
                                                                     continue loop4;
                                                                     addr175:
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop15;
                                                               addr172:
                                                            }
                                                            continue loop17;
                                                         }
                                                         continue loop16;
                                                      }
                                                      continue loop16;
                                                   }
                                                   §§goto(addr214);
                                                   addr226:
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setVisibility(false);
                                                         addr188:
                                                         while(true)
                                                         {
                                                            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(false);
                                                            loop13:
                                                            while(true)
                                                            {
                                                               (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setVisibility(true);
                                                               addr141:
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  break loop9;
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(LevelManager.§_-z2§());
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                   }
                                                   §§goto(addr175);
                                                }
                                                addr31:
                                                return;
                                             }
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       addr216:
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr214);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr216);
               }
            }
         }
         §§goto(addr234);
      }
      
      protected function hideButtons() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setVisibility(false);
         }
         do
         {
            (§_-s0§.getItemByName("Button_MightyEagle") as §_-Mu§).setVisibility(false);
         }
         while(!_loc1_);
         
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
               this.§_-ny§ = new §_-0AO§(0,0,0,0);
               while(!_loc2_)
               {
                  §_-s0§.movieClip.addChildAt(this.§_-ny§,§_-s0§.movieClip.numChildren - 1);
                  loop2:
                  while(_loc1_)
                  {
                     this.showButtons();
                     while(true)
                     {
                        this.§_-ny§.§_-Zs§(0.7);
                        if(_loc1_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr61);
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
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     § in§.§_-Dc§.clearLevel();
                     if(_loc3_)
                     {
                        return §_-nG§.STATE_STATUS_COMPLETED;
                     }
                  }
                  return §_-nG§.STATE_STATUS_RUNNING;
                  addr31:
               }
               return _loc2_;
            }
         }
         §§goto(addr31);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
            loop0:
            while(true)
            {
               §§push(this.§_-ny§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     continue loop0;
                  }
                  loop8:
                  while(true)
                  {
                     this.setButtonStates(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     addr44:
                     loop9:
                     while(!_loc1_)
                     {
                        this.hideButtons();
                        if(_loc1_)
                        {
                           continue;
                        }
                        addr29:
                        if(_loc2_ || this)
                        {
                           if(_loc2_)
                           {
                              break loop8;
                           }
                        }
                        else
                        {
                           loop6:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    this.§_-ny§ = null;
                                    break loop9;
                                 }
                                 continue loop0;
                              }
                              addr110:
                              while(true)
                              {
                                 §_-s0§.movieClip.removeChild(this.§_-ny§);
                                 break loop6;
                              }
                              §§goto(addr29);
                           }
                           addr73:
                        }
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     while(true)
                     {
                        continue loop8;
                        §§goto(addr44);
                     }
                  }
               }
            }
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(param1);
            loop0:
            while(true)
            {
               (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(param1);
               while(true)
               {
                  (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setComponentVisualState(param1);
                  continue loop0;
                  addr33:
                  if(!(_loc3_ && param1))
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         while(true)
         {
            (§_-s0§.getItemByName("Button_CutScene") as §_-Mu§).setComponentVisualState(param1);
            §§goto(addr59);
         }
         §§goto(addr40);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("NEXT_LEVEL");
            if(!(_loc5_ && param3))
            {
               §§push(_loc4_);
               if(_loc6_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr182:
                        §§push(2);
                        if(_loc6_)
                        {
                           addr185:
                        }
                     }
                  }
                  else
                  {
                     §§push("REPLAY");
                     if(_loc6_ || param3)
                     {
                        §§push(_loc4_);
                        if(!(_loc5_ && param1))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_ || param3)
                              {
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                    §§goto(addr197);
                                 }
                                 else
                                 {
                                    §§goto(addr185);
                                 }
                              }
                              else
                              {
                                 §§goto(addr182);
                              }
                           }
                           else
                           {
                              §§push("MENU");
                              if(_loc6_ || param3)
                              {
                              }
                              addr188:
                              if(§§pop() === _loc4_)
                              {
                                 addr189:
                                 §§push(3);
                                 if(_loc5_)
                                 {
                                 }
                                 §§goto(addr197);
                              }
                              else
                              {
                                 addr197:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       §_-MG§.§_-4t§();
                                       mNextState = this.§_-k§();
                                       addr79:
                                       break;
                                       addr79:
                                       addr84:
                                    case 1:
                                       §_-MG§.§_-0Eg§();
                                       loop0:
                                       while(true)
                                       {
                                          mNextState = this.§_-03M§();
                                          addr63:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                break loop0;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       §§goto(addr79);
                                       break;
                                    case 2:
                                       §_-pX§.§_-j4§();
                                       loop1:
                                       while(true)
                                       {
                                          addr44:
                                          while(true)
                                          {
                                             mNextState = this.§_-tz§();
                                             continue loop1;
                                          }
                                       }
                                       break;
                                    case 3:
                                       AngryBirdsFP11.§_-07§.§_-0De§();
                                       if(!(_loc5_ && this))
                                       {
                                          if(_loc6_ || this)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr44);
                                                }
                                                else
                                                {
                                                   §§goto(addr84);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr63);
                                             }
                                             §§goto(addr79);
                                          }
                                          §§goto(addr49);
                                       }
                                 }
                                 return;
                                 §§push(4);
                              }
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr188);
                     }
                     §§push(_loc4_);
                     if(_loc6_ || this)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr182);
                           }
                           §§goto(addr197);
                        }
                        else
                        {
                           §§goto(addr188);
                           §§push("FULLSCREEN_BUTTON");
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr197);
               }
            }
            §§goto(addr188);
         }
         §§goto(addr182);
      }
      
      protected function §_-03M§() : String
      {
         return §_-MG§.§_-pk§;
      }
      
      protected function §_-tz§() : String
      {
         return §_-UO§.§_-pk§;
      }
      
      protected function §_-k§() : String
      {
         return StateCutScene.§_-pk§;
      }
   }
}
