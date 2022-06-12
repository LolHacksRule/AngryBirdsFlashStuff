package §<!c§
{
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2DebugDraw;
   import §48§.b2TimeStep;
   import §48§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §%"@§:b2Controller;
      
      b2internal var §-!Q§:b2Controller;
      
      protected var §'!7§:b2ControllerEdge;
      
      protected var §]!M§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function §4$§(param1:b2TimeStep) : void
      {
      }
      
      public function §!Y§(param1:b2DebugDraw) : void
      {
      }
      
      public function §53§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(_loc5_ || _loc2_)
         {
            _loc2_.§'" § = this;
            if(!_loc6_)
            {
               _loc2_.§ Y§ = param1;
               if(_loc5_)
               {
                  _loc2_.§<!H§ = this.§'!7§;
                  if(_loc5_ || _loc3_)
                  {
                     _loc2_.§3,§ = null;
                     loop0:
                     while(true)
                     {
                        loop1:
                        while(true)
                        {
                           this.§'!7§ = _loc2_;
                           if(_loc5_)
                           {
                              §§push(_loc2_.§<!H§);
                              if(_loc5_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       addr43:
                                       _loc2_.§<!H§.§3,§ = _loc2_;
                                       if(_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          addr89:
                                          var _loc3_:*;
                                          §§push((_loc3_ = this).§]!M§);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          var _loc4_:* = §§pop();
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             _loc3_.§]!M§ = _loc4_;
                                          }
                                          if(_loc5_ || _loc2_)
                                          {
                                             _loc2_.§'0§ = param1.§+q§;
                                             addr131:
                                             while(true)
                                             {
                                                _loc2_.§9!W§ = null;
                                                if(!(_loc5_ || this))
                                                {
                                                   break loop1;
                                                }
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   param1.§+q§ = _loc2_;
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§'0§);
                                                      if(!_loc6_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push((_loc3_ = param1).§,"4§);
                                                            if(_loc5_ || param1)
                                                            {
                                                               §§push(§§pop() + 1);
                                                            }
                                                            _loc4_ = §§pop();
                                                         }
                                                         else
                                                         {
                                                            addr194:
                                                         }
                                                         if(!(_loc5_ || _loc2_))
                                                         {
                                                            break loop1;
                                                         }
                                                         continue;
                                                         if(!_loc6_)
                                                         {
                                                            _loc3_.§,"4§ = _loc4_;
                                                         }
                                                         break loop1;
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().§9!W§ = _loc2_;
                                                      if(!_loc6_)
                                                      {
                                                         while(false)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§goto(addr194);
                                                         addr158:
                                                      }
                                                      break loop1;
                                                   }
                                                }
                                             }
                                             addr193:
                                             addr131:
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr43);
                           }
                           break;
                        }
                        return;
                     }
                  }
                  §§goto(addr158);
               }
               §§goto(addr188);
            }
         }
         §§goto(addr131);
      }
      
      public function §<V§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§+q§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!(_loc6_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr46:
                     §§pop();
                     if(_loc5_ || _loc3_)
                     {
                        §§push(_loc2_.§'" § == this);
                        if(!_loc6_)
                        {
                           addr188:
                           if(§§pop())
                           {
                              if(_loc5_ || param1)
                              {
                                 §§push(_loc2_.§3,§);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(_loc2_.§3,§);
                                          addr208:
                                          while(true)
                                          {
                                             §§pop().§<!H§ = _loc2_.§<!H§;
                                             addr211:
                                             while(true)
                                             {
                                             }
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             if(!(_loc5_ || this))
                                             {
                                                continue loop1;
                                             }
                                             addr180:
                                             while(true)
                                             {
                                                §§push(_loc2_.§'0§);
                                                if(!(_loc6_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(_loc5_)
                                                      {
                                                         §§push(_loc2_.§'0§);
                                                         while(true)
                                                         {
                                                            §§pop().§9!W§ = _loc2_.§9!W§;
                                                            addr161:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr67:
                                                         if(_loc6_ && _loc2_)
                                                         {
                                                            continue;
                                                         }
                                                         param1.§+q§ = _loc2_.§'0§;
                                                         if(_loc5_)
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               if(false)
                                                               {
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(this.§'!7§ == _loc2_)
                                                                     {
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              this.§'!7§ = _loc2_.§<!H§;
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    while(param1.§+q§ == _loc2_)
                                                                                    {
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          §§goto(addr67);
                                                                                       }
                                                                                       var _loc3_:*;
                                                                                       §§push((_loc3_ = this).§]!M§);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       var _loc4_:* = §§pop();
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          _loc3_.§]!M§ = _loc4_;
                                                                                       }
                                                                                       break loop9;
                                                                                    }
                                                                                    addr212:
                                                                                    §§push((_loc3_ = param1).§,"4§);
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                    }
                                                                                    _loc4_ = §§pop();
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       _loc3_.§,"4§ = _loc4_;
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr244);
                                                                                    }
                                                                                    break;
                                                                                    addr55:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr135:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§goto(addr161);
                                                                                 }
                                                                                 §§goto(addr244);
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr116:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              addr118:
                                                                              if(_loc5_)
                                                                              {
                                                                                 break loop0;
                                                                              }
                                                                              addr168:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§<!H§);
                                                                                 addr170:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§3,§ = _loc2_.§3,§;
                                                                                    continue loop16;
                                                                                 }
                                                                                 §§goto(addr118);
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        return;
                                                                        addr94:
                                                                     }
                                                                     §§goto(addr55);
                                                                  }
                                                                  addr89:
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            §§goto(addr94);
                                                         }
                                                         §§goto(addr244);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§9!W§);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr116);
                                                         }
                                                         §§goto(addr89);
                                                      }
                                                      addr132:
                                                      while(true)
                                                      {
                                                         §§pop().§'0§ = _loc2_.§'0§;
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr161);
                                                   }
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr158);
                                                §§goto(addr180);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_.§<!H§);
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             §§goto(addr168);
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr170);
                                       §§goto(addr211);
                                    }
                                 }
                                 §§goto(addr208);
                              }
                              §§goto(addr211);
                           }
                           else
                           {
                              §§push(_loc2_.§'0§);
                              if(_loc5_ || _loc3_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr188);
                     }
                     break;
                  }
               }
               §§goto(addr188);
            }
            §§goto(addr46);
         }
         while(true)
         {
            §§goto(addr132);
         }
      }
      
      public function §;!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§'!7§)
         {
            this.§<V§(this.§'!7§.§ Y§);
            if(_loc1_)
            {
               break;
            }
         }
      }
      
      public function §8!+§() : b2Controller
      {
         return this.§%"@§;
      }
      
      public function §%!y§() : b2World
      {
         return this.m_world;
      }
      
      public function §8F§() : b2ControllerEdge
      {
         return this.§'!7§;
      }
   }
}
