package §<!U§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §<!+§.§[!!§;
   import §]2§.§[4§;
   import §]C§.§5z§;
   import flash.events.KeyboardEvent;
   
   public class §#W§ extends §]u§
   {
       
      
      protected var §4b§:§5z§;
      
      protected var §+!4§:Boolean = false;
      
      protected var §?S§:Boolean = false;
      
      public function §#W§(param1:Boolean, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      protected function levelStarted() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4b§.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §[!!§.§"#§ = false;
               loop1:
               while(true)
               {
                  §§push(§[&§.§&!'§);
                  loop2:
                  while(true)
                  {
                     §§push(true);
                     loop3:
                     while(true)
                     {
                        §§pop().§>!D§(§§pop());
                        while(true)
                        {
                           §§push(§[&§.§&!'§);
                           while(true)
                           {
                              §§push(true);
                              if(!(_loc1_ || _loc2_))
                              {
                                 break;
                              }
                              §§pop().§"C§(§§pop());
                              loop6:
                              while(true)
                              {
                                 if(this.§4b§ == null)
                                 {
                                    addr132:
                                    if(_loc1_)
                                    {
                                       this.§4b§ = new §5z§(§[&§.§&!'§);
                                    }
                                    while(true)
                                    {
                                    }
                                    addr132:
                                 }
                                 while(true)
                                 {
                                    §§push(§[&§.§&!'§);
                                    loop9:
                                    while(true)
                                    {
                                       if(§§pop().§@3§ == 0)
                                       {
                                          continue loop6;
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          §[&§.§2P§(this.§4b§);
                                          while(!_loc2_)
                                          {
                                             if(_loc1_ || _loc1_)
                                             {
                                                continue loop9;
                                             }
                                             continue loop6;
                                             if(_loc1_ || _loc2_)
                                             {
                                                if(_loc1_)
                                                {
                                                   return;
                                                   addr49:
                                                }
                                                continue loop1;
                                             }
                                          }
                                          addr118:
                                          while(true)
                                          {
                                             continue loop12;
                                          }
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                              }
                              if(!(_loc1_ || _loc1_))
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              §§pop().background.§?O§();
                              loop14:
                              while(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       §0Z§.§-m§.§5!T§ = false;
                                       if(!(_loc1_ || this))
                                       {
                                          continue loop14;
                                       }
                                       §§goto(addr40);
                                    }
                                    §§goto(addr49);
                                    continue;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr132);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = super.run(param1);
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() == §[4§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§+!4§);
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              this.§+!4§ = false;
                           }
                           loop2:
                           while(!(_loc3_ && param1))
                           {
                              if(_loc4_)
                              {
                                 mNextState = § !#§.§`O§;
                                 loop3:
                                 while(true)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       addr245:
                                       addr245:
                                       loop5:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             §§push(§5z§.§=g§);
                                             if(_loc4_ || param1)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      mNextState = this.getLoserState();
                                                   }
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      loop6:
                                                      while(!_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§?S§ = false;
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(this.§4b§);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§0!0§);
                                                                  addr128:
                                                                  while(true)
                                                                  {
                                                                     §§push(§5z§.LEVEL_STATE_VICTORY2_END);
                                                                     addr130:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ && _loc3_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              mNextState = this.getVictoryState();
                                                                              while(_loc3_)
                                                                              {
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§4b§);
                                                                                    addr175:
                                                                                    addr195:
                                                                                    while(_loc4_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop().§#h§());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                             addr164:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr188:
                                                                                       §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§?S§);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(_loc3_ && _loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr183);
                                                                                          }
                                                                                          §§goto(addr164);
                                                                                       }
                                                                                       addr183:
                                                                                       continue loop1;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().update(param1);
                                                                                       continue loop15;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §[!!§.§"#§ = true;
                                                                              this.levelCompleted();
                                                                           }
                                                                           continue loop3;
                                                                           addr131:
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     addr51:
                                                                     continue loop5;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc4_ || _loc3_)
                                                      {
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr189);
                                                         }
                                                         §§goto(addr131);
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr130);
                                          }
                                          §§goto(addr128);
                                       }
                                       return §§pop();
                                    }
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr244:
                                 §§goto(addr245);
                                 §§push(_loc2_);
                              }
                              §§goto(addr245);
                           }
                           continue loop0;
                        }
                        §§push(this.§4b§);
                        §§goto(addr195);
                     }
                  }
               }
               §§goto(addr244);
            }
            §§goto(addr245);
         }
         §§goto(addr168);
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.deActivate();
         }
         do
         {
            §[&§.§&!'§.background.§4v§();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.keyDown(param1);
         }
         do
         {
            §[&§.§&#§.keyDown(param1);
         }
         while(!(_loc3_ || this));
         
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
            §[&§.§&#§.keyUp(param1);
         }
         while(!(_loc3_ || _loc3_));
         
      }
   }
}
