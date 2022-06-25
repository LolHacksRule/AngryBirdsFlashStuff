package §!!R§
{
   import §7!u§.b2internal;
   import §`w§.b2Body;
   import §`w§.b2DebugDraw;
   import §`w§.b2TimeStep;
   import §`w§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §3=§:b2Controller;
      
      b2internal var §-!I§:b2Controller;
      
      protected var §"!Z§:b2ControllerEdge;
      
      protected var §[r§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public function §#$§(param1:b2TimeStep) : void
      {
      }
      
      public function §#!n§(param1:b2DebugDraw) : void
      {
      }
      
      public function §'!=§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!(_loc5_ && this))
         {
            _loc2_.§?!]§ = this;
            loop0:
            while(true)
            {
               _loc2_.§2d§ = param1;
               if(_loc6_)
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  _loc2_.§ @§ = this.§"!Z§;
                  if(!(_loc5_ && param1))
                  {
                     _loc2_.§#!l§ = null;
                     while(true)
                     {
                        while(true)
                        {
                           this.§"!Z§ = _loc2_;
                           if(!_loc5_)
                           {
                              §§push(_loc2_.§ @§);
                              if(_loc6_ || this)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§goto(addr49);
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr49);
                           }
                           break;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(_loc2_.§?J§);
                     if(_loc6_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && this))
                           {
                              if(_loc6_)
                              {
                                 addr150:
                                 _loc2_.§?J§.§=s§ = _loc2_;
                                 if(_loc6_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr49);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr49);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr150);
                  }
               }
               break;
            }
            while(false)
            {
               §§goto(addr156);
            }
            addr190:
            var _loc3_:*;
            §§push((_loc3_ = param1).§ !>§);
            if(_loc6_ || param1)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               _loc3_.§ !>§ = _loc4_;
            }
            addr49:
            _loc2_.§ @§.§#!l§ = _loc2_;
            if(_loc6_)
            {
               if(_loc5_)
               {
                  continue loop1;
               }
               while(false)
               {
                  continue loop2;
               }
               addr105:
               §§push((_loc3_ = this).§[r§);
               if(_loc6_ || this)
               {
                  §§push(§§pop() + 1);
               }
               _loc4_ = §§pop();
               if(_loc6_ || this)
               {
                  _loc3_.§[r§ = _loc4_;
               }
               if(_loc6_)
               {
                  _loc2_.§?J§ = param1.§-_§;
                  loop6:
                  while(true)
                  {
                     _loc2_.§=s§ = null;
                     if(_loc6_)
                     {
                        addr184:
                        while(true)
                        {
                           addr156:
                           while(true)
                           {
                              param1.§-_§ = _loc2_;
                              addr160:
                              while(true)
                              {
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    break loop2;
                                 }
                                 continue loop6;
                              }
                              continue loop6;
                           }
                           continue loop6;
                        }
                        addr184:
                     }
                  }
               }
               §§goto(addr184);
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §"!B§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§-_§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     §§pop();
                     if(_loc5_ || _loc2_)
                     {
                        §§push(_loc2_.§?!]§ == this);
                        if(_loc5_ || this)
                        {
                           addr178:
                           if(!§§pop())
                           {
                              §§push(_loc2_.§?J§);
                              if(_loc5_)
                              {
                                 continue;
                              }
                              loop12:
                              while(true)
                              {
                                 §§pop().§=s§ = _loc2_.§=s§;
                                 if(!_loc6_)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc2_.§=s§);
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   break loop0;
                                                }
                                                §§push(_loc2_.§=s§);
                                                while(true)
                                                {
                                                   §§pop().§?J§ = _loc2_.§?J§;
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr249);
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc2_.§ @§);
                                                   addr162:
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§pop().§#!l§ = _loc2_.§#!l§;
                                                      addr165:
                                                      while(true)
                                                      {
                                                         addr140:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§?J§);
                                                            if(!_loc5_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               continue loop6;
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop12;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                                addr57:
                                                if(!(_loc5_ || this))
                                                {
                                                   continue;
                                                }
                                                if(!_loc6_)
                                                {
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      param1.§-_§ = _loc2_.§?J§;
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(false)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(this.§"!Z§ == _loc2_)
                                                                  {
                                                                     while(_loc5_)
                                                                     {
                                                                        this.§"!Z§ = _loc2_.§ @§;
                                                                        if(_loc5_ || this)
                                                                        {
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr229:
                                                                     var _loc3_:*;
                                                                     §§push((_loc3_ = this).§[r§);
                                                                     break loop7;
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     var _loc4_:* = §§pop();
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        _loc3_.§[r§ = _loc4_;
                                                                     }
                                                                     addr249:
                                                                     return;
                                                                     addr93:
                                                                  }
                                                                  while(param1.§-_§ == _loc2_)
                                                                  {
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§goto(addr57);
                                                                     }
                                                                     §§goto(addr249);
                                                                  }
                                                               }
                                                               §§goto(addr146);
                                                               addr88:
                                                            }
                                                            §§push((_loc3_ = param1).§ !>§);
                                                            if(_loc5_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc4_ = §§pop();
                                                            if(_loc5_)
                                                            {
                                                               _loc3_.§ !>§ = _loc4_;
                                                            }
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               §§goto(addr229);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr93);
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr146);
                                             }
                                             while(true)
                                             {
                                                addr154:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§ @§);
                                                   if(!_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr160);
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr162);
                                                }
                                             }
                                             addr196:
                                          }
                                          §§goto(addr88);
                                       }
                                       §§goto(addr127);
                                    }
                                 }
                                 §§goto(addr249);
                              }
                           }
                           break;
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr160);
                  }
               }
            }
            §§goto(addr178);
         }
         while(true)
         {
            §§push(_loc2_.§#!l§);
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     addr193:
                     _loc2_.§#!l§.§ @§ = _loc2_.§ @§;
                     §§goto(addr196);
                  }
                  §§goto(addr249);
               }
               §§goto(addr154);
            }
            §§goto(addr193);
         }
      }
      
      public function §49§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§"!Z§)
         {
            this.§"!B§(this.§"!Z§.§2d§);
            if(!(_loc1_ || _loc1_))
            {
               break;
            }
         }
      }
      
      public function §+!N§() : b2Controller
      {
         return this.§3=§;
      }
      
      public function §%!D§() : b2World
      {
         return this.m_world;
      }
      
      public function §7!"§() : b2ControllerEdge
      {
         return this.§"!Z§;
      }
   }
}
