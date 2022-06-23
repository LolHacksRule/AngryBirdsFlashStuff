package § !@§
{
   import §%4§.§`a§;
   import §+!B§.§-Q§;
   import §+!B§.§;9§;
   import §,Z§.§=!>§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §6!C§.§!;§;
   import §6!C§.§+7§;
   import §6A§.§ !§;
   import §7g§.§1Q§;
   import §=!0§.§>I§;
   import §>!7§.§@!+§;
   
   public class §<!=§ extends StatePlay
   {
      
      private static const §?5§:Number = -5000.0;
      
      private static const §5!4§:Number = 10000.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §?5§ = -5 * 1000;
            if(!(_loc2_ && _loc1_))
            {
               addr45:
               §5!4§ = 10 * 1000;
            }
            return;
         }
         §§goto(addr45);
      }
      
      private var §5G§:int = 0;
      
      private var §=U§:Number = -5000.0;
      
      private var §3!F§:int = 0;
      
      private var §;!$§:Number = 0;
      
      private var §&!=§:Number = 0;
      
      public function §<!=§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param3);
            if(!(_loc5_ && param2))
            {
               this.§5G§ = param2;
            }
         }
      }
      
      override protected function getGameLogicController(param1:§ !§) : §@!+§
      {
         return new §=!>§(param1);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.levelStarted();
            if(!_loc2_)
            {
               addr22:
               §;9§.§"!A§(§-Q§.§'!%§,§[4§.§"!>§);
            }
            return;
         }
         §§goto(addr22);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+_§ = true;
            if(!_loc1_)
            {
               §]F§ = new §4!,§(this);
               if(!_loc1_)
               {
                  addr41:
                  §]F§.init(§5A§.§;L§.Views.View_FacebookLevelPlay[0]);
               }
               return;
            }
         }
         §§goto(addr41);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_ || _loc3_)
         {
            super.activate();
            if(!_loc3_)
            {
               this.§<!@§();
            }
         }
         var _loc1_:§@Z§ = §[4§.§!_§(§[4§.§"!>§);
         if(!_loc3_)
         {
            if(_loc1_)
            {
               §§push(_loc1_.§+v§());
               if(_loc4_)
               {
                  §§push(int(§§pop()));
                  if(_loc4_ || _loc2_)
                  {
                     _loc2_ = §§pop();
                     if(!_loc3_)
                     {
                        if(§=w§.§ o§.slingshot)
                        {
                           §§push(_loc2_);
                           if(!_loc3_)
                           {
                              §§goto(addr74);
                           }
                           §§goto(addr94);
                        }
                     }
                     §§goto(addr97);
                  }
                  addr74:
                  §§push(§=w§.§ o§.slingshot.§7!@§());
                  if(_loc4_ || _loc1_)
                  {
                     §§push(int(§§pop() + §§pop()));
                     if(!(_loc3_ && _loc2_))
                     {
                        addr94:
                        _loc2_ = §§pop();
                        if(_loc4_)
                        {
                           addr97:
                           this.§5G§ = Math.min(this.§5G§,_loc2_);
                           §§goto(addr106);
                        }
                        §§goto(addr139);
                     }
                     addr106:
                     §§goto(addr107);
                  }
                  addr107:
                  §§goto(addr104);
               }
               §§goto(addr94);
            }
         }
         addr104:
         if(this.§5G§ > 0)
         {
            if(_loc4_)
            {
               (§]F§.getItemByName("TextField_HighScore") as §`a§).setText(this.§5G§.toString());
               if(!_loc4_)
               {
               }
            }
         }
         else
         {
            §]F§.getItemByName("Container_HiscoreContainer").setVisibility(false);
            if(!_loc3_)
            {
               addr139:
               §]F§.getItemByName("Container_LevelscoreContainer").y = §]F§.getItemByName("Container_HiscoreContainer").y;
            }
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.deActivate();
            if(_loc2_)
            {
               this.§+!9§();
               if(_loc2_ || _loc2_)
               {
               }
               §§goto(addr49);
            }
            this.§<!@§();
         }
         addr49:
      }
      
      private function §+!9§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(_loc3_)
         {
            if(this.§=U§ > §5!4§)
            {
               if(_loc3_)
               {
                  _loc1_ = Math.round(1000 / this.§=U§ * this.§3!F§);
                  if(!(_loc4_ && this))
                  {
                     §§push(§[4§.§"!>§);
                     if(!_loc4_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     if(!(_loc4_ && _loc2_))
                     {
                        addr80:
                        §;9§.§=q§(_loc1_,_loc2_,§>I§.§0P§);
                     }
                  }
               }
               §§goto(addr80);
            }
            return;
         }
         §§goto(addr80);
      }
      
      private function §>!D§(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this);
         §§push(this.§=U§);
         if(_loc4_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§=U§ = §§pop();
         if(!_loc5_)
         {
            §§push(this.§=U§);
            if(_loc4_)
            {
               §§push(0);
               if(_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc4_)
                     {
                        addr36:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§3!F§);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_)
                        {
                           _loc2_.§3!F§ = _loc3_;
                        }
                        addr66:
                        §§push(this.§;!$§);
                        if(!_loc5_)
                        {
                           §§push(§=w§.§;!B§());
                           if(!(_loc5_ && param1))
                           {
                              §§goto(addr89);
                           }
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr66);
               }
               addr89:
               §§push(§§pop() == §§pop());
               if(!_loc5_)
               {
                  §§push(!§§pop());
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc4_)
                        {
                        }
                     }
                     §§goto(addr110);
                  }
                  §§pop();
                  if(_loc4_)
                  {
                     addr106:
                     §§push(this.§&!=§ == §=w§.§0E§());
                     if(!_loc5_)
                     {
                        §§push(!§§pop());
                     }
                  }
                  §§goto(addr111);
               }
               addr110:
               if(§§pop())
               {
                  addr111:
                  this.§<!@§();
               }
               return;
            }
            §§goto(addr106);
         }
         §§goto(addr36);
      }
      
      private function §<!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§=U§ = §?5§;
            if(_loc1_)
            {
               addr33:
               this.§3!F§ = 0;
               if(!_loc2_)
               {
                  this.§;!$§ = §=w§.§;!B§();
                  if(_loc2_)
                  {
                  }
                  §§goto(addr48);
               }
               this.§&!=§ = §=w§.§0E§();
            }
            addr48:
            return;
         }
         §§goto(addr33);
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
         if(!(_loc3_ && _loc3_))
         {
            super.levelCompleted();
         }
         §§push(§[4§.§"!>§);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §!!&§.getScore();
         if(!_loc3_)
         {
            §;9§.§"!A§(§-Q§.§0Y§,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            §§push("CLOSE_TUTORIAL_POWERUP");
            if(!(_loc6_ && param1))
            {
               §§push(_loc4_);
               if(_loc5_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                        }
                     }
                     else
                     {
                        addr119:
                        §§push(1);
                        if(_loc6_)
                        {
                           addr190:
                        }
                     }
                  }
                  else
                  {
                     §§push("POWERUP");
                     if(!_loc6_)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && this))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr119);
                              }
                              else
                              {
                                 addr142:
                                 §§push(2);
                                 if(_loc6_ && this)
                                 {
                                 }
                                 §§goto(addr195);
                              }
                           }
                           else
                           {
                              §§push("FULLSCREEN_BUTTON");
                              if(!_loc6_)
                              {
                                 addr126:
                                 §§push(_loc4_);
                                 if(_loc5_ || param1)
                                 {
                                    addr134:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_ || param2)
                                       {
                                          §§goto(addr142);
                                       }
                                       §§goto(addr195);
                                    }
                                    else
                                    {
                                       §§push("ZOOM_IN");
                                       if(_loc5_)
                                       {
                                          addr154:
                                          §§push(_loc4_);
                                          if(_loc5_ || param2)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   addr175:
                                                   §§push(3);
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr195);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr190);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr181:
                                                if("ZOOM_OUT" !== _loc4_)
                                                {
                                                   addr195:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         §!;§.§?"§();
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         addr46:
                                                         break;
                                                      case 1:
                                                         §+7§.§?%§(true);
                                                         break;
                                                      case 2:
                                                         §+7§.§?%§(false);
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         addr72:
                                                         break;
                                                      case 3:
                                                         §!!&§.doUserZoom(true);
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            §§goto(addr46);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr72);
                                                         }
                                                      case 4:
                                                         §!!&§.doUserZoom(false);
                                                         if(_loc5_ || param2)
                                                         {
                                                            break;
                                                         }
                                                         break;
                                                      default:
                                                         super.uiInteractionHandler(param1,param2,param3);
                                                         if(_loc5_ || param2)
                                                         {
                                                            §§goto(addr72);
                                                         }
                                                   }
                                                   return;
                                                   §§push(5);
                                                }
                                             }
                                             §§goto(addr195);
                                          }
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr195);
                                 }
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr195);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr195);
               }
               §§goto(addr181);
            }
            §§goto(addr154);
         }
         §§goto(addr175);
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = §!!&§.getScore();
         var _loc3_:int = §+y§.getValue();
         if(!(_loc5_ && param1))
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(§§pop() < _loc2_)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr68);
                  }
               }
               §§goto(addr81);
            }
            addr68:
            _loc3_ = Math.min(_loc2_,§+y§.getValue() + param1 * §9b§);
            if(_loc4_)
            {
               addr71:
               §+y§.assign(_loc3_);
               if(_loc4_ || _loc2_)
               {
                  addr81:
                  (§]F§.getItemByName("TextField_CurrentScore") as §`a§).setText(_loc3_.toString());
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.run(param1);
            if(!_loc2_)
            {
               §§goto(addr49);
            }
            §§goto(addr59);
         }
         addr49:
         this.§>!D§(param1);
         if(!(_loc2_ && _loc3_))
         {
            addr59:
            if(mNextState.length > 0)
            {
               if(!_loc2_)
               {
                  return §1Q§.STATE_STATUS_COMPLETED;
               }
            }
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
   }
}
