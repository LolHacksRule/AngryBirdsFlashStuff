package §]!8§
{
   import §3!R§.b2Body;
   import §3!R§.b2DebugDraw;
   import §3!R§.b2TimeStep;
   import §3!R§.b2World;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §>W§:b2Controller;
      
      b2internal var §8s§:b2Controller;
      
      protected var §^`§:b2ControllerEdge;
      
      protected var §7!6§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public function §00§(param1:b2TimeStep) : void
      {
      }
      
      public function §];§(param1:b2DebugDraw) : void
      {
      }
      
      public function §']§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!_loc5_)
         {
            _loc2_.§]O§ = this;
            if(_loc6_)
            {
               _loc2_.§3K§ = param1;
               if(!_loc5_)
               {
                  _loc2_.§+U§ = this.§^`§;
                  if(!_loc5_)
                  {
                     _loc2_.§,!R§ = null;
                     if(!_loc5_)
                     {
                        while(true)
                        {
                           this.§^`§ = _loc2_;
                           if(!_loc5_)
                           {
                              §§push(_loc2_.§+U§);
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       addr34:
                                       _loc2_.§+U§.§,!R§ = _loc2_;
                                       if(!_loc5_)
                                       {
                                          if(false)
                                          {
                                             continue;
                                          }
                                          addr149:
                                          addr75:
                                          var _loc3_:*;
                                          §§push((_loc3_ = this).§7!6§);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          var _loc4_:* = §§pop();
                                          if(!_loc5_)
                                          {
                                             _loc3_.§7!6§ = _loc4_;
                                          }
                                          if(!_loc6_)
                                          {
                                          }
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                param1.§2w§ = _loc2_;
                                                §§goto(addr142);
                                             }
                                          }
                                       }
                                       _loc2_.§&e§ = param1.§2w§;
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr75);
                              }
                              §§goto(addr34);
                           }
                           break;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr120);
                     }
                  }
                  §§goto(addr154);
               }
               addr142:
               loop4:
               while(true)
               {
                  §§push(_loc2_.§&e§);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && param1))
                        {
                           if(_loc6_)
                           {
                              break loop0;
                           }
                           addr154:
                           addr154:
                           while(true)
                           {
                              _loc2_.§'%§ = null;
                              if(_loc6_)
                              {
                                 continue loop7;
                              }
                           }
                        }
                        §§goto(addr190);
                     }
                     break;
                  }
                  addr120:
                  while(true)
                  {
                     §§pop().§'%§ = _loc2_;
                     if(_loc6_ || this)
                     {
                        if(!(_loc6_ || _loc2_))
                        {
                           continue loop4;
                        }
                        while(true)
                        {
                           if(true)
                           {
                              break loop4;
                           }
                           continue loop6;
                        }
                     }
                     break;
                  }
                  §§goto(addr190);
               }
               §§push((_loc3_ = param1).§'D§);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() + 1);
               }
               _loc4_ = §§pop();
               if(!(_loc5_ && _loc2_))
               {
                  _loc3_.§'D§ = _loc4_;
               }
               addr190:
               return;
            }
            §§goto(addr136);
         }
         §§goto(addr149);
      }
      
      public function §^%§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§2w§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§pop();
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(_loc2_.§]O§ == this);
                        if(_loc5_)
                        {
                           addr178:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              §§push(_loc2_.§,!R§);
                              if(_loc5_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§push(_loc2_.§,!R§);
                                       addr193:
                                       while(true)
                                       {
                                          §§pop().§+U§ = _loc2_.§+U§;
                                          addr196:
                                          addr165:
                                          while(true)
                                          {
                                          }
                                          loop5:
                                          while(true)
                                          {
                                             §§pop().§,!R§ = _loc2_.§,!R§;
                                             loop6:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr196);
                                                }
                                                addr138:
                                                addr229:
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§&e§);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§&e§);
                                                            break loop0;
                                                         }
                                                         addr144:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc2_.§'%§);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        _loc2_.§'%§.§&e§ = _loc2_.§&e§;
                                                                        addr117:
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           addr137:
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              if(this.§^`§ == _loc2_)
                                                                              {
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    this.§^`§ = _loc2_.§+U§;
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 addr79:
                                                                                 addr163:
                                                                              }
                                                                              while(param1.§2w§ == _loc2_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       param1.§2w§ = _loc2_.§&e§;
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break loop2;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             addr72:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr144);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr254);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr79);
                                                                                    }
                                                                                 }
                                                                                 break loop7;
                                                                              }
                                                                              break;
                                                                           }
                                                                           var _loc3_:*;
                                                                           §§push((_loc3_ = param1).§'D§);
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           var _loc4_:* = §§pop();
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              _loc3_.§'D§ = _loc4_;
                                                                           }
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           §§goto(addr254);
                                                                           addr74:
                                                                        }
                                                                        break loop7;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               §§goto(addr137);
                                                            }
                                                            §§goto(addr74);
                                                         }
                                                         §§goto(addr117);
                                                      }
                                                      addr93:
                                                   }
                                                   break loop0;
                                                }
                                                §§push((_loc3_ = this).§7!6§);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc4_ = §§pop();
                                                if(!_loc6_)
                                                {
                                                   _loc3_.§7!6§ = _loc4_;
                                                }
                                                §§goto(addr254);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_.§+U§);
                                    if(_loc5_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr163);
                                       }
                                       §§goto(addr138);
                                    }
                                    §§goto(addr165);
                                 }
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr254);
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr72);
                  }
               }
            }
            §§goto(addr178);
         }
         while(true)
         {
            §§pop().§'%§ = _loc2_.§'%§;
            if(!_loc6_)
            {
               §§goto(addr93);
            }
            §§goto(addr229);
         }
      }
      
      public function §?P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§^`§)
         {
            this.§^%§(this.§^`§.§3K§);
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §5!J§() : b2Controller
      {
         return this.§>W§;
      }
      
      public function §+&§() : b2World
      {
         return this.m_world;
      }
      
      public function §4!Z§() : b2ControllerEdge
      {
         return this.§^`§;
      }
   }
}
