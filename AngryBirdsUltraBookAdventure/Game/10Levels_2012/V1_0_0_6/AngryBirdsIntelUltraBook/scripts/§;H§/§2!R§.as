package §;H§
{
   import §"x§.§?8§;
   import §+0§.§,!E§;
   import §-%§.§+V§;
   import §2_§.§'u§;
   import §3!G§.LevelManager;
   import §>! §.§^!c§;
   import flash.events.KeyboardEvent;
   
   public class §2!R§ extends §,!E§
   {
       
      
      protected var §[!D§:§+V§;
      
      protected var §3!e§:Boolean = false;
      
      protected var §"Z§:Boolean = false;
      
      private var §4d§:Boolean = false;
      
      public function §2!R§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§[!D§.init();
         }
         do
         {
            this.§4d§ = false;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            while(true)
            {
               LevelManager.§4$§ = false;
               loop1:
               while(!(_loc2_ && this))
               {
                  §§push(§^!c§.§5!Y§);
                  while(true)
                  {
                     §§push(true);
                     loop3:
                     while(true)
                     {
                        §§pop().§@!v§(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§^!c§.§5!Y§);
                           while(true)
                           {
                              §§push(true);
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§pop().§"!B§(§§pop());
                              loop6:
                              for(; !_loc2_; while(!(_loc2_ && _loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr42);
                              })
                              {
                                 while(true)
                                 {
                                    §^!c§.resume();
                                    loop8:
                                    while(true)
                                    {
                                       if(this.§[!D§ == null)
                                       {
                                          while(true)
                                          {
                                             this.§[!D§ = this.getGameLogicController(§^!c§.§5!Y§);
                                             addr112:
                                             while(true)
                                             {
                                             }
                                             addr75:
                                             if(_loc1_ || this)
                                             {
                                                continue loop8;
                                             }
                                          }
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          §§push(§^!c§.§5!Y§);
                                          loop12:
                                          while(true)
                                          {
                                             if(§§pop().§[!t§ != 0)
                                             {
                                                while(true)
                                                {
                                                   §^!c§.setController(this.§[!D§);
                                                   addr47:
                                                   while(_loc1_)
                                                   {
                                                      if(_loc1_ || _loc2_)
                                                      {
                                                         continue loop12;
                                                      }
                                                   }
                                                   continue loop6;
                                                }
                                                addr42:
                                             }
                                             while(!_loc2_)
                                             {
                                                §§goto(addr75);
                                             }
                                             continue loop11;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop().background.§0!j§();
                        if(_loc2_)
                        {
                           §§goto(addr47);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      protected function getGameLogicController(param1:§'u§) : §+V§
      {
         return new §+V§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop() == §,!E§.STATE_STATUS_RUNNING)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§3!e§);
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(§^!c§.isPaused);
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§[!D§);
                                    loop5:
                                    while(true)
                                    {
                                       §§pop().update(param1);
                                       loop6:
                                       while(true)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§[!D§);
                                                loop25:
                                                while(true)
                                                {
                                                   §§push(§§pop().§?J§());
                                                   if(_loc3_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop26:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop27:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this.§"Z§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(!(_loc3_ || _loc2_))
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop29:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§"Z§ = false;
                                                                                    loop30:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§[!D§);
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr125:
                                                                                             §§push(§§pop().§][§);
                                                                                             while(_loc3_ || _loc2_)
                                                                                             {
                                                                                                §§push(§+V§.LEVEL_STATE_VICTORY2_END);
                                                                                                loop11:
                                                                                                while(§§pop() != §§pop())
                                                                                                {
                                                                                                   §§push(this.§[!D§);
                                                                                                   if(_loc4_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   if(_loc4_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   §§push(§§pop().§][§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§+V§.§!`§);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(_loc3_ || param1)
                                                                                                                  {
                                                                                                                     mNextState = this.getLoserState();
                                                                                                                     addr82:
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        break loop12;
                                                                                                                     }
                                                                                                                     loop23:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           break loop11;
                                                                                                                        }
                                                                                                                        if(!(_loc3_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           mNextState = this.getVictoryState();
                                                                                                                           loop16:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc3_ || param1)
                                                                                                                                       {
                                                                                                                                          this.levelCompleted();
                                                                                                                                          continue loop23;
                                                                                                                                       }
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 continue loop30;
                                                                                                                                 addr180:
                                                                                                                              }
                                                                                                                              if(_loc4_ && _loc2_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              LevelManager.§4$§ = true;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    break loop12;
                                                                                                                                 }
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ || this))
                                                                                                                     {
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     this.§4d§ = true;
                                                                                                                     §§goto(addr180);
                                                                                                                  }
                                                                                                                  addr170:
                                                                                                               }
                                                                                                               §§goto(addr89);
                                                                                                            }
                                                                                                            §§goto(addr82);
                                                                                                         }
                                                                                                         break loop12;
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§4d§);
                                                                                                   if(!(_loc3_ || param1))
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   if(_loc4_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   if(!(_loc3_ || this))
                                                                                                   {
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      §§goto(addr170);
                                                                                                   }
                                                                                                   §§goto(addr92);
                                                                                                }
                                                                                                continue loop17;
                                                                                                §§goto(addr125);
                                                                                             }
                                                                                             addr287:
                                                                                             return §§pop();
                                                                                             addr126:
                                                                                          }
                                                                                          continue loop25;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr207:
                                                                              }
                                                                              addr26:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr126);
                                                                                 }
                                                                                 §§goto(addr62);
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§3!e§ = false;
                                                                           addr281:
                                                                           while(true)
                                                                           {
                                                                              mNextState = §-!X§.§"!s§;
                                                                              addr264:
                                                                              while(_loc3_ || _loc3_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr26);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr286:
                                                                                    §§push(_loc2_);
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                        }
                                                                        addr278:
                                                                     }
                                                                     §§goto(addr287);
                                                                  }
                                                                  §§goto(addr264);
                                                               }
                                                            }
                                                            addr220:
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                   }
                                                   §§goto(addr220);
                                                }
                                             }
                                             addr211:
                                          }
                                          §§goto(addr281);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr211);
                           }
                        }
                        §§goto(addr278);
                     }
                  }
               }
               §§goto(addr286);
            }
         }
         §§goto(addr207);
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            loop1:
            while(§^!c§.§@a§)
            {
               if(!_loc3_)
               {
                  continue loop0;
               }
               var _loc2_:* = param1.keyCode;
               if(_loc3_)
               {
                  §§push(87);
                  if(!_loc4_)
                  {
                     if(§§pop() === _loc2_)
                     {
                        if(_loc3_ || param1)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr113:
                           §§push(1);
                           if(!_loc3_)
                           {
                           }
                        }
                        §§goto(addr121);
                     }
                     else
                     {
                        §§push(66);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(§§pop() === _loc2_)
                           {
                              §§goto(addr113);
                           }
                           else
                           {
                              addr121:
                              switch(§§pop())
                              {
                                 case 0:
                                    addr61:
                                    §^!c§.§5!Y§.§4!l§();
                                    if(_loc3_)
                                    {
                                       break loop1;
                                    }
                                    break loop1;
                                 case 1:
                                    §§push(§^!c§.§5!Y§);
                                    if(_loc3_)
                                    {
                                       §§pop().§;T§();
                                       if(_loc4_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(true)
                                       {
                                          break loop1;
                                       }
                                       continue;
                                    }
                                    §§goto(addr61);
                              }
                              return;
                              §§push(2);
                           }
                           §§goto(addr121);
                        }
                     }
                  }
                  §§goto(addr121);
               }
               §§goto(addr113);
            }
            §^!c§.§-U§.keyDown(param1);
            §§goto(addr121);
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.keyUp(param1);
            do
            {
               §^!c§.§-U§.keyUp(param1);
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function §^1§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§^!c§.§5!Y§.camera.§05§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() - §^!c§.§5!Y§.camera.§0!P§);
            if(_loc3_ || this)
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§^!c§.§5!Y§.camera.§8!Y§);
            if(_loc3_)
            {
               §§push(§§pop() - §^!c§.§5!Y§.camera.§0!P§);
               if(!_loc4_)
               {
                  §§push(§§pop() / 2);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc1_)
            {
               if(_loc1_ <= _loc2_)
               {
                  §?8§.§8,§("Cursor_Zoom_In");
                  if(!_loc4_)
                  {
                     if(!_loc3_)
                     {
                        addr106:
                        §?8§.§8,§("Cursor_Zoom_Out");
                        addr109:
                     }
                     return;
                  }
                  §§goto(addr109);
               }
            }
            §§goto(addr106);
         }
         §§goto(addr49);
      }
   }
}
