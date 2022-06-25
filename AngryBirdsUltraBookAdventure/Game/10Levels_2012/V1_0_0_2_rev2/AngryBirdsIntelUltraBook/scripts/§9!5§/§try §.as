package §9!5§
{
   import §"m§.§`!=§;
   import §,!5§.§^g§;
   import §0!N§.LevelManager;
   import §<!>§.§?Y§;
   import §^_§.§=H§;
   import flash.events.KeyboardEvent;
   import §true§.§ _§;
   
   public class §try § extends §?Y§
   {
       
      
      protected var §%!q§:§`!=§;
      
      protected var §5d§:Boolean = false;
      
      protected var §6!`§:Boolean = false;
      
      private var §24§:Boolean = false;
      
      public function §try §(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§%!q§.init();
            do
            {
               this.§24§ = false;
            }
            while(!_loc1_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
            loop0:
            while(true)
            {
               LevelManager.§?G§ = false;
               while(true)
               {
                  §§push(§ _§.§!6§);
                  addr150:
                  while(true)
                  {
                     §§push(true);
                     addr151:
                     while(true)
                     {
                        §§pop().§2!d§(§§pop());
                        continue loop0;
                     }
                  }
                  loop13:
                  while(!(_loc2_ && _loc2_))
                  {
                     loop14:
                     while(true)
                     {
                        § _§.setController(this.§%!q§);
                        loop15:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              continue loop13;
                           }
                           if(!_loc2_)
                           {
                              §§push(§ _§.§!6§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(_loc1_)
                                 {
                                    continue;
                                 }
                                 addr123:
                                 while(_loc1_)
                                 {
                                    §§push(true);
                                    if(_loc1_ || _loc2_)
                                    {
                                       §§pop().§"C§(§§pop());
                                       while(!_loc2_)
                                       {
                                          § _§.resume();
                                          loop7:
                                          for(; _loc1_ || this; while(!(_loc2_ && _loc2_))
                                          {
                                             this.§%!q§ = this.getGameLogicController(§ _§.§!6§);
                                             §§goto(addr108);
                                          })
                                          {
                                             while(true)
                                             {
                                                if(this.§%!q§ == null)
                                                {
                                                   continue loop7;
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(§ _§.§!6§);
                                                   break loop15;
                                                   addr108:
                                                   while(true)
                                                   {
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr150);
                              }
                              break;
                              addr61:
                           }
                           §§goto(addr95);
                        }
                        while(true)
                        {
                           if(§§pop().§ i§ == 0)
                           {
                              if(_loc1_)
                              {
                                 this.levelStarted();
                              }
                              continue loop13;
                           }
                           continue loop14;
                           §§goto(addr61);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      protected function getGameLogicController(param1:§^g§) : §`!=§
      {
         return new §`!=§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop() == §?Y§.STATE_STATUS_RUNNING)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§5d§);
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(§ _§.isPaused);
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(this.§%!q§);
                                       while(true)
                                       {
                                          §§pop().update(param1);
                                          §§goto(addr266);
                                       }
                                       addr264:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§5d§ = false;
                                          loop7:
                                          while(true)
                                          {
                                             mNextState = §%@§.§?h§;
                                             loop8:
                                             while(true)
                                             {
                                                addr27:
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(§`!=§.§[3§);
                                                            if(!_loc3_)
                                                            {
                                                               if(§§pop() != §§pop())
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  mNextState = this.getLoserState();
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§6!`§);
                                                                        addr191:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr192:
                                                                           while(!(_loc3_ && param1))
                                                                           {
                                                                              if(_loc3_ && _loc3_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        this.§6!`§ = false;
                                                                        loop16:
                                                                        for(; _loc4_; while(_loc3_ && param1)
                                                                        {
                                                                           continue loop16;
                                                                        },LevelManager.§?G§ = true,while(true)
                                                                        {
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr170);
                                                                                    }
                                                                                    §§goto(addr184);
                                                                                 }
                                                                                 §§goto(addr187);
                                                                              }
                                                                              §§goto(addr160);
                                                                           }
                                                                           §§goto(addr149);
                                                                           §§goto(addr156);
                                                                        },addr149:,addr156:,continue loop9)
                                                                        {
                                                                           §§push(this.§%!q§);
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§2?§);
                                                                              addr167:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§`!=§.LEVEL_STATE_VICTORY2_END);
                                                                                 addr169:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§24§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!(_loc4_ || param1))
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§24§ = true;
                                                                                                   addr187:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.levelCompleted();
                                                                                                      addr160:
                                                                                                      while(_loc4_)
                                                                                                      {
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                }
                                                                                                addr184:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                mNextState = this.getVictoryState();
                                                                                                continue loop16;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr191);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr192);
                                                                                    }
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     addr266:
                                                                     §§goto(addr293);
                                                                  }
                                                               }
                                                               §§goto(addr108);
                                                            }
                                                            §§goto(addr169);
                                                         }
                                                         addr293:
                                                         while(true)
                                                         {
                                                            if(_loc3_ && param1)
                                                            {
                                                               addr292:
                                                               §§push(_loc2_);
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               addr216:
                                                               while(true)
                                                               {
                                                                  return this.§%!q§;
                                                               }
                                                            }
                                                         }
                                                         return §§pop();
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                       addr284:
                                    }
                                    §§goto(addr219);
                                 }
                              }
                              §§goto(addr216);
                           }
                        }
                        §§goto(addr284);
                     }
                  }
               }
               §§goto(addr292);
            }
         }
         §§goto(addr273);
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryState() : String
      {
         return null;
      }
      
      public function getLoserState() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            super.keyDown(param1);
            while(true)
            {
               §§goto(addr46);
            }
         }
         loop2:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(!(_loc4_ && _loc3_))
            {
               §§push(87);
               if(!(_loc4_ && param1))
               {
                  if(§§pop() === _loc2_)
                  {
                     if(_loc3_)
                     {
                        addr104:
                        §§push(0);
                        if(_loc3_)
                        {
                           addr117:
                        }
                        else
                        {
                           addr131:
                        }
                     }
                     else
                     {
                        addr128:
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§goto(addr131);
                        }
                     }
                  }
                  else
                  {
                     §§push(66);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(§§pop() === _loc2_)
                        {
                           §§goto(addr128);
                        }
                        else
                        {
                           §§push(2);
                        }
                     }
                  }
                  switch(§§pop())
                  {
                     case 0:
                        addr71:
                        § _§.§!6§.§1W§();
                        if(_loc3_)
                        {
                           break;
                        }
                        break loop2;
                     case 1:
                        §§push(§ _§.§!6§);
                        if(_loc3_ || this)
                        {
                           §§pop().§?!s§();
                           if(!(_loc4_ && _loc3_))
                           {
                              if(true)
                              {
                                 break;
                              }
                              addr46:
                              §§goto(addr140);
                           }
                           break loop2;
                        }
                        §§goto(addr71);
                  }
                  addr140:
                  §§goto(addr144);
               }
               §§goto(addr117);
            }
            §§goto(addr104);
         }
         addr144:
         while(§ _§.§[!d§)
         {
            continue loop0;
         }
         § _§.§?!]§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.keyUp(param1);
            do
            {
               § _§.§?!]§.keyUp(param1);
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function §3c§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§ _§.§!6§.camera.§=!I§);
         if(_loc4_)
         {
            §§push(§§pop() - § _§.§!6§.camera.§#!4§);
            if(!(_loc3_ && this))
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§ _§.§!6§.camera.§8V§);
            if(_loc4_ || _loc1_)
            {
               §§push(§§pop() - § _§.§!6§.camera.§#!4§);
               if(!_loc3_)
               {
                  §§push(§§pop() / 2);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               if(_loc1_ <= _loc2_)
               {
                  §=H§.§>@§("Cursor_Zoom_In");
                  if(_loc4_)
                  {
                     if(!(_loc4_ || _loc3_))
                     {
                        addr107:
                        §=H§.§>@§("Cursor_Zoom_Out");
                        addr110:
                     }
                     return;
                  }
                  §§goto(addr110);
               }
            }
            §§goto(addr107);
         }
         §§goto(addr35);
      }
   }
}
