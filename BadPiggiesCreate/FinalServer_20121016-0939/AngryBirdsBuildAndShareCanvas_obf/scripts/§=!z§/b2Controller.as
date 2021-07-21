package §=!z§
{
   import §+S§.b2Body;
   import §+S§.b2DebugDraw;
   import §+S§.b2TimeStep;
   import §+S§.b2World;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §>""§:b2Controller;
      
      b2internal var §7b§:b2Controller;
      
      protected var §03§:b2ControllerEdge;
      
      protected var §&z§:int;
      
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
      
      public function §+!M§(param1:b2TimeStep) : void
      {
      }
      
      public function §=d§(param1:b2DebugDraw) : void
      {
      }
      
      public function §"[§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!(_loc6_ && _loc2_))
         {
            _loc2_.§#H§ = this;
            if(_loc5_)
            {
               _loc2_.§&!§ = param1;
               while(true)
               {
                  _loc2_.§>!^§ = this.§03§;
                  if(!(_loc6_ && _loc2_))
                  {
                     continue;
                  }
                  addr183:
                  while(true)
                  {
                     _loc2_.§1x§ = null;
                     loop1:
                     for(; _loc5_ || _loc3_; loop3:
                     while(true)
                     {
                        if(_loc5_ || this)
                        {
                           §§push(_loc2_.§=t§);
                           if(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 if(_loc5_ || param1)
                                 {
                                    if(!(_loc5_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_.§=t§);
                                       break loop3;
                                    }
                                 }
                                 while(false)
                                 {
                                    addr155:
                                    §§goto(addr209);
                                 }
                                 addr153:
                              }
                              var _loc3_:*;
                              §§push((_loc3_ = param1).§;"<§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc5_)
                              {
                                 _loc3_.§;"<§ = _loc4_;
                              }
                              §§goto(addr209);
                           }
                           break;
                        }
                        continue loop1;
                     },while(true)
                     {
                        §§pop().§1x§ = _loc2_;
                        if(_loc5_ || this)
                        {
                           §§goto(addr153);
                        }
                        addr209:
                        while(true)
                        {
                           param1.§!n§ = _loc2_;
                           continue loop1;
                        }
                        return;
                     })
                     {
                        while(true)
                        {
                           §§goto(addr155);
                        }
                     }
                  }
               }
               addr87:
            }
            _loc2_.§=t§ = param1.§!n§;
            §§goto(addr183);
         }
         §§goto(addr87);
      }
      
      public function §-A§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§!n§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!_loc6_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§pop();
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(_loc2_.§#H§ == this);
                        if(!_loc6_)
                        {
                           addr198:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc5_ || this)
                           {
                              §§push(_loc2_.§`"#§);
                              if(_loc5_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    addr216:
                                    while(true)
                                    {
                                       §§push(_loc2_.§`"#§);
                                       addr218:
                                       while(true)
                                       {
                                          §§pop().§>!^§ = _loc2_.§>!^§;
                                          addr221:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr216:
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc2_.§>!^§);
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(_loc2_.§>!^§);
                                             addr187:
                                             while(true)
                                             {
                                                §§pop().§`"#§ = _loc2_.§`"#§;
                                                addr190:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr142:
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc6_ && _loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   if(this.§03§ == _loc2_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            this.§03§ = _loc2_.§>!^§;
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               if(_loc6_ && _loc3_)
                                                               {
                                                                  break loop7;
                                                               }
                                                               if(_loc6_ && this)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               while(true)
                                                               {
                                                                  addr50:
                                                                  while(param1.§!n§ == _loc2_)
                                                                  {
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           param1.§!n§ = _loc2_.§=t§;
                                                                           if(_loc6_)
                                                                           {
                                                                              addr274:
                                                                           }
                                                                           if(true)
                                                                           {
                                                                              break loop6;
                                                                           }
                                                                           continue loop6;
                                                                           addr274:
                                                                           return;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     var _loc3_:*;
                                                                     §§push((_loc3_ = this).§&z§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     var _loc4_:* = §§pop();
                                                                     if(!_loc6_)
                                                                     {
                                                                        _loc3_.§&z§ = _loc4_;
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  break loop6;
                                                               }
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr216);
                                                         }
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr50);
                                                }
                                                §§push((_loc3_ = param1).§;"<§);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc4_ = §§pop();
                                                if(!(_loc6_ && this))
                                                {
                                                   _loc3_.§;"<§ = _loc4_;
                                                }
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§goto(addr249);
                                                }
                                                §§goto(addr274);
                                             }
                                             §§goto(addr190);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(_loc2_.§=t§);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(_loc2_.§=t§);
                                                   break loop0;
                                                }
                                                §§goto(addr274);
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_.§1x§);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§push(_loc2_.§1x§);
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr77);
                                                }
                                                break;
                                             }
                                             §§pop().§=t§ = _loc2_.§=t§;
                                             §§goto(addr142);
                                          }
                                          break loop0;
                                          §§goto(addr190);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr187);
                                 }
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr249);
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr198);
               }
            }
            §§goto(addr198);
         }
         while(true)
         {
            §§pop().§1x§ = _loc2_.§1x§;
            §§goto(addr173);
         }
      }
      
      public function §^S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§03§)
         {
            this.§-A§(this.§03§.§&!§);
            if(!(_loc2_ || _loc2_))
            {
               break;
            }
         }
      }
      
      public function §'!q§() : b2Controller
      {
         return this.§>""§;
      }
      
      public function §>[§() : b2World
      {
         return this.m_world;
      }
      
      public function §6"$§() : b2ControllerEdge
      {
         return this.§03§;
      }
   }
}
