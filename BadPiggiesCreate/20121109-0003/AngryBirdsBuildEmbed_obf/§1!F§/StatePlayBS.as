package §1!F§
{
   import § !r§.§%s§;
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §#!4§.§+!S§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §8!Q§.§2!7§;
   import §=!3§.§;!!§;
   import §@!X§.§7j§;
   import §@!i§.§@!n§;
   import §`a§.§^7§;
   import §false§.§!!o§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §@!D§
   {
      
      public static const STATE_NAME:String = "StatePlayBS";
      
      public static const §@f§:int = 50;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "StatePlayBS";
            if(_loc1_ || StatePlayBS)
            {
               addr28:
               §@f§ = 50;
            }
            return;
         }
         §§goto(addr28);
      }
      
      private var §4-§:Boolean = true;
      
      protected var §1!l§:§2!7§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            this.§1!l§ = new §2!7§();
            if(!(_loc4_ && this))
            {
               addr44:
               super(param1,param2);
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            if(!_loc1_)
            {
               §^7§.§>!B§(false);
               addr38:
               if(!(_loc1_ && _loc1_))
               {
                  addr58:
                  §+!$§ = new §2U§(this);
                  if(!_loc1_)
                  {
                     §+!$§.init(§=!Z§.§;K§.Views.View_LevelPlayBS[0]);
                     if(!_loc1_)
                     {
                        addr75:
                        §7j§.§else§.start();
                     }
                     return;
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr58);
         }
         §§goto(addr38);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.levelStarted();
            if(_loc2_ || _loc2_)
            {
               addr43:
               §§push(§+!§);
               §§push("LevelStartsBirdsMilitary");
               if(_loc2_)
               {
                  §§push(§§pop() + (1 + int(Math.random() * 2)));
               }
               §§pop().§4c§(§§pop());
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            if(!(_loc2_ && _loc1_))
            {
               this.§1!l§.assign(0);
               if(_loc1_ || _loc1_)
               {
                  addr48:
                  this.updateCurrentScore(0);
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr59);
               }
               §+!$§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
               addr59:
               return;
            }
         }
         §§goto(addr48);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§!!o§.isOpen)
            {
               if(!(_loc4_ && this))
               {
                  addr28:
                  §§push(0);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr32:
                  §§push(super.run(param1));
                  if(_loc3_ || _loc3_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(!(_loc4_ && this))
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr80);
                        }
                     }
                     else
                     {
                        §§goto(addr88);
                     }
                     §§goto(addr102);
                  }
                  addr80:
                  return _loc2_;
               }
               addr88:
               this.updateCurrentScore(param1);
               if(!_loc4_)
               {
                  if(mNextState.length > 0)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr102);
                     }
                  }
                  addr102:
                  return §;!!§.STATE_STATUS_RUNNING;
               }
               return §;!!§.STATE_STATUS_COMPLETED;
            }
            §§goto(addr32);
         }
         §§goto(addr28);
      }
      
      override public function getVictoryState() : String
      {
         return §"![§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §2!i§.STATE_NAME;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super.keyDown(param1);
         }
         var _loc2_:* = param1.keyCode;
         if(!(_loc3_ && this))
         {
            if(Keyboard.R === _loc2_)
            {
               addr82:
               §§push(0);
               if(_loc3_ && _loc2_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §@!n§.§!=§(STATE_NAME);
                  if(_loc4_ || _loc2_)
                  {
                     mNextState = §@!n§.STATE_NAME;
                     if(_loc4_)
                     {
                        break;
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr82);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param3 is §#!'§)
            {
               if(_loc6_ || param1)
               {
                  §§push(param1);
                  if(!(_loc5_ && param3))
                  {
                     §§push(§+!S§.LISTENER_EVENT_MOUSE_DOWN);
                     if(!_loc5_)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_)
                           {
                              §%s§.§[!@§();
                              if(!_loc5_)
                              {
                                 var _loc4_:* = param2;
                                 addr63:
                                 if(_loc6_)
                                 {
                                    §§push("CLOSE_TUTORIAL");
                                    if(!_loc5_)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc5_)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!(_loc5_ && param3))
                                             {
                                                §§push(0);
                                                if(!_loc6_)
                                                {
                                                   addr213:
                                                }
                                             }
                                             else
                                             {
                                                addr217:
                                                §§push(3);
                                                if(_loc5_ && param2)
                                                {
                                                }
                                             }
                                             §§goto(addr230);
                                          }
                                          else
                                          {
                                             §§push("PAUSE");
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(_loc4_);
                                                if(!(_loc5_ && param2))
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(1);
                                                         if(_loc5_ && param3)
                                                         {
                                                            §§goto(addr213);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr205:
                                                         §§push(2);
                                                         if(_loc6_ || param2)
                                                         {
                                                            §§goto(addr213);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("RESTART_LEVEL");
                                                      if(_loc6_ || param3)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc6_ || param2)
                                                         {
                                                            addr192:
                                                            if(§§pop() === §§pop())
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr205);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr217);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr216:
                                                               if("FULLSCREEN_BUTTON" === _loc4_)
                                                               {
                                                                  §§goto(addr217);
                                                               }
                                                               else
                                                               {
                                                                  §§push(4);
                                                               }
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                      }
                                                      §§goto(addr216);
                                                   }
                                                   addr230:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         §!!o§.§7§();
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         addr77:
                                                         break;
                                                      case 1:
                                                         mNextState = §>P§.STATE_NAME;
                                                         if(_loc5_)
                                                         {
                                                            addr118:
                                                            break;
                                                         }
                                                         §§goto(addr77);
                                                         break;
                                                      case 2:
                                                         §@!n§.§!=§(StatePlayBS.STATE_NAME);
                                                         if(_loc6_ || param3)
                                                         {
                                                            mNextState = §@!n§.STATE_NAME;
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr118);
                                                            }
                                                         }
                                                         break;
                                                      case 3:
                                                         §-!D§.§?5§("onFullscreenToggle");
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§goto(addr118);
                                                         }
                                                   }
                                                   return;
                                                }
                                             }
                                             §§goto(addr216);
                                          }
                                       }
                                       §§goto(addr192);
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr205);
                                 addr63:
                                 addr49:
                              }
                              else
                              {
                                 addr61:
                                 §%s§.§<1§();
                                 §§goto(addr63);
                              }
                           }
                           §§goto(addr63);
                        }
                        else
                        {
                           addr51:
                           §§push(param1);
                           §§push(§+!S§.LISTENER_EVENT_MOUSE_UP);
                        }
                        §§goto(addr63);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc6_ || param3)
                        {
                           §§goto(addr61);
                        }
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr51);
               }
               §§goto(addr49);
            }
            §§goto(addr63);
         }
         §§goto(addr61);
      }
      
      private function updateCurrentScore(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:int = §5!J§.getScore();
         §§push(this.§1!l§.getValue());
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            §§push(_loc3_);
            if(!(_loc6_ && param1))
            {
               if(§§pop() < _loc2_)
               {
                  if(_loc5_ || this)
                  {
                     §§push(int(Math.min(_loc2_,this.§1!l§.getValue() + param1 * §@f§)));
                     if(!(_loc6_ && param1))
                     {
                        _loc3_ = §§pop();
                        if(_loc5_ || _loc2_)
                        {
                           addr87:
                           this.§1!l§.assign(_loc3_);
                           if(!(_loc6_ && this))
                           {
                              addr98:
                              §+!$§.setText(_loc2_.toString(),"TextField_CurrentScore");
                           }
                        }
                        §§push(AngryBirdsFP11.sUserProgress.§!7§(§1^§.§ ]§));
                        if(_loc5_ || param1)
                        {
                        }
                        §§goto(addr126);
                     }
                     addr126:
                     var _loc4_:* = §§pop();
                     if(_loc5_)
                     {
                        §+!$§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
                     }
                     return;
                     §§push(int(§§pop()));
                  }
               }
               §§goto(addr98);
            }
            §§goto(addr126);
         }
         §§goto(addr87);
      }
   }
}
