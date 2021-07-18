package §0![§
{
   import § "@§.§%!3§;
   import § "@§.StateLevelEditor;
   import § "@§.StateLevelPreview;
   import §"v§.§]!B§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'p§.§%+§;
   import §'p§.§`!T§;
   import §,B§.StateMap;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §6" §.§<8§;
   import §8" §.§,!q§;
   import §8" §.Quest;
   import §=!M§.§9!P§;
   import §="6§.§^"8§;
   import §@"5§.§1k§;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §^! § extends §5y§
   {
      
      public static const §'=§:String = "InitState";
      
      public static var §2=§:§^! §;
      
      private static var §@4§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §'=§ = "InitState";
         }
         do
         {
            §@4§ = false;
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §%>§:Boolean = false;
      
      private var §++§:Boolean = true;
      
      private var §6#§:Timer;
      
      public function §^! §(param1:Boolean = false, param2:String = "InitState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
            while(true)
            {
               §2=§ = this;
               loop1:
               for(; !(_loc3_ && param1); if(!(_loc4_ || param1))
               {
                  continue;
               },return,addr56:)
               {
                  §4m§.registerMethod("loadLevel",this.onLoadLevelRequest);
                  while(true)
                  {
                     §4m§.registerMethod("suspend",this.suspend);
                     while(_loc4_ || param1)
                     {
                        this.§6#§ = new Timer(4000);
                        while(_loc4_)
                        {
                           this.§6#§.addEventListener(TimerEvent.TIMER,this.§`"0§);
                           if(_loc4_ || _loc3_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public static function get §#3§() : Boolean
      {
         return §@4§;
      }
      
      public static function set §#3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §@4§ = param1;
         }
      }
      
      protected function §`"0§(param1:TimerEvent) : void
      {
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            loop0:
            while(true)
            {
               §?E§ = new §'s§(this);
               loop1:
               while(true)
               {
                  §?E§.init(§`7§.§>"?§.Views.View_Initialize[0]);
                  addr83:
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  addr90:
                  §§push(§,!q§.§2=§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§1k§.§=!P§);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§pop().addEventListener(§§pop(),this.§^!>§);
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           loop4:
                           while(true)
                           {
                              §<8§.init();
                              loop5:
                              while(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    §§push(§,!q§.§2=§);
                                    while(true)
                                    {
                                       §§push(§1k§.§]!]§);
                                       addr78:
                                       while(true)
                                       {
                                          §§pop().addEventListener(§§pop(),this.suspend);
                                          addr81:
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop5;
                                             }
                                             §§goto(addr83);
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr90);
                                    }
                                    addr76:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§6#§.start();
                                       break loop5;
                                    }
                                    addr127:
                                 }
                              }
                              while(true)
                              {
                                 ((§?E§.getItemByName("Container_Initialize") as §`!T§).getItemByName("MovieClip_Pig") as §%+§).goToFrame(1,true);
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr76);
               }
            }
         }
         §§goto(addr127);
      }
      
      private function suspend(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!§?C§)
            {
               if(_loc2_)
               {
                  §>"§.§%d§.§&[§().mNextState = §'=§;
               }
               while(true)
               {
                  §5!U§.§9&§();
                  loop1:
                  while(!(_loc3_ && _loc2_))
                  {
                     while(true)
                     {
                        §=!X§.pause();
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr24);
         }
         §§goto(addr54);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            while(this.§++§)
            {
               while(true)
               {
                  §4m§.doJsCall("onFlashInitialize");
               }
               if(!(_loc1_ && this))
               {
                  break;
               }
            }
            return;
         }
         while(true)
         {
            this.§++§ = false;
            loop3:
            while(true)
            {
               §§push(§,!q§.§2=§);
               loop4:
               while(true)
               {
                  §§pop().fetchQuests();
                  addr72:
                  while(_loc2_)
                  {
                     continue loop4;
                  }
                  continue loop3;
               }
            }
         }
      }
      
      private function onQuestsFetched(param1:§1k§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §>"§.§%d§.§&[§().mNextState = StateMap.§'=§;
         }
         do
         {
            §,!q§.§2=§.removeEventListener(§1k§.§"!'§,this.onQuestsFetched);
         }
         while(!_loc2_);
         
      }
      
      private function §^!>§(param1:§1k§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§]!B§ = null;
         var _loc2_:§,!q§ = param1.target as §,!q§;
         if(_loc5_ || _loc2_)
         {
            §§push(Boolean(_loc2_.questData));
            if(_loc5_)
            {
               §§push(§§pop());
               if(_loc5_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        addr49:
                        §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(_loc2_.questData == "");
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(!§§pop());
                              if(_loc5_ || param1)
                              {
                                 addr76:
                                 if(§§pop())
                                 {
                                    if(_loc5_)
                                    {
                                       §§push(_loc2_.§;!6§);
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr106:
                                             if(§§pop())
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr115:
                                                   §§pop();
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      addr125:
                                                      §§push(_loc2_.§;!6§ == "");
                                                      if(_loc5_)
                                                      {
                                                         addr130:
                                                         addr129:
                                                         if(!§§pop())
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               addr133:
                                                               _loc3_ = §]!B§.§+0§(_loc2_.§;!6§);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  Quest.§@>§ = true;
                                                               }
                                                            }
                                                            loop0:
                                                            while(true)
                                                            {
                                                               addr161:
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  §>"§.§%d§.§&[§().mNextState = §%!3§.§'=§;
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  addr200:
                                                                  while(true)
                                                                  {
                                                                     §%!3§.loadLevel(§]!B§.§!p§(),StateLevelEditor.§'=§);
                                                                     continue loop1;
                                                                  }
                                                               }
                                                            }
                                                            return;
                                                            addr195:
                                                         }
                                                         §%!3§.§-E§(_loc3_,_loc2_.questData);
                                                         if(_loc5_)
                                                         {
                                                            §§goto(addr161);
                                                            addr156:
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   §§goto(addr133);
                                                }
                                             }
                                             §§goto(addr130);
                                          }
                                          §§goto(addr115);
                                       }
                                       §§goto(addr125);
                                    }
                                    §§goto(addr156);
                                 }
                                 else
                                 {
                                    §^"8§.§@!k§ = null;
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr195);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr76);
               }
               §§goto(addr106);
            }
            §§goto(addr49);
         }
         §§goto(addr125);
      }
      
      override public function getTargetFrameRate() : int
      {
         return 30;
      }
      
      public function onLoadLevelRequest(param1:String, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         if(_loc4_ || this)
         {
            §9!P§.log("onLoadLevelRequest");
         }
         loop0:
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               §§push(§§pop() == null);
               loop2:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr139:
                           while(_loc4_)
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 addr110:
                                 while(true)
                                 {
                                    §§push(§§pop().length == 0);
                                    addr113:
                                    while(!(_loc5_ && this))
                                    {
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop0;
                        }
                        addr138:
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc4_ || param1))
                        {
                           break;
                        }
                        if(!§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              §§pop();
                              loop11:
                              while(true)
                              {
                                 §§push(param2);
                                 if(_loc4_ || param2)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() == "edit");
                                    if(!_loc4_)
                                    {
                                       continue loop10;
                                    }
                                    if(_loc4_ || param1)
                                    {
                                       if(!(_loc5_ && param2))
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc4_ || param1)
                                                {
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(!§,!q§.§2=§.hasEventListener(§1k§.§"!'§))
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            mNextState = StateMap.§'=§;
                                                            addr89:
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(false)
                                                            {
                                                               §§goto(addr108);
                                                            }
                                                         }
                                                         §§goto(addr89);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr139);
                                                   §§goto(addr108);
                                                }
                                                §§goto(addr89);
                                             }
                                             else
                                             {
                                                _loc3_ = {
                                                   "edit":StateLevelEditor.§'=§,
                                                   "play":StatePlayBS.§'=§,
                                                   "preview":StateLevelPreview.§'=§
                                                };
                                                if(!(_loc5_ && this))
                                                {
                                                   §%!3§.loadLevel(§]!B§.§+0§(param1),_loc3_[param2]);
                                                }
                                                addr175:
                                                §>"§.§%d§.§&[§().mNextState = §%!3§.§'=§;
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §9!P§.log("Start loading level");
                                                   if(!_loc5_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr175);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr175);
                                                }
                                                addr208:
                                                §§goto(addr208);
                                             }
                                          }
                                          return;
                                          addr56:
                                       }
                                       §§goto(addr138);
                                       §§goto(addr139);
                                    }
                                    §§goto(addr113);
                                 }
                                 break;
                              }
                              §§goto(addr110);
                           }
                        }
                        §§goto(addr56);
                     }
                  }
               }
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(mNextState.length > 0)
            {
               if(_loc3_)
               {
                  §§goto(addr50);
               }
            }
            return §5y§.STATE_STATUS_RUNNING;
         }
         addr50:
         return §5y§.STATE_STATUS_COMPLETED;
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.keyDown(param1);
            loop0:
            while(true)
            {
               §§push(param1.keyCode == Keyboard.X);
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr88:
                        while(true)
                        {
                           §§push(Boolean(param1.ctrlKey));
                           if(!(_loc3_ && param1))
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr87:
                  }
                  while(§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        this.onLoadLevelRequest("","edit");
                     }
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           addr61:
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr88);
                  }
                  return;
               }
               §§goto(addr87);
            }
         }
         §§goto(addr61);
      }
   }
}
