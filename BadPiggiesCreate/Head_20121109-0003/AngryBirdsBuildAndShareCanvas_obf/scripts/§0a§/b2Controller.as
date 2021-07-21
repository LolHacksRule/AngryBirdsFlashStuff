package §0a§
{
   import §"J§.b2Body;
   import §"J§.b2DebugDraw;
   import §"J§.b2TimeStep;
   import §"J§.b2World;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §7!'§:b2Controller;
      
      b2internal var §+!w§:b2Controller;
      
      protected var §[_§:b2ControllerEdge;
      
      protected var §7!h§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function §^!6§(param1:b2TimeStep) : void
      {
      }
      
      public function §'c§(param1:b2DebugDraw) : void
      {
      }
      
      public function §@!O§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!_loc5_)
         {
            _loc2_.§=R§ = this;
            if(_loc6_ || _loc3_)
            {
               _loc2_.§%+§ = param1;
               loop0:
               while(true)
               {
                  _loc2_.§>!#§ = this.§[_§;
                  if(!(_loc5_ && _loc2_))
                  {
                     while(true)
                     {
                        _loc2_.§@!Z§ = null;
                        loop5:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           loop6:
                           while(true)
                           {
                              this.§[_§ = _loc2_;
                              if(_loc6_)
                              {
                                 §§push(_loc2_.§>!#§);
                                 if(_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          §§goto(addr34);
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          §§push(_loc2_.§<1§);
                                          if(!(_loc5_ && this))
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr143:
                                                   _loc2_.§<1§.§7f§ = _loc2_;
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      if(false)
                                                      {
                                                         while(true)
                                                         {
                                                            param1.§`"=§ = _loc2_;
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               addr165:
                                                               if(_loc5_ && _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            _loc2_.§7f§ = null;
                                                            if(_loc6_)
                                                            {
                                                               break loop6;
                                                            }
                                                            §§goto(addr165);
                                                         }
                                                         addr154:
                                                         addr184:
                                                      }
                                                      else
                                                      {
                                                         addr185:
                                                         var _loc3_:*;
                                                         §§push((_loc3_ = param1).§-0§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         var _loc4_:* = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            _loc3_.§-0§ = _loc4_;
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr210);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr143);
                                       }
                                       addr172:
                                    }
                                    §§goto(addr85);
                                 }
                                 addr34:
                                 _loc2_.§>!#§.§@!Z§ = _loc2_;
                                 if(_loc5_)
                                 {
                                    addr210:
                                 }
                                 if(!_loc5_)
                                 {
                                    if(true)
                                    {
                                       addr85:
                                       §§push((_loc3_ = this).§7!h§);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    continue;
                                    if(_loc6_ || param1)
                                    {
                                       _loc3_.§7!h§ = _loc4_;
                                    }
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 continue loop5;
                                 return;
                              }
                              break;
                           }
                           §§goto(addr154);
                        }
                     }
                     addr68:
                  }
                  break;
               }
               _loc2_.§<1§ = param1.§`"=§;
               §§goto(addr184);
            }
            §§goto(addr172);
         }
         §§goto(addr68);
      }
      
      public function §>"<§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = param1.§`"=§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     §§pop();
                     if(!(_loc5_ && param1))
                     {
                        §§push(_loc2_.§=R§ == this);
                        if(_loc6_)
                        {
                           addr206:
                           if(!§§pop())
                           {
                              §§push(_loc2_.§<1§);
                              if(!(_loc5_ && _loc2_))
                              {
                                 continue;
                              }
                              loop18:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_.§<1§);
                                       addr169:
                                       while(true)
                                       {
                                          §§pop().§7f§ = _loc2_.§7f§;
                                          addr172:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                break loop0;
                                             }
                                             addr174:
                                          }
                                       }
                                    }
                                    addr167:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_.§7f§);
                                    if(!(_loc5_ && param1))
                                    {
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(_loc2_.§7f§);
                                             addr145:
                                             while(true)
                                             {
                                                §§pop().§<1§ = _loc2_.§<1§;
                                                if(!(_loc5_ && this))
                                                {
                                                   addr217:
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(this.§[_§ == _loc2_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               this.§[_§ = _loc2_.§>!#§;
                                                               loop11:
                                                               for(; !_loc5_; if(_loc5_ && this)
                                                               {
                                                                  continue;
                                                               },if(_loc6_)
                                                               {
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     §§goto(addr223);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        addr175:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§>!#§);
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 break loop11;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§<1§);
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§goto(addr169);
                                                                                 addr198:
                                                                              }
                                                                           }
                                                                           addr188:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§@!Z§ = _loc2_.§@!Z§;
                                                                              break loop10;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr222:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr167);
                                                               },§§goto(addr169))
                                                               {
                                                                  while(param1.§`"=§ == _loc2_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           param1.§`"=§ = _loc2_.§<1§;
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr172);
                                                                        }
                                                                     }
                                                                     var _loc3_:*;
                                                                     §§push((_loc3_ = this).§7!h§);
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     var _loc4_:* = §§pop();
                                                                     if(!_loc5_)
                                                                     {
                                                                        _loc3_.§7!h§ = _loc4_;
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§push((_loc3_ = param1).§-0§);
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     _loc3_.§-0§ = _loc4_;
                                                                  }
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                  }
                                                                  §§goto(addr250);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr188);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr250);
                                                      }
                                                      §§goto(addr56);
                                                   }
                                                   while(_loc6_ || this)
                                                   {
                                                      §§goto(addr198);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§@!Z§);
                                                      addr219:
                                                      while(true)
                                                      {
                                                         §§pop().§>!#§ = _loc2_.§>!#§;
                                                         §§goto(addr222);
                                                      }
                                                   }
                                                   addr101:
                                                   addr217:
                                                }
                                                §§goto(addr250);
                                             }
                                          }
                                       }
                                       §§goto(addr101);
                                    }
                                    §§goto(addr145);
                                    §§goto(addr174);
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr217);
                  }
               }
            }
            §§goto(addr206);
         }
         while(true)
         {
            §§push(_loc2_.§@!Z§);
            if(_loc6_ || this)
            {
               if(§§pop())
               {
                  §§goto(addr217);
               }
               §§goto(addr175);
            }
            §§goto(addr219);
         }
      }
      
      public function §"F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§[_§)
         {
            this.§>"<§(this.§[_§.§%+§);
            if(!(_loc2_ || this))
            {
               break;
            }
         }
      }
      
      public function §7"3§() : b2Controller
      {
         return this.§7!'§;
      }
      
      public function §4K§() : b2World
      {
         return this.m_world;
      }
      
      public function §&"2§() : b2ControllerEdge
      {
         return this.§[_§;
      }
   }
}
