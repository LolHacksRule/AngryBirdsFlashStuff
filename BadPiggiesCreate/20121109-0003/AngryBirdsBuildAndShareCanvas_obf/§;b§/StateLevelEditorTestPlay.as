package §;b§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §-"'§.§&"#§;
   import §05§.§?s§;
   import §1" §.§6!2§;
   import §6]§.§8!W§;
   import §7!@§.§+`§;
   import §;<§.§'B§;
   import §<i§.§`!r§;
   import §=!7§.§9"8§;
   import §?!'§.§3$§;
   import §@y§.§0=§;
   import §^U§.§%"3§;
   import flash.display.BitmapData;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StateLevelEditorTestPlay extends §%"3§
   {
      
      public static const §%!Q§:String = "StateLevelEditorTestPlay";
      
      public static const §55§:String = "Test-PlayLevel";
      
      private static var §;!?§:BitmapData;
      
      private static var §%!+§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%!Q§ = "StateLevelEditorTestPlay";
         }
         do
         {
            §55§ = "Test-PlayLevel";
            do
            {
               §%!+§ = false;
            }
            while(_loc1_ && _loc1_);
            
         }
         while(_loc1_ && StateLevelEditorTestPlay);
         
      }
      
      private var §^!A§:Boolean = true;
      
      private var §#!q§:§&"#§;
      
      private var §>"&§:Boolean = true;
      
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
         if(_loc2_ || param1)
         {
            §;!?§ = param1;
         }
      }
      
      public static function §5"+§() : BitmapData
      {
         return §;!?§;
      }
      
      public static function set §3!%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §%!+§ = param1;
         }
      }
      
      public static function get §3!%§() : Boolean
      {
         return §%!+§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            while(true)
            {
               §`!v§ = new §>!V§(this);
               while(!(_loc1_ && this))
               {
                  §`!v§.init(§]!M§.§"!V§.Views.View_LevelPreview[0]);
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  return;
                  addr55:
               }
            }
         }
         §§goto(addr55);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §`!r§.§0B§ = §55§;
            while(true)
            {
               super.activate();
            }
            addr121:
         }
         while(true)
         {
            this.§^!`§();
            loop2:
            while(true)
            {
               §`!v§.getItemByName("Container_TopRight").goToFrame(2,false);
               while(true)
               {
                  §?s§.doJsCall("onPreviewStarted");
                  addr89:
                  while(!_loc1_)
                  {
                     this.§^!A§ = true;
                     continue loop2;
                  }
               }
            }
            if(!(_loc2_ || _loc1_))
            {
               continue;
            }
            if(!_loc1_)
            {
               return;
            }
            §§goto(addr121);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
            do
            {
               §?s§.doJsCall("onPreviewEnded");
            }
            while(_loc2_ && this);
            
         }
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
         if(!_loc4_)
         {
            §§push(this.§^!A§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§^!A§ = false;
                     addr252:
                     while(true)
                     {
                        §6!2§.§'" §(onScreenshotReady);
                        addr245:
                        while(true)
                        {
                        }
                     }
                  }
                  addr249:
               }
               loop4:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if(§§pop() == §'B§.STATE_STATUS_RUNNING)
                     {
                        loop5:
                        while(true)
                        {
                           §§push(§3$§.isOpen);
                           if(_loc4_)
                           {
                              break;
                           }
                           if(!§§pop())
                           {
                              loop6:
                              while(true)
                              {
                                 this.§^!`§();
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       while(mNextState.length > 0)
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             addr221:
                                             §§push(_loc2_);
                                             break loop4;
                                          }
                                          §§push(§§findproperty(§%!+§));
                                          if(_loc3_)
                                          {
                                             §§push(§'_§.§=M§);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop().§0n§);
                                                if(!(_loc4_ && this))
                                                {
                                                   §§push(§§pop().§=!_§());
                                                   if(_loc3_)
                                                   {
                                                      §§push(0);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() > §§pop());
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc4_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§push(§'_§.§=M§);
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           §§push(§§pop().§0n§);
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              addr174:
                                                                              §§push(§§pop().getPigCount());
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr175:
                                                                                 §§push(0);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr165:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                          }
                                                                                          addr176:
                                                                                          §§pop().§%!+§ = §§pop();
                                                                                          while(_loc3_)
                                                                                          {
                                                                                             (AngryBirdsFP11.§>!7§ as §+`§).§0!Y§(§55§,§%!x§.getScore());
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         return §'B§.STATE_STATUS_COMPLETED;
                                                                                                      }
                                                                                                      break loop7;
                                                                                                   }
                                                                                                   addr197:
                                                                                                   §§push(_loc2_);
                                                                                                   if(!(_loc4_ && param1))
                                                                                                   {
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   break loop4;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr245);
                                                                                       }
                                                                                       §§goto(addr176);
                                                                                    }
                                                                                    §§pop();
                                                                                    addr172:
                                                                                    §§push(§'_§.§=M§.§0n§);
                                                                                 }
                                                                                 §§goto(addr176);
                                                                                 §§push(§§pop() > §§pop());
                                                                              }
                                                                              §§goto(addr175);
                                                                              §§push(0);
                                                                           }
                                                                           §§goto(addr174);
                                                                           §§push(§§pop().§5">§());
                                                                        }
                                                                     }
                                                                     §§goto(addr172);
                                                                  }
                                                                  §§goto(addr176);
                                                               }
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                      §§goto(addr175);
                                                   }
                                                }
                                                §§goto(addr174);
                                             }
                                          }
                                          §§goto(addr172);
                                       }
                                       return §'B§.STATE_STATUS_RUNNING;
                                       addr190:
                                    }
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       continue loop6;
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr249);
                                 }
                                 §§goto(addr252);
                              }
                           }
                           §§goto(addr197);
                        }
                        continue loop0;
                     }
                     §§goto(addr221);
                  }
                  break;
               }
               return §§pop();
            }
         }
         §§goto(addr190);
      }
      
      override public function getVictoryState() : String
      {
         return StateLevelEditor.§%!Q§;
      }
      
      override public function getLoserState() : String
      {
         return §&H§.§%!Q§;
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
         if(!(_loc4_ && this))
         {
            if(Keyboard.ESCAPE === _loc2_)
            {
               addr56:
               §§push(0);
               if(_loc4_ && this)
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
                  mNextState = StateLevelEditor.§%!Q§;
                  if(_loc3_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr56);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param3 is §9"8§)
            {
               if(!_loc5_)
               {
                  §§push(param1);
                  loop0:
                  while(true)
                  {
                     §§push(§0=§.LISTENER_EVENT_MOUSE_DOWN);
                     while(§§pop() != §§pop())
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        §§push(§0=§.LISTENER_EVENT_MOUSE_UP);
                        if(!_loc6_)
                        {
                           continue;
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!_loc5_)
                           {
                              §8!W§.§^!R§();
                           }
                           if(_loc6_)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                              var _loc4_:* = param2;
                              addr130:
                              if(_loc6_)
                              {
                                 if("HELP" === _loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(0);
                                       if(_loc5_ && this)
                                       {
                                          addr274:
                                       }
                                    }
                                    else
                                    {
                                       addr238:
                                       §§push(2);
                                       if(_loc5_ && param1)
                                       {
                                          addr291:
                                       }
                                    }
                                 }
                                 else if("HELP_CLOSE" === _loc4_)
                                 {
                                    if(_loc6_ || param2)
                                    {
                                       §§push(1);
                                       if(_loc6_ || param1)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr238);
                                    }
                                 }
                                 else
                                 {
                                    if("CLOSE_TUTORIAL" === _loc4_)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          §§goto(addr238);
                                       }
                                       §§goto(addr296);
                                    }
                                    if("RESTART_LEVEL" === _loc4_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(3);
                                          if(_loc5_ && param2)
                                          {
                                          }
                                          §§goto(addr296);
                                       }
                                       else
                                       {
                                          §§goto(addr271);
                                       }
                                    }
                                    else
                                    {
                                       if("CANCEL" === _loc4_)
                                       {
                                          if(!(_loc5_ && param3))
                                          {
                                             addr271:
                                             §§push(4);
                                             if(_loc5_)
                                             {
                                                §§goto(addr291);
                                             }
                                          }
                                       }
                                       else if("FULLSCREEN_BUTTON" !== _loc4_)
                                       {
                                          addr296:
                                          loop3:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                this.§#!q§ = new §&"#§(§`!v§,§]!M§.§"!V§.Views.PopupView_PlayHelp[0]);
                                                addr121:
                                                this.§#!q§.open();
                                                if(!(_loc5_ && this))
                                                {
                                                   break;
                                                }
                                                break;
                                                addr154:
                                             case 1:
                                                §§push(this.§#!q§);
                                                if(_loc6_ || this)
                                                {
                                                   §§pop().close();
                                                   break;
                                                   addr117:
                                                }
                                                else
                                                {
                                                   §§goto(addr121);
                                                }
                                                break;
                                             case 2:
                                                §3$§.§4!W§();
                                                break;
                                                addr103:
                                             case 3:
                                                §@"0§.§%P§(StateLevelEditorTestPlay.§%!Q§);
                                                mNextState = §@"0§.§%!Q§;
                                                break;
                                                addr97:
                                                addr89:
                                             case 4:
                                                §@"0§.§%P§(StateLevelEditor.§%!Q§);
                                                for(; !_loc5_; if(_loc5_ && param3)
                                                {
                                                   continue;
                                                },if(!_loc5_)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      addr30:
                                                      mNextState = §@"0§.§%!Q§;
                                                      if(!(_loc5_ && param3))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            break loop3;
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                      break loop3;
                                                   }
                                                   §§goto(addr117);
                                                }
                                                else
                                                {
                                                   §§goto(addr103);
                                                })
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §0"#§.§4"#§();
                                                      if(!(_loc6_ || param3))
                                                      {
                                                         break loop3;
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr97);
                                                }
                                                §§goto(addr89);
                                             case 5:
                                                §?s§.doJsCall("onFullscreenToggle");
                                                if(_loc6_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr30);
                                                }
                                          }
                                          return;
                                          §§push(6);
                                       }
                                       §§goto(addr296);
                                    }
                                    §§goto(addr296);
                                    §§push(5);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr291);
                                    }
                                 }
                                 §§goto(addr296);
                              }
                              §§goto(addr238);
                              addr130:
                           }
                           addr187:
                           §§goto(addr130);
                           addr187:
                        }
                        §§goto(addr130);
                     }
                     §8!W§.§for§();
                     §§goto(addr187);
                  }
               }
               §§goto(addr187);
            }
            §§goto(addr130);
         }
         §§goto(addr187);
      }
      
      private function §^!`§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = §%!x§.getScore();
         if(!_loc2_)
         {
            §`!v§.setText(_loc1_.toString(),"TextField_CurrentScore");
         }
      }
   }
}
