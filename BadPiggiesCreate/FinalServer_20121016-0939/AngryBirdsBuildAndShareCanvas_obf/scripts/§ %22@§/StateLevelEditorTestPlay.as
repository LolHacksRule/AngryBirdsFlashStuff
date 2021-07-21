package § "@§
{
   import §"v§.§3!w§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'!A§.§-!S§;
   import §'i§.§ "+§;
   import §'p§.§="#§;
   import §+h§.§5h§;
   import §-!n§.§5!U§;
   import §0![§.§6l§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §2H§.§,J§;
   import §5"-§.§5y§;
   import §=!M§.§"o§;
   import §^!y§.§'"#§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §6l§
   {
      
      public static const §'=§:String = "StateLevelEditorTestPlay";
      
      public static const §3Y§:String = "Test-PlayLevel";
      
      private static var § R§:BitmapData;
      
      private static var §&"-§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'=§ = "StateLevelEditorTestPlay";
            while(true)
            {
               §3Y§ = "Test-PlayLevel";
               loop1:
               while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     §&"-§ = false;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      private var §7"6§:Boolean = true;
      
      private var §^-§:§,J§;
      
      private var §^'§:Boolean = true;
      
      public function StateLevelEditorTestPlay(param1:Boolean = true, param2:String = "StateLevelEditorTestPlay")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      private static function onScreenshotReady(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            § R§ = param1;
         }
      }
      
      public static function §%P§() : BitmapData
      {
         return § R§;
      }
      
      public static function set §^!M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §&"-§ = param1;
         }
      }
      
      public static function get §^!M§() : Boolean
      {
         return §&"-§;
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
               §?E§ = new §'s§(this);
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     §?E§.init(§`7§.§>"?§.Views.View_LevelPreview[0]);
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr68);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §3!w§.§%n§ = §3Y§;
            loop0:
            while(true)
            {
               super.activate();
               loop1:
               while(true)
               {
                  this.§9!+§();
                  loop2:
                  while(true)
                  {
                     §?E§.getItemByName("Container_TopRight").goToFrame(2,false);
                     loop3:
                     while(!_loc1_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§7"6§ = true;
                           if(_loc2_)
                           {
                              if(!(_loc1_ && this))
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.deActivate();
            do
            {
               §4m§.doJsCall("onPreviewEnded");
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(this.§7"6§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     this.§7"6§ = false;
                  }
                  while(true)
                  {
                     § "+§.§2&§(onScreenshotReady);
                     addr253:
                     while(true)
                     {
                     }
                  }
                  addr277:
               }
               while(true)
               {
                  §§push(_loc2_);
                  addr243:
                  addr247:
                  while(§§pop() == §5y§.STATE_STATUS_RUNNING)
                  {
                     continue loop0;
                  }
                  addr246:
                  return _loc2_;
               }
            }
         }
         §§goto(addr208);
      }
      
      override public function getVictoryState() : String
      {
         return StateLevelEditor.§'=§;
      }
      
      override public function getLoserState() : String
      {
         return §;q§.§'=§;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.keyDown(param1);
         }
         var _loc2_:* = param1.keyCode;
         if(!(_loc4_ && param1))
         {
            if(Keyboard.ESCAPE === _loc2_)
            {
               addr66:
               §§push(0);
               if(_loc3_ || _loc3_)
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
                  mNextState = StateLevelEditor.§'=§;
                  if(!(_loc4_ && this))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr66);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            if(param3 is §="#§)
            {
               if(!_loc6_)
               {
                  addr193:
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push(§-!S§.LISTENER_EVENT_MOUSE_DOWN);
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(param1);
                           if(_loc5_)
                           {
                              §§push(§-!S§.LISTENER_EVENT_MOUSE_UP);
                              if(_loc5_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc6_ && param3)
                                       {
                                          break;
                                          addr206:
                                       }
                                       §"o§.§[!?§();
                                    }
                                    break;
                                 }
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        if(_loc5_ || this)
                        {
                           §"o§.§2!a§();
                        }
                     }
                     addr139:
                     var _loc4_:* = param2;
                     if(_loc5_)
                     {
                        if("HELP" === _loc4_)
                        {
                           if(!(_loc6_ && param1))
                           {
                              §§push(0);
                              if(!_loc5_)
                              {
                                 addr236:
                              }
                           }
                           else
                           {
                              addr275:
                              §§push(4);
                              if(_loc5_ || this)
                              {
                                 addr283:
                              }
                              else
                              {
                                 addr305:
                              }
                           }
                        }
                        else if("HELP_CLOSE" === _loc4_)
                        {
                           if(_loc5_)
                           {
                              §§push(1);
                              if(_loc5_)
                              {
                                 §§goto(addr236);
                              }
                              §§goto(addr310);
                           }
                           addr242:
                           §§push(2);
                           if(_loc5_ || param3)
                           {
                              §§goto(addr310);
                           }
                           addr310:
                           switch(§§pop())
                           {
                              case 0:
                                 this.§^-§ = new §,J§(§?E§,§`7§.§>"?§.Views.PopupView_PlayHelp[0]);
                                 addr137:
                                 this.§^-§.open();
                                 break;
                                 addr163:
                                 addr138:
                              case 1:
                                 §§push(this.§^-§);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§pop().close();
                                    break;
                                    addr133:
                                 }
                                 else
                                 {
                                    §§goto(addr137);
                                 }
                                 break;
                              case 2:
                                 §5h§.§7h§();
                                 break;
                                 addr119:
                              case 3:
                                 §%!3§.§4[§(StateLevelEditorTestPlay.§'=§);
                                 mNextState = §%!3§.§'=§;
                                 if(_loc5_ || this)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§goto(addr133);
                                 }
                                 break;
                                 addr113:
                              case 4:
                                 §%!3§.§4[§(StateLevelEditor.§'=§);
                                 loop0:
                                 while(true)
                                 {
                                    §5!U§.§9&§();
                                    addr66:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          break loop0;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 if(_loc5_ || this)
                                 {
                                    if(!(_loc6_ && param1))
                                    {
                                       addr57:
                                       mNextState = §%!3§.§'=§;
                                       break;
                                       addr62:
                                    }
                                    else
                                    {
                                       §§goto(addr163);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr113);
                                 }
                                 break;
                              case 5:
                                 §4m§.doJsCall("onFullscreenToggle");
                                 if(_loc5_)
                                 {
                                    if(_loc5_ || param1)
                                    {
                                       if(!(_loc6_ && param2))
                                       {
                                          if(!(_loc6_ && param3))
                                          {
                                             if(!_loc6_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                §§goto(addr57);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr119);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr66);
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr62);
                                 }
                           }
                           return;
                           §§goto(addr283);
                        }
                        else
                        {
                           if("CLOSE_TUTORIAL" === _loc4_)
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr242);
                              }
                           }
                           else if("RESTART_LEVEL" === _loc4_)
                           {
                              if(!_loc6_)
                              {
                                 §§push(3);
                                 if(!(_loc6_ && this))
                                 {
                                    §§goto(addr310);
                                 }
                                 else
                                 {
                                    §§goto(addr283);
                                 }
                              }
                           }
                           else if("CANCEL" === _loc4_)
                           {
                              if(_loc5_ || param1)
                              {
                                 §§goto(addr275);
                              }
                           }
                           else if("FULLSCREEN_BUTTON" !== _loc4_)
                           {
                              §§goto(addr310);
                              §§push(6);
                           }
                           §§goto(addr310);
                           if(!(_loc6_ && this))
                           {
                              §§goto(addr305);
                           }
                        }
                        §§goto(addr310);
                     }
                     §§goto(addr242);
                  }
               }
               §§goto(addr206);
            }
            §§goto(addr139);
         }
         §§goto(addr193);
      }
      
      private function §9!+§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = §-!K§.getScore();
         if(!(_loc2_ && this))
         {
            §?E§.setText(_loc1_.toString(),"TextField_CurrentScore");
         }
      }
   }
}
