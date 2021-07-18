package §'!O§
{
   import §-!"§.§=p§;
   import §3!b§.§+!,§;
   import §9b§.§"!S§;
   import §^!5§.§,4§;
   import flash.events.KeyboardEvent;
   
   public class §<O§ extends §=j§
   {
       
      
      protected var §"!J§:§+!,§;
      
      protected var §!2§:Boolean = false;
      
      public function §<O§(param1:Boolean, param2:String)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§"!J§.init();
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §,4§.§58§ = false;
               loop1:
               while(true)
               {
                  if(this.§"!J§ == null)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        this.§"!J§ = new §+!,§(§"!S§.§-!7§);
                     }
                     loop2:
                     while(true)
                     {
                        addr101:
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        §§push(§"!S§.§-!7§);
                        loop11:
                        for(; !_loc2_; while(true)
                        {
                           §§push(§"!S§.§-!7§);
                           if(!(_loc1_ || _loc2_))
                           {
                              break;
                           }
                           §§push(true);
                           if(_loc1_)
                           {
                              §§pop().§3g§(§§pop());
                              §§goto(addr52);
                           }
                           else
                           {
                              §§goto(addr85);
                           }
                        })
                        {
                           §§push(true);
                           while(true)
                           {
                              §§pop().§%2§(§§pop());
                              continue loop11;
                           }
                           addr35:
                           if(!_loc1_)
                           {
                              while(true)
                              {
                                 addr109:
                                 while(true)
                                 {
                                    §"!S§.§8m§(this.§"!J§);
                                    addr114:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§"!S§.§-!7§);
                                       break loop11;
                                       addr94:
                                       loop10:
                                       while(true)
                                       {
                                          if(!(_loc1_ || this))
                                          {
                                             continue loop8;
                                          }
                                          §§goto(addr101);
                                          addr52:
                                          while(true)
                                          {
                                             if(_loc1_ || this)
                                             {
                                                if(!_loc1_)
                                                {
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             continue loop10;
                                             addr68:
                                             §"!S§.§^e§();
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             if(_loc2_ && _loc1_)
                                             {
                                                continue loop11;
                                             }
                                             §§goto(addr35);
                                          }
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              addr130:
                           }
                           return;
                        }
                        while(!_loc2_)
                        {
                           §§pop().background.§`!B§();
                           §§goto(addr94);
                        }
                        while(true)
                        {
                           if(§§pop().§#!A§ == 0)
                           {
                              continue loop1;
                           }
                           §§goto(addr109);
                        }
                        addr118:
                     }
                     addr159:
                  }
                  while(true)
                  {
                     §§goto(addr118);
                     §§goto(addr159);
                  }
               }
            }
         }
         §§goto(addr114);
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
            if(!_loc3_)
            {
               if(§§pop() == §=p§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§"!J§);
                     loop1:
                     while(true)
                     {
                        §§pop().update(param1);
                        loop2:
                        while(true)
                        {
                           §§push(this.§"!J§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop().§^Z§());
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr240:
                                    §§push(§§pop());
                                    loop23:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§pop();
                                             addr243:
                                             while(true)
                                             {
                                                §§push(this.§!2§);
                                                addr207:
                                                while(_loc4_ || _loc2_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                continue loop4;
                                             }
                                          }
                                          addr242:
                                       }
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      addr36:
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      addr267:
                                                      addr176:
                                                      loop12:
                                                      while(!(_loc3_ && this))
                                                      {
                                                         §§push(§+!,§.LEVEL_STATE_VICTORY2_END);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        addr266:
                                                                        §§push(_loc2_);
                                                                        break loop12;
                                                                     }
                                                                     mNextState = this.getVictoryState();
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr243);
                                                                  }
                                                               }
                                                               while(!_loc3_)
                                                               {
                                                                  §,4§.§58§ = true;
                                                                  loop15:
                                                                  for(; !(_loc3_ && _loc3_); while(true)
                                                                  {
                                                                     if(!(_loc4_ || param1))
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop22;
                                                                     }
                                                                     addr217:
                                                                     while(true)
                                                                     {
                                                                        this.§!2§ = false;
                                                                        addr220:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§"!J§);
                                                                           break loop13;
                                                                        }
                                                                     }
                                                                  })
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.levelCompleted();
                                                                        continue loop15;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                            §§push(this.§"!J§);
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc4_ || this)
                                                            {
                                                               §§push(§§pop().§#E§);
                                                               continue;
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop3;
                                                         §§goto(addr36);
                                                      }
                                                      return §§pop();
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§+!,§.§+!J§);
                                                      if(_loc3_ && this)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() == §§pop());
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc4_)
                                                            {
                                                               continue loop23;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!(_loc4_ || _loc2_))
                                                                           {
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       §§push(§"!S§.§-!7§.slingshot.§@!§());
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       addr53:
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       addr119:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop19;
                                                                                          §§goto(addr53);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr143);
                                                                                 }
                                                                                 §§goto(addr220);
                                                                              }
                                                                              continue loop22;
                                                                           }
                                                                           mNextState = this.getLoserState();
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                               }
                                                               addr70:
                                                            }
                                                            §§goto(addr119);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr207);
                                                         }
                                                      }
                                                      continue loop23;
                                                   }
                                                   §§goto(addr185);
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr217);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr242);
                              }
                              §§goto(addr240);
                           }
                        }
                     }
                  }
               }
               §§goto(addr266);
            }
            §§goto(addr267);
         }
         §§goto(addr164);
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
            §"!S§.§-!7§.background.§=b§();
         }
         while(!_loc1_);
         
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super.keyDown(param1);
            do
            {
               §"!S§.§]O§.keyDown(param1);
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.keyUp(param1);
            do
            {
               §"!S§.§]O§.keyUp(param1);
            }
            while(!(_loc3_ || this));
            
         }
      }
   }
}
