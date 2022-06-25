package §"!G§
{
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2DebugDraw;
   import §]=§.b2TimeStep;
   import §]=§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §,1§:b2Controller;
      
      b2internal var §7!Q§:b2Controller;
      
      protected var §3!e§:b2ControllerEdge;
      
      protected var §>!8§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public function §^l§(param1:b2TimeStep) : void
      {
      }
      
      public function §>[§(param1:b2DebugDraw) : void
      {
      }
      
      public function §>!L§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(_loc6_ || _loc3_)
         {
            _loc2_.controller = this;
            loop0:
            while(true)
            {
               _loc2_.§,S§ = param1;
               if(!_loc5_)
               {
                  _loc2_.§@B§ = this.§3!e§;
                  loop1:
                  while(true)
                  {
                     _loc2_.§3o§ = null;
                     loop2:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§3!e§ = _loc2_;
                              if(!_loc5_)
                              {
                                 §§push(_loc2_.§@B§);
                                 if(!_loc5_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop2;
                                             }
                                             addr49:
                                             _loc2_.§@B§.§3o§ = _loc2_;
                                             if(!_loc5_)
                                             {
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                addr88:
                                                var _loc3_:*;
                                                §§push((_loc3_ = this).§>!8§);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                var _loc4_:* = §§pop();
                                                if(_loc6_ || _loc3_)
                                                {
                                                   _loc3_.§>!8§ = _loc4_;
                                                }
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   _loc2_.§false§ = param1.§%!V§;
                                                }
                                                _loc2_.§,!2§ = null;
                                                addr193:
                                             }
                                             addr188:
                                             while(true)
                                             {
                                                param1.§%!V§ = _loc2_;
                                                if(_loc6_)
                                                {
                                                   break loop0;
                                                }
                                             }
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr88);
                                    }
                                    addr137:
                                    if(§§pop())
                                    {
                                       if(_loc6_ || this)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             addr154:
                                             _loc2_.§false§.§,!2§ = _loc2_;
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr163:
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr188);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr49);
                              }
                              break;
                           }
                           while(false)
                           {
                              §§goto(addr167);
                           }
                           addr194:
                           §§push((_loc3_ = param1).§2Z§);
                           if(_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                        }
                        continue loop1;
                        _loc4_ = §§pop();
                        if(!_loc5_)
                        {
                           _loc3_.§2Z§ = _loc4_;
                        }
                        addr209:
                        return;
                     }
                     continue loop0;
                  }
               }
               break;
            }
            while(true)
            {
               §§push(_loc2_.§false§);
               if(_loc6_)
               {
                  §§goto(addr137);
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr154);
               §§goto(addr49);
            }
         }
         §§goto(addr165);
      }
      
      public function §;! §(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§%!V§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop());
               if(!_loc6_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        §§push(_loc2_.controller == this);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(!§§pop());
                           loop1:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc5_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§push(_loc2_.§false§);
                                       if(!(_loc6_ && this))
                                       {
                                          break;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          §§pop().§,!2§ = _loc2_.§,!2§;
                                          loop9:
                                          while(true)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc2_.§,!2§);
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue loop9;
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(this.§3!e§ == _loc2_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               this.§3!e§ = _loc2_.§@B§;
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr58:
                                                                           if(param1.§%!V§ != _loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc5_ || _loc3_))
                                                                           {
                                                                              addr287:
                                                                              return;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              param1.§%!V§ = _loc2_.§false§;
                                                                              if(_loc6_ && this)
                                                                              {
                                                                                 addr267:
                                                                                 var _loc3_:*;
                                                                                 §§push((_loc3_ = this).§>!8§);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 var _loc4_:* = §§pop();
                                                                              }
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                              addr267:
                                                                              if(!_loc6_)
                                                                              {
                                                                                 _loc3_.§>!8§ = _loc4_;
                                                                              }
                                                                              §§goto(addr287);
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        addr229:
                                                                        loop5:
                                                                        while(_loc5_ || param1)
                                                                        {
                                                                           §§push(_loc2_.§@B§);
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§3o§ = _loc2_.§3o§;
                                                                              addr191:
                                                                              while(true)
                                                                              {
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.§false§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop7:
                                                                                    while(_loc5_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(_loc2_.§false§);
                                                                                                continue loop8;
                                                                                             }
                                                                                             addr213:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§3o§);
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   addr223:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr224:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_.§3o§);
                                                                                                            break loop9;
                                                                                                         }
                                                                                                         addr224:
                                                                                                      }
                                                                                                      addr170:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_.§@B§);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            break loop7;
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                   }
                                                                                                   addr223:
                                                                                                }
                                                                                                break loop9;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr267);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(_loc5_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§goto(addr223);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr170);
                                                                        }
                                                                        §§goto(addr267);
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     addr148:
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr58);
                                                   }
                                                   §§push((_loc3_ = param1).§2Z§);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc4_ = §§pop();
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      _loc3_.§2Z§ = _loc4_;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                   }
                                                   §§goto(addr267);
                                                }
                                                §§goto(addr155);
                                             }
                                             addr145:
                                             while(true)
                                             {
                                                §§pop().§false§ = _loc2_.§false§;
                                                §§goto(addr148);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§pop().§@B§ = _loc2_.§@B§;
                                             §§goto(addr229);
                                          }
                                       }
                                    }
                                    §§goto(addr213);
                                 }
                                 continue loop0;
                                 addr212:
                              }
                           }
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr159);
               }
            }
            §§goto(addr212);
         }
      }
      
      public function §=!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§3!e§)
         {
            this.§;! §(this.§3!e§.§,S§);
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §70§() : b2Controller
      {
         return this.§,1§;
      }
      
      public function §[Y§() : b2World
      {
         return this.m_world;
      }
      
      public function §%!k§() : b2ControllerEdge
      {
         return this.§3!e§;
      }
   }
}
