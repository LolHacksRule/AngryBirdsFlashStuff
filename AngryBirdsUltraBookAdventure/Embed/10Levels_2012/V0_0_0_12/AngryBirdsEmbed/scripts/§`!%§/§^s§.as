package §`!%§
{
   import § !;§.§%'§;
   import § !;§.§^!3§;
   import §"!5§.§,!!§;
   import §%x§.§#;§;
   import §&p§.§'_§;
   import §'X§.§9[§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=!4§.§7!1§;
   import §=!4§.§>y§;
   import §=^§.§ p§;
   import §>!C§.§6M§;
   import §>!C§.§9R§;
   import §>l§.§8!9§;
   import §?!D§.§if§;
   import §@s§.§'!0§;
   
   public class §^s§ extends StatePlay
   {
      
      private static const §55§:Number = -5000.0;
      
      private static const §!0§:Number = 10000.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §55§ = -5 * 1000;
            if(_loc2_ || _loc2_)
            {
               §!0§ = 10 * 1000;
            }
         }
      }
      
      private var §<!?§:int = 0;
      
      private var §;0§:Number = -5000.0;
      
      private var §&J§:int = 0;
      
      private var §6J§:Number = 0;
      
      private var §8! §:Number = 0;
      
      public function §^s§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super(param1,param3);
            if(!_loc4_)
            {
               addr30:
               this.§<!?§ = param2;
            }
            return;
         }
         §§goto(addr30);
      }
      
      override protected function getGameLogicController(param1:§#;§) : §if§
      {
         return new §8!9§(param1);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.levelStarted();
            if(!(_loc1_ && _loc2_))
            {
               §%'§.§#r§(§^!3§.§2!,§,§6M§.§[z§);
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            § !G§ = true;
            if(_loc2_)
            {
               addr39:
               §#!4§ = new §!!1§(this);
               if(!_loc1_)
               {
                  §#!4§.init(§0!&§.§'^§.Views.View_FacebookLevelPlay[0]);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_ || _loc2_)
         {
            super.activate();
            if(_loc4_ || this)
            {
               addr35:
               this.§8v§();
            }
            var _loc1_:§9R§ = §6M§.§ r§(§6M§.§[z§);
            if(_loc1_)
            {
               if(!_loc3_)
               {
                  §§push(_loc1_.§,!%§());
                  if(_loc4_)
                  {
                     §§push(int(§§pop()));
                     if(!_loc3_)
                     {
                        _loc2_ = §§pop();
                        if(§,!!§.§;4§.slingshot)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§,!!§.§;4§.slingshot.§^! §());
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(int(§§pop() + §§pop()));
                                 if(_loc4_)
                                 {
                                    addr92:
                                    _loc2_ = §§pop();
                                    this.§<!?§ = Math.min(this.§<!?§,_loc2_);
                                    if(_loc4_ || _loc1_)
                                    {
                                       addr109:
                                       addr110:
                                       addr107:
                                       if(this.§<!?§ > 0)
                                       {
                                          (§#!4§.getItemByName("TextField_HighScore") as § p§).setText(this.§<!?§.toString());
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             addr151:
                                             return;
                                             addr137:
                                          }
                                          §§goto(addr151);
                                       }
                                       else
                                       {
                                          §#!4§.getItemByName("Container_HiscoreContainer").setVisibility(false);
                                       }
                                       §#!4§.getItemByName("Container_LevelscoreContainer").y = §#!4§.getItemByName("Container_HiscoreContainer").y;
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr110);
                           }
                        }
                        §§goto(addr92);
                     }
                  }
                  §§goto(addr109);
               }
               §§goto(addr137);
            }
            §§goto(addr107);
         }
         §§goto(addr35);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.deActivate();
            if(!(_loc2_ && _loc2_))
            {
               this.§9!%§();
               if(_loc1_ || _loc1_)
               {
                  this.§8v§();
               }
            }
         }
      }
      
      private function §9!%§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(_loc4_)
         {
            if(this.§;0§ > §!0§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_ = Math.round(1000 / this.§;0§ * this.§&J§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§6M§.§[z§);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        addr81:
                        §%'§.§,!?§(_loc1_,_loc2_,§'_§.§;'§);
                     }
                  }
               }
               §§goto(addr81);
            }
            return;
         }
         §§goto(addr81);
      }
      
      private function §?E§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(this);
            §§push(this.§;0§);
            if(_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§;0§ = §§pop();
            §§push(this.§;0§);
            if(_loc5_ || _loc3_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        var _loc2_:*;
                        §§push((_loc2_ = this).§&J§);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc5_ || this)
                        {
                           _loc2_.§&J§ = _loc3_;
                        }
                        if(!_loc4_)
                        {
                           addr89:
                           §§push(this.§6J§);
                           if(!(_loc4_ && param1))
                           {
                              addr98:
                              §§push(§,!!§.§[i§());
                              if(_loc5_ || _loc3_)
                              {
                                 §§goto(addr117);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr89);
               }
               addr117:
               §§push(§§pop() == §§pop());
               if(!(_loc4_ && _loc2_))
               {
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              addr139:
                              addr137:
                              §§push(this.§8! § == §,!!§.§#9§());
                              if(_loc4_)
                              {
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr144);
                        }
                        §§push(!§§pop());
                     }
                  }
               }
               addr143:
               if(§§pop())
               {
                  addr144:
                  this.§8v§();
               }
               return;
            }
            §§goto(addr98);
         }
         §§goto(addr89);
      }
      
      private function §8v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§;0§ = §55§;
            if(_loc1_)
            {
               this.§&J§ = 0;
               if(!(_loc2_ && _loc2_))
               {
                  this.§6J§ = §,!!§.§[i§();
                  if(!(_loc2_ && _loc2_))
                  {
                     addr69:
                     this.§8! § = §,!!§.§#9§();
                  }
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      override protected function initMightyEagleButton() : void
      {
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function levelCompleted() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.levelCompleted();
         }
         §§push(§6M§.§[z§);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §3K§.getScore();
         if(!(_loc3_ && _loc2_))
         {
            §%'§.§#r§(§^!3§.§]m§,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            §§push("CLOSE_TUTORIAL_POWERUP");
            if(!(_loc5_ && param1))
            {
               §§push(_loc4_);
               if(_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr139:
                        §§push(2);
                        if(_loc6_ || param3)
                        {
                        }
                     }
                     §§goto(addr182);
                  }
                  else
                  {
                     §§push("POWERUP");
                     if(!(_loc5_ && param1))
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc5_ && param1))
                              {
                                 addr121:
                                 §§push(1);
                                 if(!_loc6_)
                                 {
                                 }
                                 §§goto(addr182);
                              }
                              else
                              {
                                 §§goto(addr139);
                              }
                           }
                           else
                           {
                              §§push("FULLSCREEN_BUTTON");
                              if(!_loc5_)
                              {
                                 addr128:
                                 §§push(_loc4_);
                                 if(!_loc5_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          §§goto(addr139);
                                       }
                                       else
                                       {
                                          addr167:
                                          §§push(3);
                                          if(_loc5_)
                                          {
                                             addr177:
                                          }
                                          §§goto(addr182);
                                       }
                                    }
                                    else
                                    {
                                       §§push("ZOOM_IN");
                                       if(!_loc5_)
                                       {
                                          addr161:
                                          §§push(_loc4_);
                                          if(_loc5_)
                                          {
                                          }
                                          addr173:
                                          if(§§pop() === §§pop())
                                          {
                                             addr174:
                                             §§push(4);
                                             if(_loc6_)
                                             {
                                                §§goto(addr177);
                                             }
                                             §§goto(addr182);
                                          }
                                          else
                                          {
                                             addr182:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   §7!1§.§3!;§();
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   addr47:
                                                   break;
                                                case 1:
                                                   §>y§.§]>§(true);
                                                   if(_loc6_ || param1)
                                                   {
                                                      break;
                                                   }
                                                   addr52:
                                                   break;
                                                case 2:
                                                   §>y§.§]>§(false);
                                                   if(_loc5_ && param1)
                                                   {
                                                      addr64:
                                                      break;
                                                   }
                                                   §§goto(addr47);
                                                   break;
                                                case 3:
                                                   §3K§.doUserZoom(true);
                                                   §§goto(addr52);
                                                case 4:
                                                   §3K§.doUserZoom(false);
                                                   break;
                                                default:
                                                   super.uiInteractionHandler(param1,param2,param3);
                                                   §§goto(addr64);
                                             }
                                             return;
                                             §§push(5);
                                          }
                                          §§goto(addr182);
                                       }
                                       addr172:
                                       §§goto(addr173);
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr182);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§goto(addr167);
                                    }
                                    §§goto(addr182);
                                 }
                                 else
                                 {
                                    §§goto(addr172);
                                    §§push("ZOOM_OUT");
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr172);
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr128);
                  }
               }
               §§goto(addr173);
            }
            §§goto(addr161);
         }
         §§goto(addr121);
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = §3K§.getScore();
         var _loc3_:int = §=!@§.getValue();
         if(_loc5_)
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               if(§§pop() < _loc2_)
               {
                  if(_loc5_ || _loc2_)
                  {
                     addr69:
                     _loc3_ = Math.min(_loc2_,§=!@§.getValue() + param1 * §"2§);
                     if(_loc4_)
                     {
                     }
                     addr77:
                     (§#!4§.getItemByName("TextField_CurrentScore") as § p§).setText(_loc3_.toString());
                     §§goto(addr85);
                  }
                  §=!@§.assign(_loc3_);
                  if(!_loc5_)
                  {
                  }
                  addr85:
                  return;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr69);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.run(param1);
            if(!(_loc3_ && param1))
            {
               addr38:
               this.§?E§(param1);
               if(_loc2_)
               {
                  §§goto(addr43);
               }
               §§goto(addr54);
            }
            addr43:
            if(mNextState.length > 0)
            {
               if(_loc2_ || this)
               {
                  addr54:
                  return §9[§.STATE_STATUS_COMPLETED;
               }
            }
            return §9[§.STATE_STATUS_RUNNING;
         }
         §§goto(addr38);
      }
   }
}
