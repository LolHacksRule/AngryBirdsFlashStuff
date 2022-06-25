package §9!+§
{
   import §+!g§.b2internal;
   import §>!L§.b2Body;
   import §>!L§.b2DebugDraw;
   import §>!L§.b2TimeStep;
   import §>!L§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §,!Z§:b2Controller;
      
      b2internal var §<!9§:b2Controller;
      
      protected var §;;§:b2ControllerEdge;
      
      protected var §+C§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function §<!;§(param1:b2TimeStep) : void
      {
      }
      
      public function §<!f§(param1:b2DebugDraw) : void
      {
      }
      
      public function §0!Y§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(_loc6_)
         {
            _loc2_.controller = this;
            if(!_loc5_)
            {
               _loc2_.§[r§ = param1;
               if(!_loc5_)
               {
                  _loc2_.§;!A§ = this.§;;§;
                  if(!_loc5_)
                  {
                     _loc2_.§ [§ = null;
                     if(_loc6_)
                     {
                        loop0:
                        while(true)
                        {
                           this.§;;§ = _loc2_;
                           loop1:
                           while(true)
                           {
                              §§push(_loc2_.§;!A§);
                              if(_loc6_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr42:
                                          _loc2_.§;!A§.§ [§ = _loc2_;
                                          if(_loc6_)
                                          {
                                             addr46:
                                             if(_loc5_)
                                             {
                                                continue;
                                             }
                                             if(false)
                                             {
                                                continue loop0;
                                             }
                                             addr83:
                                             var _loc3_:*;
                                             §§push((_loc3_ = this).§+C§);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(§§pop() + 1);
                                             }
                                             var _loc4_:* = §§pop();
                                             if(!(_loc5_ && param1))
                                             {
                                                _loc3_.§+C§ = _loc4_;
                                             }
                                             if(_loc6_)
                                             {
                                                _loc2_.§2e§ = param1.§@!U§;
                                                addr183:
                                                loop8:
                                                while(true)
                                                {
                                                   _loc2_.§-!U§ = null;
                                                   loop9:
                                                   while(true)
                                                   {
                                                      loop3:
                                                      while(true)
                                                      {
                                                         param1.§@!U§ = _loc2_;
                                                         addr163:
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§2e§);
                                                            if(_loc6_)
                                                            {
                                                               addr126:
                                                               §§push(Boolean(§§pop()));
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        if(_loc5_ && param1)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(!(_loc6_ || _loc2_))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§2e§);
                                                                           addr148:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§-!U§ = _loc2_;
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 addr157:
                                                                                 while(true)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       break loop2;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr157:
                                                                              }
                                                                              break loop1;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr157);
                                                                  }
                                                                  break;
                                                                  §§goto(addr126);
                                                               }
                                                               §§push((_loc3_ = param1).§<!-§);
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               _loc4_ = §§pop();
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  _loc3_.§<!-§ = _loc4_;
                                                               }
                                                               break loop1;
                                                               addr127:
                                                            }
                                                            §§goto(addr148);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr183:
                                                addr120:
                                             }
                                             §§goto(addr183);
                                          }
                                          break;
                                       }
                                       §§goto(addr46);
                                    }
                                    §§goto(addr83);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr42);
                           }
                           return;
                        }
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr157);
               }
               §§goto(addr163);
            }
            §§goto(addr183);
         }
         §§goto(addr120);
      }
      
      public function §>!F§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = param1.§@!U§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!_loc5_)
            {
               §§push(§§pop());
               if(_loc6_ || _loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§pop();
                     if(_loc6_)
                     {
                        §§push(_loc2_.controller == this);
                        loop1:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop2:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc5_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§push(_loc2_.§2e§);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          break;
                                       }
                                       loop23:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          addr149:
                                          loop10:
                                          while(_loc6_ || param1)
                                          {
                                             if(§§pop())
                                             {
                                                loop11:
                                                while(_loc6_ || _loc3_)
                                                {
                                                   §§push(_loc2_.§2e§);
                                                   while(true)
                                                   {
                                                      §§pop().§-!U§ = _loc2_.§-!U§;
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§-!U§);
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_.§-!U§);
                                                                     addr120:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§2e§ = _loc2_.§2e§;
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    if(this.§;;§ == _loc2_)
                                                                                    {
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§;;§ = _loc2_.§;!A§;
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             while(param1.§@!U§ == _loc2_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(_loc6_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            param1.§@!U§ = _loc2_.§2e§;
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               var _loc3_:*;
                                                                                                               §§push((_loc3_ = this).§+C§);
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - 1);
                                                                                                               }
                                                                                                               var _loc4_:* = §§pop();
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  _loc3_.§+C§ = _loc4_;
                                                                                                               }
                                                                                                            }
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                               addr303:
                                                                                                            }
                                                                                                            if(true)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                            addr303:
                                                                                                            return;
                                                                                                            addr288:
                                                                                                         }
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                §§goto(addr303);
                                                                                             }
                                                                                             §§push((_loc3_ = param1).§<!-§);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() - 1);
                                                                                             }
                                                                                             _loc4_ = §§pop();
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                _loc3_.§<!-§ = _loc4_;
                                                                                             }
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                §§goto(addr288);
                                                                                             }
                                                                                             addr59:
                                                                                          }
                                                                                          §§goto(addr303);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr59);
                                                                                 }
                                                                                 addr92:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr232:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.§ [§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                §§push(_loc2_.§ [§);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().§;!A§ = _loc2_.§;!A§;
                                                                                                   addr250:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                }
                                                                                                addr247:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr303);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.§;!A§);
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                break loop10;
                                                                                             }
                                                                                             addr214:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().§ [§ = _loc2_.§ [§;
                                                                                                break loop11;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr237:
                                                                                    }
                                                                                    §§goto(addr247);
                                                                                 }
                                                                                 addr232:
                                                                              }
                                                                           }
                                                                           §§goto(addr250);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr92);
                                                            }
                                                            §§goto(addr120);
                                                         }
                                                         continue loop10;
                                                         addr104:
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   addr128:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§2e§);
                                                      if(_loc6_ || this)
                                                      {
                                                         continue loop23;
                                                      }
                                                      §§goto(addr166);
                                                      continue loop8;
                                                   }
                                                }
                                                addr157:
                                                addr217:
                                             }
                                             §§goto(addr104);
                                          }
                                          while(!_loc5_)
                                          {
                                             if(_loc6_ || _loc2_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop2;
                                             §§goto(addr149);
                                          }
                                       }
                                    }
                                    §§goto(addr232);
                                 }
                                 continue loop0;
                                 addr231:
                              }
                              §§goto(addr237);
                           }
                        }
                     }
                     §§goto(addr232);
                  }
               }
            }
            §§goto(addr231);
         }
      }
      
      public function §-!g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§;;§)
         {
            this.§>!F§(this.§;;§.§[r§);
            if(!(_loc1_ || _loc1_))
            {
               break;
            }
         }
      }
      
      public function §'!;§() : b2Controller
      {
         return this.§,!Z§;
      }
      
      public function §1g§() : b2World
      {
         return this.m_world;
      }
      
      public function §%f§() : b2ControllerEdge
      {
         return this.§;;§;
      }
   }
}
