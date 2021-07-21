package §1!F§
{
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §-!0§.§=J§;
   import §1j§.§=q§;
   import §5!`§.§%!Y§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §@!i§.§@!n§;
   
   public class §2!i§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateBS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "LevelEndFailStateBS";
         }
      }
      
      private var §7H§:§%!Y§;
      
      public function §2!i§(param1:Boolean = false, param2:String = "LevelEndFailStateBS")
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            if(!(_loc1_ && _loc1_))
            {
               §+!$§ = new §2U§(this);
               if(_loc2_)
               {
                  addr50:
                  §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndFailBS[0]);
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
            if(_loc2_)
            {
               §§goto(addr28);
            }
            §§goto(addr47);
         }
         addr28:
         §'!V§.pause();
         if(!(_loc1_ && _loc1_))
         {
            this.§7H§ = new §%!Y§(0,0,0,0);
            addr47:
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr72);
            }
            §§goto(addr88);
         }
         addr72:
         §+!$§.movieClip.addChildAt(this.§7H§,§+!$§.movieClip.numChildren - 1);
         if(_loc2_ || _loc2_)
         {
            addr88:
            this.§7H§.§#[§(0.7);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
            if(!_loc2_)
            {
               §§push(this.§7H§);
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(§+!$§.movieClip.contains(this.§7H§))
                     {
                        §+!$§.movieClip.removeChild(this.§7H§);
                        if(_loc1_)
                        {
                           addr62:
                           this.§7H§.clean();
                           §§goto(addr60);
                        }
                        this.§7H§ = null;
                     }
                     §§goto(addr60);
                  }
                  addr60:
                  if(_loc1_ || _loc2_)
                  {
                  }
                  return;
               }
               §§goto(addr62);
            }
         }
         §§goto(addr62);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_ || _loc2_)
                  {
                     §§goto(addr65);
                  }
               }
               if(mNextState.length > 0)
               {
                  if(!_loc3_)
                  {
                     return §;!!§.STATE_STATUS_COMPLETED;
                  }
                  §§goto(addr77);
               }
               §§goto(addr77);
            }
            addr65:
            return _loc2_;
         }
         addr77:
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            §§push("REPLAY");
            if(_loc5_ || param1)
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     addr107:
                     §§push(0);
                  }
                  else
                  {
                     §§push("MENU");
                     if(!_loc6_)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && param3))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc6_ && param3)
                              {
                                 addr153:
                                 §§push(3);
                                 if(_loc6_)
                                 {
                                 }
                              }
                              §§goto(addr194);
                           }
                           else
                           {
                              §§push("FULLSCREEN_BUTTON");
                              if(!_loc6_)
                              {
                                 addr133:
                                 §§push(_loc4_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       addr194:
                                       switch(1)
                                       {
                                          case 0:
                                             §@!n§.§!=§(StatePlayBS.STATE_NAME);
                                             if(!(_loc6_ && param1))
                                             {
                                                mNextState = §@!n§.STATE_NAME;
                                                break;
                                             }
                                             addr80:
                                             break;
                                          case 1:
                                             §-!D§.§?5§("onLevelMenuOpened");
                                             if(_loc5_)
                                             {
                                                mNextState = §6+§.STATE_NAME;
                                                if(_loc5_ || param3)
                                                {
                                                   break;
                                                }
                                                break;
                                             }
                                             addr68:
                                             break;
                                          case 2:
                                             §-!D§.§?5§("onFullscreenToggle");
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             §§goto(addr68);
                                             break;
                                          case 3:
                                             §-!D§.§?5§("onLevelLiked");
                                             break;
                                          case 4:
                                             §-!D§.§?5§("onLevelShared");
                                             §§goto(addr68);
                                          case 5:
                                             §-!D§.§?5§("onNextLevel");
                                             break;
                                          default:
                                             super.uiInteractionHandler(param1,param2,param3);
                                             §§goto(addr80);
                                       }
                                       return;
                                       §§push(2);
                                    }
                                    else
                                    {
                                       §§push("LIKE");
                                       if(!_loc6_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc5_ || this)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr153);
                                                }
                                                §§goto(addr194);
                                             }
                                             else
                                             {
                                                §§push("SHARE");
                                                if(!_loc6_)
                                                {
                                                   addr170:
                                                   §§push(_loc4_);
                                                   if(_loc5_)
                                                   {
                                                      addr173:
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§push(4);
                                                            if(_loc6_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr187:
                                                         if("NEXT" !== _loc4_)
                                                         {
                                                            §§goto(addr194);
                                                            §§push(6);
                                                         }
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                }
                                                §§goto(addr187);
                                             }
                                             §§push(5);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr187);
                           }
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr194);
               }
               §§goto(addr187);
            }
            §§goto(addr133);
         }
         §§goto(addr107);
      }
      
      public function §-w§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(§=q§.§?!2§);
            if(_loc2_ || this)
            {
               if(§§pop() is §=J§)
               {
               }
               §§goto(addr58);
            }
            (§§pop() as §=J§).§'!t§ = 1;
         }
         addr58:
         if(!(_loc3_ && _loc2_))
         {
            §§push(§=q§.§?!2§);
         }
      }
   }
}
