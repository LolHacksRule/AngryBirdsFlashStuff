package §["3§
{
   import §+#$§.b2Body;
   import §+#$§.b2DebugDraw;
   import §+#$§.b2TimeStep;
   import §+#$§.b2World;
   import §5"i§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §!"!§:b2Controller;
      
      b2internal var § #&§:b2Controller;
      
      protected var §,!A§:b2ControllerEdge;
      
      protected var §9#,§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public function Step(param1:b2TimeStep) : void
      {
      }
      
      public function §>"#§(param1:b2DebugDraw) : void
      {
      }
      
      public function §%j§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(_loc5_)
         {
            _loc2_.§>k§ = this;
            if(!(_loc6_ && this))
            {
               _loc2_.body = param1;
               if(_loc5_)
               {
                  _loc2_.§;4§ = this.§,!A§;
                  while(true)
                  {
                     _loc2_.§>!`§ = null;
                     loop1:
                     while(true)
                     {
                        addr51:
                        addr165:
                        while(true)
                        {
                           this.§,!A§ = _loc2_;
                           if(!(_loc5_ || this))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        loop6:
                        while(true)
                        {
                           if(false)
                           {
                              loop7:
                              while(true)
                              {
                                 param1.§?`§ = _loc2_;
                                 if(!_loc6_)
                                 {
                                    §§push(_loc2_.§7"!§);
                                    if(_loc5_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             addr145:
                                             if(!(_loc5_ || _loc2_))
                                             {
                                                _loc2_.§,i§ = null;
                                                addr183:
                                                continue;
                                                addr183:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_.§7"!§);
                                                §§goto(addr145);
                                             }
                                          }
                                          §§goto(addr214);
                                       }
                                       addr184:
                                       var _loc3_:*;
                                       §§push((_loc3_ = param1).§'"g§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          _loc3_.§'"g§ = _loc4_;
                                       }
                                       addr214:
                                       return;
                                       §§goto(addr214);
                                    }
                                    while(true)
                                    {
                                       §§pop().§,i§ = _loc2_;
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    addr173:
                                 }
                                 §§goto(addr214);
                              }
                           }
                           §§goto(addr184);
                        }
                     }
                  }
               }
               §§goto(addr152);
            }
            §§goto(addr165);
         }
         §§goto(addr36);
      }
      
      public function §<?§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = param1.§?`§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc6_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     §§pop();
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(_loc2_.§>k§ == this);
                        if(_loc6_ || this)
                        {
                           addr184:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc6_ || this)
                           {
                              §§push(_loc2_.§>!`§);
                              if(_loc6_ || this)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_.§>!`§);
                                       addr204:
                                       while(true)
                                       {
                                          §§pop().§;4§ = _loc2_.§;4§;
                                          addr207:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr202:
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc2_.§;4§);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_.§;4§);
                                             addr168:
                                             while(true)
                                             {
                                                §§pop().§>!`§ = _loc2_.§>!`§;
                                                addr171:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr166:
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc2_.§7"!§);
                                          if(!_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(_loc2_.§7"!§);
                                                   break loop0;
                                                }
                                                break;
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                §§push(_loc2_.§,i§);
                                                if(_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§,i§);
                                                         addr120:
                                                         while(true)
                                                         {
                                                            §§pop().§7"!§ = _loc2_.§7"!§;
                                                            addr123:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr118:
                                                   }
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(this.§,!A§ == _loc2_)
                                                      {
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  this.§,!A§ = _loc2_.§;4§;
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        while(param1.§?`§ == _loc2_)
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    param1.§?`§ = _loc2_.§7"!§;
                                                                                    if(_loc6_ || param1)
                                                                                    {
                                                                                    }
                                                                                    addr235:
                                                                                    var _loc3_:*;
                                                                                    §§push((_loc3_ = this).§9#,§);
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                    }
                                                                                    var _loc4_:* = §§pop();
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       _loc3_.§9#,§ = _loc4_;
                                                                                    }
                                                                                    break loop4;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              §§goto(addr123);
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 break loop7;
                                                                              }
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        §§push((_loc3_ = param1).§'"g§);
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           _loc3_.§'"g§ = _loc4_;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§goto(addr235);
                                                                        }
                                                                        break loop4;
                                                                        addr56:
                                                                     }
                                                                     §§goto(addr118);
                                                                     §§goto(addr123);
                                                                  }
                                                                  §§goto(addr235);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr166);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc6_ || this))
                                                                  {
                                                                     break loop8;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               addr147:
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§goto(addr56);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr120);
                                             }
                                          }
                                          break loop0;
                                       }
                                       return;
                                    }
                                    §§goto(addr168);
                                 }
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr171);
                  }
               }
            }
            §§goto(addr184);
         }
         while(true)
         {
            §§pop().§,i§ = _loc2_.§,i§;
            §§goto(addr147);
         }
      }
      
      public function §#u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§,!A§)
         {
            this.§<?§(this.§,!A§.body);
            if(!(_loc2_ || _loc2_))
            {
               break;
            }
         }
      }
      
      public function §>!>§() : b2Controller
      {
         return this.§!"!§;
      }
      
      public function §2q§() : b2World
      {
         return this.m_world;
      }
      
      public function §^!&§() : b2ControllerEdge
      {
         return this.§,!A§;
      }
   }
}
