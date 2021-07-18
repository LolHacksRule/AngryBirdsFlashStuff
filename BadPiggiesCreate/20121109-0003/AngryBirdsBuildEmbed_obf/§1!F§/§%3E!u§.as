package §1!F§
{
   import §!x§.§`!o§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§;!j§;
   import §#!4§.§+!S§;
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §5#§.§@o§;
   import §8!Q§.§ ^§;
   import §8!Q§.§,8§;
   import §<!<§.§7E§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §false§.§!!o§;
   import §false§.§'k§;
   
   public class §>!u§ extends StatePlay
   {
      
      private static const §'!>§:Number = -5000.0;
      
      private static const §^K§:Number = 10000.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §'!>§ = -5 * 1000;
            if(_loc2_)
            {
               addr41:
               §^K§ = 10 * 1000;
            }
            return;
         }
         §§goto(addr41);
      }
      
      private var §"Q§:int = 0;
      
      private var §^!P§:Number = -5000.0;
      
      private var §@A§:int = 0;
      
      private var §6P§:Number = 0;
      
      private var §#!W§:Number = 0;
      
      public function §>!u§(param1:Boolean = true, param2:int = 0, param3:String = "StatePlay")
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param3);
            if(!(_loc5_ && param3))
            {
               this.§"Q§ = param2;
            }
         }
      }
      
      override protected function getGameLogicController(param1:§7E§) : §@o§
      {
         return new §`!o§(param1);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.levelStarted();
            if(_loc2_ || _loc2_)
            {
               addr28:
               §,8§.§?!@§(§ ^§.§#!e§,§1^§.§ ]§);
            }
            return;
         }
         §§goto(addr28);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?P§ = true;
            if(!(_loc1_ && this))
            {
               addr39:
               §+!$§ = new §2U§(this);
               if(_loc2_)
               {
                  §+!$§.init(§=!Z§.§;K§.Views.View_FacebookLevelPlay[0]);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            super.activate();
            if(!_loc4_)
            {
               addr24:
               this.§>!G§();
            }
            var _loc1_:§2! § = §1^§.§'!_§(§1^§.§ ]§);
            if(!(_loc4_ && _loc1_))
            {
               if(_loc1_)
               {
                  §§push(_loc1_.§]+§());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(int(§§pop()));
                     if(!(_loc4_ && this))
                     {
                        §§goto(addr68);
                     }
                     §§goto(addr91);
                  }
                  addr68:
                  _loc2_ = §§pop();
                  if(§'!V§.§1!2§.slingshot)
                  {
                     §§push(_loc2_);
                     if(_loc3_ || _loc1_)
                     {
                        §§push(§'!V§.§1!2§.slingshot.§6J§());
                        if(_loc3_)
                        {
                           §§push(int(§§pop() + §§pop()));
                           if(!_loc4_)
                           {
                              addr91:
                              _loc2_ = §§pop();
                              if(_loc3_)
                              {
                                 §§goto(addr94);
                              }
                              §§goto(addr122);
                           }
                        }
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr94);
               }
               §§goto(addr120);
            }
            addr94:
            this.§"Q§ = Math.min(this.§"Q§,_loc2_);
            if(_loc3_ || _loc2_)
            {
               addr120:
               if(this.§"Q§ > 0)
               {
                  addr122:
                  (§+!$§.getItemByName("TextField_HighScore") as §;!j§).setText(this.§"Q§.toString());
               }
               else
               {
                  §+!$§.getItemByName("Container_HiscoreContainer").setVisibility(false);
                  §+!$§.getItemByName("Container_LevelscoreContainer").y = §+!$§.getItemByName("Container_HiscoreContainer").y;
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            if(_loc2_ || _loc1_)
            {
               this.§4!4§();
               if(_loc2_)
               {
                  this.§>!G§();
               }
            }
         }
      }
      
      private function §4!4§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(_loc4_)
         {
            if(this.§^!P§ > §^K§)
            {
               if(_loc4_)
               {
                  _loc1_ = Math.round(1000 / this.§^!P§ * this.§@A§);
                  addr40:
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§1^§.§ ]§);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                     }
                     _loc2_ = §§pop();
                     if(_loc4_ || this)
                     {
                        §,8§.§@!V§(_loc1_,_loc2_,§7j§.§?!X§);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      private function §?!P§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this);
            §§push(this.§^!P§);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§^!P§ = §§pop();
            if(!_loc4_)
            {
               §§push(this.§^!P§);
               if(_loc5_)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc5_ || param1)
                        {
                           var _loc2_:*;
                           §§push((_loc2_ = this).§@A§);
                           if(_loc5_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc5_)
                           {
                              _loc2_.§@A§ = _loc3_;
                           }
                           if(!(_loc4_ && _loc2_))
                           {
                              addr86:
                              §§push(this.§6P§);
                              if(_loc5_)
                              {
                                 §§push(§'!V§.§?!a§());
                                 if(_loc5_ || this)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc5_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc5_ || param1)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr124);
                                             }
                                          }
                                       }
                                       §§goto(addr135);
                                    }
                                    addr124:
                                    §§pop();
                                    if(_loc5_)
                                    {
                                       addr131:
                                       §§push(this.§#!W§ == §'!V§.§<x§());
                                       if(!_loc4_)
                                       {
                                          addr135:
                                          if(!§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr138:
                                                this.§>!G§();
                                             }
                                          }
                                       }
                                       §§goto(addr135);
                                    }
                                    return;
                                 }
                              }
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr131);
            }
            §§goto(addr86);
         }
         §§goto(addr138);
      }
      
      private function §>!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§^!P§ = §'!>§;
            if(!_loc2_)
            {
               this.§@A§ = 0;
               if(!(_loc2_ && this))
               {
                  addr58:
                  this.§6P§ = §'!V§.§?!a§();
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§#!W§ = §'!V§.§<x§();
                  }
               }
               return;
            }
         }
         §§goto(addr58);
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
         if(!_loc3_)
         {
            super.levelCompleted();
         }
         §§push(§1^§.§ ]§);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = §5!J§.getScore();
         if(!(_loc3_ && _loc2_))
         {
            §,8§.§?!@§(§ ^§.§1!k§,_loc1_,_loc2_);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            §§push("CLOSE_TUTORIAL_POWERUP");
            if(_loc5_)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                        }
                        §§goto(addr176);
                     }
                     else
                     {
                        §§goto(addr100);
                     }
                  }
                  else
                  {
                     §§push("POWERUP");
                     if(!(_loc6_ && param1))
                     {
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc5_)
                              {
                                 addr100:
                                 §§push(1);
                                 if(_loc6_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr168:
                                 §§push(4);
                                 if(_loc5_)
                                 {
                                    §§goto(addr171);
                                 }
                              }
                              §§goto(addr176);
                           }
                           else
                           {
                              §§push("FULLSCREEN_BUTTON");
                              if(_loc5_ || param2)
                              {
                                 addr112:
                                 §§push(_loc4_);
                                 if(!(_loc6_ && param3))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc5_ || param3)
                                       {
                                          §§push(2);
                                          if(_loc5_ || param2)
                                          {
                                          }
                                          §§goto(addr176);
                                       }
                                       else
                                       {
                                          §§goto(addr161);
                                       }
                                    }
                                    else
                                    {
                                       §§push("ZOOM_IN");
                                       if(!(_loc6_ && param2))
                                       {
                                          addr155:
                                          §§push(_loc4_);
                                          if(!_loc6_)
                                          {
                                             addr158:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   addr161:
                                                   §§push(3);
                                                   if(_loc6_)
                                                   {
                                                   }
                                                   §§goto(addr176);
                                                }
                                                else
                                                {
                                                   §§goto(addr168);
                                                }
                                             }
                                             else
                                             {
                                                addr166:
                                                §§push("ZOOM_OUT");
                                                §§push(_loc4_);
                                             }
                                             §§goto(addr168);
                                          }
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr176);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr168);
                                 }
                                 else
                                 {
                                    addr176:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §!!o§.§7§();
                                          break;
                                       case 1:
                                          §'k§.§ !Q§(true);
                                          break;
                                       case 2:
                                          §'k§.§ !Q§(false);
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          addr37:
                                          break;
                                       case 3:
                                          §5!J§.doUserZoom(true);
                                          §§goto(addr37);
                                       case 4:
                                          §5!J§.doUserZoom(false);
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          break;
                                       default:
                                          super.uiInteractionHandler(param1,param2,param3);
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                    }
                                    return;
                                    §§push(5);
                                 }
                                 §§goto(addr176);
                              }
                              §§goto(addr166);
                           }
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr176);
               }
               §§goto(addr158);
            }
            §§goto(addr112);
         }
         §§goto(addr168);
      }
      
      override protected function updateCurrentScore(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = §5!J§.getScore();
         var _loc3_:* = int(§1!l§.getValue());
         if(!(_loc5_ && this))
         {
            §§push(_loc3_);
            if(!(_loc5_ && this))
            {
               if(§§pop() < _loc2_)
               {
               }
               §§goto(addr86);
            }
            _loc3_ = §§pop();
            if(!_loc5_)
            {
               §1!l§.assign(_loc3_);
               if(_loc4_ || this)
               {
               }
               §§goto(addr86);
            }
         }
         addr86:
         if(!_loc5_)
         {
            §§push(int(Math.min(_loc2_,§1!l§.getValue() + param1 * §@f§)));
         }
         (§+!$§.getItemByName("TextField_CurrentScore") as §;!j§).setText(_loc3_.toString());
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.run(param1);
            if(!_loc3_)
            {
               addr33:
               this.§?!P§(param1);
               if(!(_loc3_ && _loc2_))
               {
                  if(mNextState.length > 0)
                  {
                     if(_loc2_)
                     {
                        §§goto(addr49);
                     }
                  }
                  return §;!!§.STATE_STATUS_RUNNING;
               }
            }
            addr49:
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         §§goto(addr33);
      }
   }
}
