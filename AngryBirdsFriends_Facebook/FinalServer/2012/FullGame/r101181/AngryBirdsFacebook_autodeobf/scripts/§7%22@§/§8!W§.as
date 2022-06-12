package §7"@§
{
   import §#!e§.LevelManager;
   import §0!G§.§1-§;
   import §3![§.§^"1§;
   import §6o§.§="7§;
   import §9"!§.§9"3§;
   import §]!A§.;
   import flash.events.KeyboardEvent;
   
   public class §8!W§ extends §1-§
   {
       
      
      protected var §,3§:§^"1§;
      
      protected var §,!r§:Boolean = false;
      
      protected var §^!F§:Boolean = false;
      
      private var §8!o§:Boolean = false;
      
      public function §8!W§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
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
            this.§,3§.init();
         }
         do
         {
            this.§8!o§ = false;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               LevelManager.§<!S§ = false;
               addr155:
               while(true)
               {
                  §§push(§#6§.§6!z§);
                  addr141:
                  while(true)
                  {
                     §§push(true);
                     addr142:
                     while(true)
                     {
                        §§pop().§3H§(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      protected function getGameLogicController(param1:§9"3§) : §^"1§
      {
         return new §^"1§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_ || this)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            for(; §§pop() == §1-§.STATE_STATUS_RUNNING; if(_loc3_ || _loc2_)
            {
               return §§pop();
            })
            {
               while(true)
               {
                  §§push(this.§,!r§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(§#6§.isPaused);
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§,3§);
                                 loop5:
                                 while(true)
                                 {
                                    §§pop().update(param1);
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§,3§);
                                             loop23:
                                             while(true)
                                             {
                                                §§push(§§pop().§=! §());
                                                if(_loc3_ || param1)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                loop17:
                                                while(_loc3_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      addr225:
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr262:
                                                         while(true)
                                                         {
                                                            §§push(this.§^!F§);
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               break loop18;
                                                            }
                                                            if(_loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               break loop18;
                                                            }
                                                            continue loop18;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc4_ && _loc3_)
                                                         {
                                                            continue loop17;
                                                         }
                                                      }
                                                      addr225:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop11:
                                                         while(true)
                                                         {
                                                            this.§^!F§ = false;
                                                            for(; !(_loc4_ && _loc3_); continue loop11)
                                                            {
                                                               §§push(this.§,3§);
                                                               loop13:
                                                               while(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(§§pop().§@h§);
                                                                  while(true)
                                                                  {
                                                                     §§push(§^"1§.LEVEL_STATE_VICTORY2_END);
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           §§push(this.§,3§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop23;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        addr196:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§8!o§);
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr225);
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           addr208:
                                                                           this.§8!o§ = true;
                                                                           this.levelCompleted();
                                                                           addr211:
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr154:
                                                                                 mNextState = this.getVictoryState();
                                                                                 addr159:
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       LevelManager.§<!S§ = true;
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr31);
                                                                                       }
                                                                                       addr153:
                                                                                    }
                                                                                    break loop0;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           §§goto(addr208);
                                                                        }
                                                                        §§goto(addr154);
                                                                     }
                                                                     §§goto(addr67);
                                                                  }
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      addr31:
                                                      §§goto(addr305);
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                          addr245:
                                       }
                                       §§goto(addr299);
                                    }
                                 }
                              }
                           }
                           §§goto(addr245);
                        }
                     }
                     §§goto(addr296);
                  }
               }
            }
            addr305:
            loop9:
            while(true)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc3_))
               {
                  if(_loc4_ && param1)
                  {
                     break;
                  }
                  continue loop0;
               }
               addr67:
               while(true)
               {
                  if(_loc3_ || param1)
                  {
                     §§push(§^"1§.LEVEL_STATE_FAIL);
                     if(_loc4_)
                     {
                        continue loop20;
                     }
                     if(§§pop() != §§pop())
                     {
                        continue loop9;
                     }
                     if(_loc3_ || param1)
                     {
                        if(!_loc4_)
                        {
                           if(!_loc3_)
                           {
                              continue loop12;
                           }
                           if(!(_loc3_ || _loc3_))
                           {
                              continue loop12;
                           }
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           this.§+B§();
                           addr101:
                           if(_loc4_ && _loc2_)
                           {
                              continue loop25;
                           }
                           if(!(_loc4_ && param1))
                           {
                              if(!(_loc4_ && param1))
                              {
                                 if(!_loc4_)
                                 {
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          continue loop9;
                                       }
                                       addr296:
                                       while(true)
                                       {
                                          this.§,!r§ = false;
                                          addr299:
                                          while(true)
                                          {
                                             mNextState = §7l§.STATE_NAME;
                                             addr291:
                                             while(true)
                                             {
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr262);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr211);
                                 }
                                 §§goto(addr291);
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr159);
                        }
                        else
                        {
                           §§goto(addr196);
                        }
                     }
                  }
                  continue loop21;
                  §§goto(addr101);
                  break loop20;
               }
               continue loop25;
            }
            return §§pop();
            §§push(_loc2_);
         }
         §§goto(addr153);
      }
      
      protected function §+B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.keyDown(param1);
            while(true)
            {
               §§goto(addr53);
            }
         }
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(!_loc4_)
            {
               §§push(87);
               if(!(_loc4_ && _loc3_))
               {
                  if(§§pop() === _loc2_)
                  {
                     if(_loc3_ || param1)
                     {
                        addr109:
                        §§push(0);
                        if(!_loc4_)
                        {
                           addr122:
                        }
                     }
                     else
                     {
                        addr133:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(66);
                     if(!(_loc4_ && param1))
                     {
                        if(§§pop() === _loc2_)
                        {
                           §§goto(addr133);
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
                        addr78:
                        §#6§.§6!z§.§<<§();
                        break;
                        addr79:
                     case 1:
                        §§push(§#6§.§6!z§);
                        if(_loc3_ || _loc2_)
                        {
                           §§pop().§7!]§();
                           if(_loc3_ || _loc2_)
                           {
                              if(_loc3_ || this)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 addr53:
                                 §§goto(addr145);
                              }
                           }
                           break;
                        }
                        §§goto(addr78);
                        §§goto(addr79);
                  }
                  addr145:
                  while(§#6§.§4x§)
                  {
                     continue loop0;
                  }
                  §#6§.§'" §.keyDown(param1);
                  return;
               }
               §§goto(addr122);
            }
            §§goto(addr109);
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super.keyUp(param1);
         }
         do
         {
            §#6§.§'" §.keyUp(param1);
         }
         while(!_loc2_);
         
      }
      
      public function § "<§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§#6§.§6!z§.camera.§+!Z§);
         if(!_loc4_)
         {
            §§push(§§pop() - §#6§.§6!z§.camera.§07§);
            if(!_loc4_)
            {
               addr29:
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(§#6§.§6!z§.camera.§>E§);
            if(!_loc4_)
            {
               §§push(§§pop() - §#6§.§6!z§.camera.§07§);
               if(_loc3_)
               {
                  §§push(§§pop() / 2);
                  if(_loc4_ && this)
                  {
                  }
                  addr74:
                  var _loc2_:* = §§pop();
                  if(!(_loc4_ && this))
                  {
                     if(_loc1_ <= _loc2_)
                     {
                        §="7§.§2!'§("Cursor_Zoom_In");
                        if(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              addr101:
                              §="7§.§2!'§("Cursor_Zoom_Out");
                              addr104:
                           }
                           else
                           {
                              addr97:
                           }
                           return;
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr97);
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr74);
         }
         §§goto(addr29);
      }
   }
}
