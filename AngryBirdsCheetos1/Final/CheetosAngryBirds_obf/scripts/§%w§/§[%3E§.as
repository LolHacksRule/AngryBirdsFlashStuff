package §%w§
{
   import §-!@§.§@!Q§;
   import §-H§.§&c§;
   import §?m§.§7?§;
   import §]!F§.§7e§;
   import §`C§.§9!'§;
   import flash.events.KeyboardEvent;
   
   public class §[>§ extends §;s§
   {
       
      
      protected var §>_§:§@!Q§;
      
      protected var §6X§:Boolean = false;
      
      public function §[>§(param1:Boolean, param2:String)
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
         if(!(_loc1_ && _loc2_))
         {
            this.§>_§.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.activate();
            loop0:
            while(true)
            {
               §7e§.§-!F§ = false;
               loop14:
               while(true)
               {
                  if(!(_loc1_ || _loc1_))
                  {
                     continue loop0;
                  }
                  §§push(§7?§.§4!H§);
                  if(!_loc2_)
                  {
                     addr52:
                     if(!(_loc1_ || _loc2_))
                     {
                        break;
                     }
                     §§pop().background.§+^§();
                     continue;
                  }
                  loop10:
                  for(; _loc1_ || this; §§goto(addr93))
                  {
                     if(§§pop().§#5§ == 0)
                     {
                        while(true)
                        {
                           this.levelStarted();
                           addr109:
                           loop12:
                           while(!_loc2_)
                           {
                              addr111:
                              if(!(_loc2_ && this))
                              {
                                 while(true)
                                 {
                                    §7?§.§-!P§(this.§>_§);
                                    continue loop14;
                                 }
                                 addr42:
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    addr166:
                                    while(true)
                                    {
                                       §§push(§7?§.§4!H§);
                                       break loop14;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(this.§>_§ == null)
                                    {
                                       while(true)
                                       {
                                          this.§>_§ = new §@!Q§(§7?§.§4!H§);
                                          break loop12;
                                          §§goto(addr111);
                                       }
                                       addr124:
                                    }
                                    addr94:
                                    while(true)
                                    {
                                       continue loop10;
                                    }
                                 }
                                 addr71:
                                 addr145:
                              }
                              §§goto(addr124);
                           }
                           while(_loc1_ || _loc1_)
                           {
                              §§goto(addr94);
                           }
                           addr161:
                           while(true)
                           {
                              §§push(§7?§.§4!H§);
                              break loop10;
                           }
                        }
                        addr107:
                     }
                     §§goto(addr71);
                  }
                  addr93:
                  while(true)
                  {
                     §§push(true);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§pop().§@^§(§§pop());
                     §§goto(addr145);
                     §§goto(addr97);
                  }
                  addr97:
                  while(true)
                  {
                     §§pop().§'![§(§§pop());
                     §§goto(addr161);
                  }
               }
               while(true)
               {
                  §§goto(addr160);
                  §§goto(addr52);
               }
            }
         }
         §§goto(addr166);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = super.run(param1);
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               if(§§pop() == §&c§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§>_§);
                     loop1:
                     while(true)
                     {
                        §§pop().update(param1);
                        loop2:
                        while(true)
                        {
                           §§push(this.§>_§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop().§-2§());
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§pop();
                                          addr172:
                                          while(true)
                                          {
                                             §§push(this.§6X§);
                                             if(!_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                if(!_loc4_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!(_loc4_ || this))
                                             {
                                                continue loop5;
                                             }
                                          }
                                          continue loop4;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(_loc4_)
                                          {
                                             this.§6X§ = false;
                                             loop10:
                                             while(true)
                                             {
                                                §§push(this.§>_§);
                                                loop11:
                                                while(!_loc3_)
                                                {
                                                   §§push(§§pop().§8!Y§);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§@!Q§.LEVEL_STATE_VICTORY2_END);
                                                      addr129:
                                                      while(true)
                                                      {
                                                         if(§§pop() != §§pop())
                                                         {
                                                            §§push(this.§>_§);
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop3;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§goto(addr201);
                                                            }
                                                            mNextState = this.getVictoryState();
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               §7e§.§-!F§ = true;
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.levelCompleted();
                                                                     addr111:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                      }
                                                      addr49:
                                                      continue loop11;
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§push(§@!Q§.§5;§);
                                                         if(!_loc3_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           mNextState = this.getLoserState();
                                                                           addr88:
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr25:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                 }
                                                                                 addr25:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr172);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr116);
                                                                           }
                                                                           §§goto(addr25);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr130);
                                                                        }
                                                                     }
                                                                     §§goto(addr136);
                                                                  }
                                                                  §§goto(addr111);
                                                               }
                                                               §§goto(addr88);
                                                            }
                                                            §§goto(addr25);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr129);
                                                         }
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                                continue loop1;
                                             }
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr25);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr201);
            }
            addr201:
            return _loc2_;
         }
         §§goto(addr120);
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
         if(_loc2_ || this)
         {
            super.deActivate();
            do
            {
               §7?§.§4!H§.background.§5!<§();
            }
            while(!_loc2_);
            
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.keyDown(param1);
            do
            {
               §7?§.§75§.keyDown(param1);
            }
            while(!_loc3_);
            
         }
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
               §7?§.§75§.keyUp(param1);
            }
            while(!_loc2_);
            
         }
      }
   }
}
