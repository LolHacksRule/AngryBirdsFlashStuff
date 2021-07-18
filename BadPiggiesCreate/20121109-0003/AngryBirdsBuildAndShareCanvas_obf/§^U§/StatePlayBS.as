package §^U§
{
   import §#";§.§0"#§;
   import §%!j§.§%K§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,!g§.§>7§;
   import §05§.§?s§;
   import §6]§.§8!W§;
   import §;<§.§'B§;
   import §;b§.§@"0§;
   import §<!1§.§9!=§;
   import §<i§.§`!r§;
   import §=!7§.§9"8§;
   import §?!'§.§3$§;
   import §@y§.§0=§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlayBS extends §%"3§
   {
      
      public static const §%!Q§:String = "StatePlayBS";
      
      public static const §&5§:int = 50;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%!Q§ = "StatePlayBS";
         }
         do
         {
            §&5§ = 50;
         }
         while(!_loc2_);
         
      }
      
      private var §>"&§:Boolean = true;
      
      protected var §-"9§:§9!=§;
      
      public function StatePlayBS(param1:Boolean = true, param2:String = "StatePlayBS")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§-"9§ = new §9!=§();
         }
         do
         {
            super(param1,param2);
         }
         while(_loc3_);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §>7§.§];§(false);
            do
            {
               §`!v§ = new §>!V§(this);
               loop2:
               do
               {
                  §`!v§.init(§]!M§.§"!V§.Views.View_LevelPlayBS[0]);
                  while(!_loc1_)
                  {
                     §%K§.§`9§.start();
                     if(_loc2_ || _loc1_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
               while(_loc1_);
               
            }
            while(!(_loc2_ || this));
            
            return;
         }
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.levelStarted();
            do
            {
               §0"#§.§9"2§("LevelStartsBirdsMilitary" + (1 + int(Math.random() * 2)));
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
            loop0:
            do
            {
               this.§-"9§.§2">§(0);
               while(true)
               {
                  this.§^!`§(0);
                  while(_loc2_ || this)
                  {
                     §`!v§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
                     if(_loc2_ || this)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc1_);
            
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(§3$§.isOpen)
            {
               if(!(_loc3_ && this))
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
                  addr58:
                  §§push(int(§§pop()));
               }
               else
               {
                  addr38:
                  §§push(super.run(param1));
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr58);
                  }
               }
               var _loc2_:* = §§pop();
               if(!_loc3_)
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     if(§§pop() != §'B§.STATE_STATUS_RUNNING)
                     {
                        if(_loc4_)
                        {
                           §§goto(addr113);
                        }
                        else
                        {
                           while(true)
                           {
                              addr78:
                              if(!(_loc3_ && this))
                              {
                                 return §'B§.STATE_STATUS_COMPLETED;
                              }
                           }
                           addr114:
                        }
                     }
                     while(true)
                     {
                        this.§^!`§(param1);
                        addr93:
                        while(mNextState.length > 0)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           if(!_loc4_)
                           {
                              continue;
                           }
                           §§goto(addr78);
                        }
                        return §'B§.STATE_STATUS_RUNNING;
                        §§goto(addr114);
                     }
                  }
                  addr113:
                  return _loc2_;
               }
               §§goto(addr93);
            }
         }
         §§goto(addr38);
      }
      
      override public function getVictoryState() : String
      {
         return §<"5§.§%!Q§;
      }
      
      override public function getLoserState() : String
      {
         return §7!r§.§%!Q§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(!_loc3_)
            {
               if(Keyboard.R === _loc2_)
               {
                  addr74:
                  §§push(0);
                  if(_loc3_)
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
                     §@"0§.§%P§(§%!Q§);
                     while(true)
                     {
                        mNextState = §@"0§.§%!Q§;
                        if(!(_loc4_ || param1))
                        {
                           break loop2;
                        }
                        if(!(_loc3_ && param1))
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
            §§goto(addr74);
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param3 is §9"8§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(§0=§.LISTENER_EVENT_MOUSE_DOWN);
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(param1);
                           if(!(_loc6_ && param2))
                           {
                              §§push(§0=§.LISTENER_EVENT_MOUSE_UP);
                              if(_loc5_ || this)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc5_ || this))
                                    {
                                       continue loop0;
                                    }
                                    if(!(_loc6_ && param2))
                                    {
                                       §8!W§.§^!R§();
                                       continue loop0;
                                    }
                                    §§goto(addr142);
                                 }
                                 break;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        if(!_loc6_)
                        {
                           §8!W§.§for§();
                           addr142:
                           break;
                           addr142:
                        }
                        §§goto(addr142);
                        §§goto(addr142);
                     }
                  }
               }
            }
            var _loc4_:* = param2;
            if(!_loc6_)
            {
               if("CLOSE_TUTORIAL" !== _loc4_)
               {
                  if("PAUSE" === _loc4_)
                  {
                     if(!_loc6_)
                     {
                        §§push(1);
                        if(_loc6_)
                        {
                        }
                        §§goto(addr218);
                     }
                     else
                     {
                        §§goto(addr183);
                     }
                  }
                  else
                  {
                     if("RESTART_LEVEL" === _loc4_)
                     {
                        if(!_loc6_)
                        {
                           addr183:
                           §§push(2);
                           if(_loc6_ && param1)
                           {
                              §§goto(addr213);
                           }
                           §§goto(addr218);
                        }
                        else
                        {
                           §§goto(addr195);
                        }
                     }
                     else if("FULLSCREEN_BUTTON" === _loc4_)
                     {
                        §§goto(addr195);
                     }
                     else
                     {
                        §§push(4);
                     }
                     §§goto(addr195);
                  }
                  addr218:
                  loop5:
                  switch(§§pop())
                  {
                     case 0:
                        §3$§.§4!W§();
                        break;
                        addr74:
                     case 1:
                        mNextState = §4!T§.§%!Q§;
                        if(_loc5_ || this)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           §§goto(addr74);
                        }
                        break;
                     case 2:
                        §@"0§.§%P§(StatePlayBS.§%!Q§);
                        loop3:
                        while(true)
                        {
                           addr34:
                           while(true)
                           {
                              mNextState = §@"0§.§%!Q§;
                              if(!_loc5_)
                              {
                                 break loop5;
                              }
                              if(_loc5_)
                              {
                                 break loop5;
                              }
                              continue loop3;
                           }
                        }
                        break;
                     case 3:
                        §?s§.doJsCall("onFullscreenToggle");
                        if(!(_loc6_ && this))
                        {
                           if(true)
                           {
                              break;
                           }
                           §§goto(addr34);
                        }
                  }
                  return;
               }
               if(!(_loc6_ && this))
               {
                  §§push(0);
                  if(_loc6_ && param3)
                  {
                     addr213:
                  }
               }
               else
               {
                  addr195:
                  §§push(3);
                  if(_loc5_ || param3)
                  {
                     §§goto(addr213);
                  }
               }
               §§goto(addr218);
            }
            §§goto(addr195);
         }
         §§goto(addr142);
      }
      
      private function §^!`§(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:int = §%!x§.getScore();
         §§push(this.§-"9§.getValue());
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc6_)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               if(§§pop() < _loc2_)
               {
                  if(!_loc6_)
                  {
                     §§push(int(Math.min(_loc2_,this.§-"9§.getValue() + param1 * §&5§)));
                     if(!_loc6_)
                     {
                        addr88:
                        _loc3_ = §§pop();
                        while(true)
                        {
                           addr52:
                           while(true)
                           {
                              this.§-"9§.§2">§(_loc3_);
                              addr57:
                              while(true)
                              {
                                 §§goto(addr30);
                              }
                           }
                        }
                        addr89:
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr89);
               }
               addr30:
               while(true)
               {
                  §`!v§.setText(_loc2_.toString(),"TextField_CurrentScore");
                  if(!(_loc6_ && param1))
                  {
                     continue loop0;
                  }
                  continue loop3;
               }
               addr90:
               §§push(AngryBirdsFP11.§>!7§.§="?§(§`!r§.§0B§));
               if(!(_loc6_ && this))
               {
                  addr102:
                  §§push(int(§§pop()));
               }
               var _loc4_:* = §§pop();
               if(_loc5_ || _loc2_)
               {
                  §`!v§.setText((_loc3_ > _loc4_ ? _loc3_ : _loc4_) + "","TextField_HiScore");
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr57);
      }
   }
}
