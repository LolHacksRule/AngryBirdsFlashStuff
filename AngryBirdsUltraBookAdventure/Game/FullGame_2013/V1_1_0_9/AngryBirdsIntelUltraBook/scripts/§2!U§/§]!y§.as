package §2!U§
{
   import §"!i§.LevelManager;
   import §1!B§.§7n§;
   import §40§.§5G§;
   import §48§.§3!K§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import flash.events.KeyboardEvent;
   
   public class §]!y§ extends §9![§
   {
       
      
      protected var §5!P§:§3!K§;
      
      protected var §>!6§:Boolean = false;
      
      protected var §20§:Boolean = false;
      
      private var §-!O§:Boolean = false;
      
      public function §]!y§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§5!P§.init();
            do
            {
               this.§-!O§ = false;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
         }
         while(true)
         {
            LevelManager.§-!v§ = false;
            loop1:
            while(true)
            {
               §§push(§,!s§.§=!I§);
               loop2:
               while(true)
               {
                  §§push(true);
                  loop3:
                  while(true)
                  {
                     §§pop().§!C§(§§pop());
                     loop4:
                     while(true)
                     {
                        §§push(§,!s§.§=!I§);
                        while(_loc2_)
                        {
                           §§push(true);
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop3;
                           }
                           §§pop().§1!9§(§§pop());
                           loop6:
                           while(true)
                           {
                              §,!s§.resume();
                              loop7:
                              while(_loc2_ || _loc1_)
                              {
                                 if(this.§5!P§ == null)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       continue loop1;
                                    }
                                    addr118:
                                    while(true)
                                    {
                                       addr83:
                                       loop10:
                                       while(_loc2_ || _loc2_)
                                       {
                                          §§push(§,!s§.§=!I§);
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop().§0!6§ != 0)
                                             {
                                                continue;
                                             }
                                             if(_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                this.levelStarted();
                                             }
                                             while(true)
                                             {
                                                continue loop11;
                                                addr41:
                                                §§pop().background.§3!c§();
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          continue loop6;
                                       }
                                    }
                                    addr118:
                                 }
                                 while(true)
                                 {
                                    §,!s§.setController(this.§5!P§);
                                    §§goto(addr83);
                                    §§goto(addr118);
                                 }
                              }
                              continue loop4;
                           }
                           if(_loc1_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr41);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      protected function getGameLogicController(param1:§5G§) : §3!K§
      {
         return new §3!K§(param1);
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
         if(_loc3_ || this)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               if(§§pop() == §9![§.STATE_STATUS_RUNNING)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§>!6§);
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(§,!s§.isPaused);
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       §§push(this.§5!P§);
                                       loop5:
                                       while(true)
                                       {
                                          §§pop().update(param1);
                                          loop6:
                                          while(true)
                                          {
                                             addr241:
                                             while(true)
                                             {
                                                §§push(this.§5!P§);
                                                while(true)
                                                {
                                                   §§push(§§pop().§2d§());
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop25:
                                                            while(!_loc4_)
                                                            {
                                                               addr257:
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(this.§20§);
                                                                     if(!(_loc3_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        break;
                                                                     }
                                                                     continue loop25;
                                                                  }
                                                                  continue loop4;
                                                                  §§goto(addr257);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                               }
                                                            }
                                                            continue loop2;
                                                            addr255:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  this.§20§ = false;
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§push(this.§5!P§);
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§4!j§);
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§push(§3!K§.LEVEL_STATE_VICTORY2_END);
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§-!O§);
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                    addr174:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc3_ || _loc3_))
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          this.§-!O§ = true;
                                                                                          loop18:
                                                                                          for(; !(_loc4_ && _loc3_); loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc3_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   addr79:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_ && param1)
                                                                                                      {
                                                                                                         break loop4;
                                                                                                      }
                                                                                                      §§push(§3!K§.§%!%§);
                                                                                                      if(_loc4_ && _loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(§§pop() != §§pop())
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(!(_loc3_ || _loc2_))
                                                                                                               {
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  this.§<E§();
                                                                                                                  addr118:
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               addr294:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr164);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr153);
                                                                                                      }
                                                                                                      §§goto(addr118);
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   return §§pop();
                                                                                                }
                                                                                                continue loop0;
                                                                                                addr31:
                                                                                             }
                                                                                             continue loop18;
                                                                                          })
                                                                                          {
                                                                                             this.levelCompleted();
                                                                                             while(true)
                                                                                             {
                                                                                                addr138:
                                                                                                while(true)
                                                                                                {
                                                                                                   mNextState = this.getVictoryState();
                                                                                                   addr153:
                                                                                                   while(!(_loc4_ && this))
                                                                                                   {
                                                                                                      LevelManager.§-!v§ = true;
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       addr309:
                                                                                       while(true)
                                                                                       {
                                                                                          mNextState = §@!A§.§'!q§;
                                                                                       }
                                                                                       §§goto(addr294);
                                                                                    }
                                                                                    addr191:
                                                                                 }
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr258);
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr31);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr255);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(!(_loc3_ || param1))
                                          {
                                             addr314:
                                             §§push(_loc2_);
                                             break loop4;
                                          }
                                          this.§>!6§ = false;
                                       }
                                       addr299:
                                    }
                                    §§goto(addr309);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr241);
                           }
                        }
                        §§goto(addr299);
                     }
                  }
               }
               §§goto(addr314);
            }
         }
         §§goto(addr174);
      }
      
      protected function §<E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            mNextState = this.getLoserState();
         }
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
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super.keyDown(param1);
         }
         loop0:
         while(true)
         {
            addr47:
            addr136:
            addr140:
            while(§,!s§.§?C§)
            {
               continue loop0;
            }
            §,!s§.§ Q§.keyDown(param1);
            return;
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.keyUp(param1);
         }
         do
         {
            §,!s§.§ Q§.keyUp(param1);
         }
         while(!_loc3_);
         
      }
      
      public function §72§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§,!s§.§=!I§.camera.§0l§);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() - §,!s§.§=!I§.camera.§5!9§);
            if(!(_loc3_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(§,!s§.§=!I§.camera.§>!n§);
         if(_loc4_)
         {
            §§push(§§pop() - §,!s§.§=!I§.camera.§5!9§);
            if(!(_loc3_ && _loc3_))
            {
               addr70:
               §§push(§§pop() / 2);
               if(!_loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc4_ || _loc1_)
            {
               if(_loc1_ <= _loc2_)
               {
                  §7n§.§!!-§("Cursor_Zoom_In");
                  if(!(_loc3_ && _loc3_))
                  {
                     if(_loc3_ && this)
                     {
                        addr122:
                        §7n§.§!!-§("Cursor_Zoom_Out");
                        addr125:
                     }
                     return;
                  }
                  §§goto(addr125);
               }
            }
            §§goto(addr122);
         }
         §§goto(addr70);
      }
   }
}
