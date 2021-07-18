package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §50§.StateMap;
   import §5u§.§-"#§;
   import §6!A§.§4!%§;
   import §6]§.§,"0§;
   import §;" §.§5L§;
   import §;" §.Quest;
   import §;<§.§'B§;
   import §;b§.§@"0§;
   import §;b§.StateLevelEditor;
   import §;b§.StateLevelPreview;
   import §<i§.§-"?§;
   import §=!7§.§6W§;
   import §=!7§.§@u§;
   import §`!,§.§[!&§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §&y§ extends §'B§
   {
      
      public static const §%!Q§:String = "InitState";
      
      public static var §[E§:§&y§;
      
      private static var §0!]§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!Q§ = "InitState";
         }
         do
         {
            §0!]§ = false;
         }
         while(!_loc1_);
         
      }
      
      private var §&!;§:Boolean = false;
      
      private var §;!v§:Boolean = true;
      
      private var §3R§:Timer;
      
      public function §&y§(param1:Boolean = false, param2:String = "InitState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super(param1,param2);
            while(true)
            {
               §[E§ = this;
               loop1:
               for(; !(_loc4_ && param2); if(_loc4_ && param1)
               {
                  continue;
               },§§goto(addr81))
               {
                  §?s§.registerMethod("loadLevel",this.onLoadLevelRequest);
                  loop2:
                  while(true)
                  {
                     §?s§.registerMethod("suspend",this.suspend);
                     while(true)
                     {
                        this.§3R§ = new Timer(4000);
                        loop4:
                        while(!(_loc4_ && param1))
                        {
                           continue loop1;
                           while(true)
                           {
                              this.§3R§.addEventListener(TimerEvent.TIMER,this.§5N§);
                              if(!(_loc4_ && this))
                              {
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public static function get §0>§() : Boolean
      {
         return §0!]§;
      }
      
      public static function set §0>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §0!]§ = param1;
         }
      }
      
      protected function §5N§(param1:TimerEvent) : void
      {
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               §`!v§ = new §>!V§(this);
               while(!(_loc2_ && _loc1_))
               {
                  §`!v§.init(§]!M§.§"!V§.Views.View_Initialize[0]);
                  loop2:
                  while(true)
                  {
                     this.§3R§.start();
                     addr114:
                     loop3:
                     while(true)
                     {
                        ((§`!v§.getItemByName("Container_Initialize") as §6W§).getItemByName("MovieClip_Pig") as §@u§).goToFrame(1,true);
                        addr95:
                        while(true)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
                  while(_loc1_ || _loc2_)
                  {
                     §§push(§5L§.§[E§);
                     loop6:
                     while(true)
                     {
                        §§push(§[!&§.§>!0§);
                        addr55:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.suspend);
                           addr58:
                           while(!_loc2_)
                           {
                              continue loop6;
                           }
                           §§goto(addr95);
                        }
                     }
                     if(!(_loc2_ && this))
                     {
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      private function suspend(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!§3!+§)
            {
               if(!_loc3_)
               {
                  addr69:
                  §[!^§.§@"7§.§<"%§().mNextState = §%!Q§;
               }
               while(true)
               {
                  §0"#§.§4"#§();
                  while(!_loc3_)
                  {
                     §'_§.pause();
                     if(_loc2_ || _loc3_)
                     {
                        §§goto(addr24);
                     }
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr69);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            loop0:
            while(this.§;!v§)
            {
               if(_loc1_ || _loc2_)
               {
                  §?s§.doJsCall("onFlashInitialize");
               }
               while(true)
               {
                  this.§;!v§ = false;
                  addr71:
                  loop2:
                  while(true)
                  {
                     §§push(§5L§.§[E§);
                     while(true)
                     {
                        §§pop().fetchQuests();
                        §§push(§5L§.§[E§);
                        addr66:
                        continue loop2;
                        if(!(_loc2_ && this))
                        {
                           §§pop().addEventListener(§[!&§.§>""§,this.onQuestsFetched);
                           if(!_loc2_)
                           {
                              break loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      private function onQuestsFetched(param1:§[!&§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §[!^§.§@"7§.§<"%§().mNextState = StateMap.§%!Q§;
            do
            {
               §5L§.§[E§.removeEventListener(§[!&§.§>""§,this.onQuestsFetched);
            }
            while(!_loc3_);
            
         }
      }
      
      private function §'!o§(param1:§[!&§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§-"?§ = null;
         var _loc2_:§5L§ = param1.target as §5L§;
         if(!(_loc4_ && _loc3_))
         {
            §§push(Boolean(_loc2_.questData));
            if(_loc5_)
            {
               §§push(§§pop());
               if(!(_loc4_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(_loc5_ || _loc2_)
                        {
                           §§push(_loc2_.questData == "");
                           if(!_loc4_)
                           {
                              §§push(!§§pop());
                              if(_loc5_ || param1)
                              {
                                 addr71:
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(_loc2_.§,?§);
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc4_)
                                          {
                                             addr102:
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§pop();
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      addr120:
                                                      §§push(_loc2_.§,?§ == "");
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         addr130:
                                                         addr129:
                                                         if(!§§pop())
                                                         {
                                                            addr190:
                                                            if(!_loc4_)
                                                            {
                                                               addr133:
                                                               _loc3_ = §-"?§.§ !N§(_loc2_.§,?§);
                                                               if(!_loc4_)
                                                               {
                                                                  Quest.§[!q§ = true;
                                                               }
                                                            }
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §@"0§.loadLevel(§-"?§.§!!B§(),StateLevelEditor.§%!Q§);
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                               §§goto(addr165);
                                                            }
                                                            addr190:
                                                         }
                                                         §@"0§.each(_loc3_,_loc2_.questData);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr156);
                                                            addr151:
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   addr165:
                                                   return;
                                                }
                                             }
                                             §§goto(addr130);
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr120);
                                    }
                                    §§goto(addr133);
                                 }
                                 else
                                 {
                                    §-"#§.§0o§ = null;
                                    §§goto(addr190);
                                 }
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr71);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr71);
               }
               §§goto(addr102);
            }
            §§goto(addr71);
         }
         §§goto(addr151);
      }
      
      override public function getTargetFrameRate() : int
      {
         return 30;
      }
      
      public function onLoadLevelRequest(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Object = null;
         if(_loc5_ || this)
         {
            §,"0§.log("onLoadLevelRequest");
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() == null);
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr135:
                              while(!_loc4_)
                              {
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr106:
                                    while(true)
                                    {
                                       §§push(§§pop().length == 0);
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           addr134:
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc5_ || param2))
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop12:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          while(true)
                                          {
                                             if(!§5L§.§[E§.hasEventListener(§[!&§.§>""§))
                                             {
                                                if(_loc5_ || param2)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         mNextState = StateMap.§%!Q§;
                                                         addr102:
                                                         while(true)
                                                         {
                                                            if(true)
                                                            {
                                                               addr142:
                                                               break loop12;
                                                            }
                                                            §§goto(addr104);
                                                         }
                                                         addr102:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr104);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr127);
                                                   }
                                                }
                                                §§goto(addr102);
                                             }
                                             §§goto(addr142);
                                          }
                                          addr66:
                                       }
                                       §§goto(addr102);
                                    }
                                    else
                                    {
                                       _loc3_ = {
                                          "edit":StateLevelEditor.§%!Q§,
                                          "play":StatePlayBS.§%!Q§,
                                          "preview":StateLevelPreview.§%!Q§
                                       };
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §@"0§.loadLevel(§-"?§.§ !N§(param1),_loc3_[param2]);
                                          addr173:
                                          §[!^§.§@"7§.§<"%§().mNextState = §@"0§.§%!Q§;
                                          §,"0§.log("Start loading level");
                                          addr199:
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                addr171:
                                                if(false)
                                                {
                                                   §§goto(addr173);
                                                }
                                                break;
                                             }
                                             §§goto(addr199);
                                          }
                                          addr180:
                                          §§goto(addr180);
                                       }
                                       §§goto(addr171);
                                    }
                                 }
                                 return;
                                 addr62:
                              }
                              while(true)
                              {
                                 if(_loc5_ || param2)
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(!(_loc4_ && param2))
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr106);
                                    }
                                    continue loop9;
                                    addr127:
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr135);
                              §§goto(addr104);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(mNextState.length > 0)
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr55);
               }
            }
            return §'B§.STATE_STATUS_RUNNING;
         }
         addr55:
         return §'B§.STATE_STATUS_COMPLETED;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.keyDown(param1);
            loop0:
            while(true)
            {
               §§push(param1.keyCode == Keyboard.X);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr89:
                        while(true)
                        {
                           §§push(Boolean(param1.ctrlKey));
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr88:
                  }
                  for(; §§pop(); §§goto(addr89))
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        continue loop0;
                     }
                     if(_loc2_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.onLoadLevelRequest("","edit");
                        continue loop0;
                     }
                  }
                  addr25:
                  return;
               }
               §§goto(addr88);
            }
         }
         §§goto(addr56);
      }
   }
}
