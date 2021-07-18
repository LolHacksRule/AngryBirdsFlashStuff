package §@!i§
{
   import § !r§.§%s§;
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §#!4§.§+!S§;
   import §+]§.§"U§;
   import §1!F§.§@!D§;
   import §=!3§.§;!!§;
   import §false§.§!!o§;
   import §false§.§0!4§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §@!D§
   {
      
      public static const STATE_NAME:String = "StateLevelEditorTestPlay";
      
      private static var §8H§:BitmapData;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "StateLevelEditorTestPlay";
         }
      }
      
      private var §&!E§:§0!4§;
      
      private var §4-§:Boolean = true;
      
      public function StateLevelEditorTestPlay(param1:Boolean = true, param2:String = "StateLevelEditorTestPlay")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      private static function onScreenshotReady(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §8H§ = param1;
         }
      }
      
      public static function §^!`§() : BitmapData
      {
         return §8H§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
            if(_loc1_)
            {
               §+!$§ = new §2U§(this);
               if(!(_loc2_ && this))
               {
                  addr49:
                  §+!$§.init(§=!Z§.§;K§.Views.View_LevelPlayEditor[0]);
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      override protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.levelStarted();
            if(_loc2_ || _loc1_)
            {
               §"U§.§#!t§(onScreenshotReady);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.activate();
            if(!(_loc1_ && this))
            {
               this.updateCurrentScore();
               if(!(_loc1_ && _loc2_))
               {
                  addr62:
                  §+!$§.getItemByName("Container_HiscoreContainer").goToFrame(2,false);
                  if(!(_loc1_ && _loc1_))
                  {
                     addr75:
                     §-!D§.§?5§("onPreviewStarted");
                  }
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr62);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
            if(_loc2_ || _loc2_)
            {
               addr28:
               §-!D§.§?5§("onPreviewEnded");
            }
            return;
         }
         §§goto(addr28);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc4_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc3_ || _loc2_)
         {
            if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
            {
               if(_loc3_)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  §§goto(addr69);
               }
            }
            else if(§!!o§.isOpen)
            {
               addr69:
               return §§pop();
               §§push(_loc2_);
            }
            this.updateCurrentScore();
            if(mNextState.length > 0)
            {
               if(_loc3_)
               {
                  return §;!!§.STATE_STATUS_COMPLETED;
               }
            }
            return §;!!§.STATE_STATUS_RUNNING;
         }
         §§goto(addr69);
      }
      
      override public function getVictoryState() : String
      {
         return §#S§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §0!§.STATE_NAME;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.keyDown(param1);
         }
         var _loc2_:* = param1.keyCode;
         if(_loc3_)
         {
            if(Keyboard.ESCAPE === _loc2_)
            {
               addr66:
               §§push(0);
               if(!_loc3_)
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
                  mNextState = StateLevelEditor.STATE_NAME;
                  if(!(_loc4_ && param1))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr66);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param3 is §#!'§)
            {
               if(!_loc6_)
               {
                  §§push(param1);
                  if(_loc5_)
                  {
                     §§push(§+!S§.LISTENER_EVENT_MOUSE_DOWN);
                     if(_loc5_ || this)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc5_)
                           {
                              addr39:
                              §%s§.§[!@§();
                              if(_loc6_ && param2)
                              {
                                 addr60:
                                 §%s§.§<1§();
                                 var _loc4_:* = param2;
                                 addr62:
                                 §§push("HELP");
                                 if(_loc5_)
                                 {
                                    §§push(_loc4_);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          §§push(0);
                                          if(!_loc5_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§push("HELP_CLOSE");
                                          if(_loc5_ || this)
                                          {
                                             §§push(_loc4_);
                                             if(_loc5_ || this)
                                             {
                                                addr175:
                                                if(§§pop() === §§pop())
                                                {
                                                   §§push(1);
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      addr254:
                                                   }
                                                   §§goto(addr259);
                                                }
                                                else
                                                {
                                                   §§push("CLOSE_TUTORIAL");
                                                   if(!_loc6_)
                                                   {
                                                      addr188:
                                                      §§push(_loc4_);
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            addr259:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  this.§&!E§ = new §0!4§(§+!$§,§=!Z§.§;K§.Views.PopupView_PlayHelp[0]);
                                                                  §§push(this.§&!E§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§pop().open();
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr91:
                                                                     break;
                                                                  }
                                                                  addr86:
                                                                  §§pop().close();
                                                                  break;
                                                               case 1:
                                                                  §§goto(addr86);
                                                               case 2:
                                                                  §!!o§.§7§();
                                                                  §§goto(addr91);
                                                               case 3:
                                                                  mNextState = §[!_§.STATE_NAME;
                                                                  §§push(this.§&!E§);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  break;
                                                               case 4:
                                                                  §@!n§.§!=§(StateLevelEditorTestPlay.STATE_NAME);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     mNextState = §@!n§.STATE_NAME;
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr143:
                                                                     break;
                                                                  }
                                                                  break;
                                                               case 5:
                                                                  §-!D§.§?5§("onFullscreenToggle");
                                                                  §§goto(addr143);
                                                            }
                                                            return;
                                                            §§push(2);
                                                         }
                                                         else
                                                         {
                                                            §§push("PAUSE");
                                                            if(_loc5_)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(3);
                                                                        if(_loc6_)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr259);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("RESTART_LEVEL");
                                                                     if(_loc5_ || param3)
                                                                     {
                                                                        addr235:
                                                                        §§push(_loc4_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr238:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              §§push(4);
                                                                              if(_loc6_)
                                                                              {
                                                                              }
                                                                              §§goto(addr259);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr244:
                                                                              §§push("FULLSCREEN_BUTTON");
                                                                              §§push(_loc4_);
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        if(§§pop() !== §§pop())
                                                                        {
                                                                           §§goto(addr259);
                                                                           §§push(6);
                                                                        }
                                                                        §§goto(addr259);
                                                                     }
                                                                     §§goto(addr244);
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr235);
                                                }
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr244);
                                 addr62:
                              }
                           }
                           §§goto(addr62);
                        }
                        else
                        {
                           addr50:
                           §§push(param1);
                           §§push(§+!S§.LISTENER_EVENT_MOUSE_UP);
                        }
                        §§goto(addr62);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc6_ && this)
                        {
                        }
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr50);
               }
               §§goto(addr39);
            }
         }
         §§goto(addr60);
      }
      
      private function updateCurrentScore() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = §5!J§.getScore();
         if(!(_loc3_ && this))
         {
            §+!$§.setText(_loc1_.toString(),"TextField_CurrentScore");
         }
      }
   }
}
