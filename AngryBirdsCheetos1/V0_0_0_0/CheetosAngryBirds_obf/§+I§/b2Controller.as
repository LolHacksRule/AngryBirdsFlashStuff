package §+I§
{
   import §&!"§.b2Body;
   import §&!"§.b2DebugDraw;
   import §&!"§.b2TimeStep;
   import §&!"§.b2World;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §0]§:b2Controller;
      
      b2internal var §3U§:b2Controller;
      
      protected var § R§:b2ControllerEdge;
      
      protected var §-!N§:int;
      
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
      
      public function §<!P§(param1:b2TimeStep) : void
      {
      }
      
      public function §2!9§(param1:b2DebugDraw) : void
      {
      }
      
      public function §3J§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!(_loc6_ && _loc3_))
         {
            _loc2_.§&#§ = this;
            if(_loc5_)
            {
               _loc2_.§7!@§ = param1;
               if(_loc5_ || _loc2_)
               {
                  _loc2_.§!+§ = this.§ R§;
                  if(!_loc6_)
                  {
                     _loc2_.§8P§ = null;
                     loop0:
                     while(true)
                     {
                        addr56:
                        while(true)
                        {
                           this.§ R§ = _loc2_;
                           if(!(_loc6_ && param1))
                           {
                              §§push(_loc2_.§!+§);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr38);
                                 }
                                 else
                                 {
                                    addr99:
                                    var _loc3_:*;
                                    §§push((_loc3_ = this).§-!N§);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc4_:* = §§pop();
                                    if(!_loc6_)
                                    {
                                       _loc3_.§-!N§ = _loc4_;
                                    }
                                    if(_loc5_)
                                    {
                                       _loc2_.§%;§ = param1.§8r§;
                                       break;
                                       addr131:
                                    }
                                 }
                                 §§goto(addr176);
                              }
                              addr38:
                              _loc2_.§!+§.§8P§ = _loc2_;
                              if(_loc5_ || this)
                              {
                                 continue loop0;
                              }
                              addr170:
                              while(false)
                              {
                                 while(true)
                                 {
                                    param1.§8r§ = _loc2_;
                                    addr176:
                                    §§goto(addr224);
                                 }
                              }
                              §§push((_loc3_ = param1).§5&§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc4_ = §§pop();
                              if(!(_loc6_ && _loc2_))
                              {
                                 _loc3_.§5&§ = _loc4_;
                              }
                              §§goto(addr224);
                           }
                           break;
                        }
                        while(true)
                        {
                           _loc2_.§;b§ = null;
                           §§goto(addr181);
                        }
                     }
                  }
                  §§goto(addr170);
               }
               addr224:
               while(true)
               {
                  §§push(_loc2_.§%;§);
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              §§push(_loc2_.§%;§);
                           }
                           else
                           {
                              while(true)
                              {
                                 if(!(_loc5_ || _loc2_))
                                 {
                                    break loop1;
                                 }
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                              addr181:
                           }
                        }
                        break;
                     }
                     break loop5;
                  }
                  §§pop().§;b§ = _loc2_;
                  if(_loc6_ && _loc2_)
                  {
                     break;
                  }
                  continue loop5;
               }
               addr224:
               return;
            }
            §§goto(addr188);
         }
         §§goto(addr131);
      }
      
      public function §5!&§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§8r§;
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
                     if(_loc5_)
                     {
                        §§push(_loc2_.§&#§ == this);
                        if(!_loc6_)
                        {
                           addr180:
                           if(!§§pop())
                           {
                              §§push(_loc2_.§%;§);
                              if(!(_loc6_ && _loc2_))
                              {
                                 continue;
                              }
                              loop11:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr134:
                                    if(_loc5_)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          §§push(_loc2_.§%;§);
                                          loop2:
                                          while(true)
                                          {
                                             §§pop().§;b§ = _loc2_.§;b§;
                                             if(_loc5_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                   addr97:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§;b§);
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop5:
                                                            for(; !(_loc6_ && this); if(_loc6_ && _loc3_)
                                                            {
                                                               continue;
                                                            },param1.§8r§ = _loc2_.§%;§,if(!_loc6_)
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr81);
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               §§goto(addr86);
                                                            },§§goto(addr224))
                                                            {
                                                               §§push(_loc2_.§;b§);
                                                               while(true)
                                                               {
                                                                  §§pop().§%;§ = _loc2_.§%;§;
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr81:
                                                                     while(true)
                                                                     {
                                                                        if(this.§ R§ == _loc2_)
                                                                        {
                                                                           while(!_loc6_)
                                                                           {
                                                                              this.§ R§ = _loc2_.§!+§;
                                                                              loop8:
                                                                              while(_loc5_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                                 while(param1.§8r§ == _loc2_)
                                                                                 {
                                                                                    if(!(_loc5_ || this))
                                                                                    {
                                                                                       var _loc3_:*;
                                                                                       §§push((_loc3_ = this).§-!N§);
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       var _loc4_:* = §§pop();
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr224:
                                                                                    }
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop8;
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          _loc3_.§-!N§ = _loc4_;
                                                                                       }
                                                                                    }
                                                                                    continue loop5;
                                                                                    return;
                                                                                 }
                                                                                 §§push((_loc3_ = param1).§5&§);
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    _loc3_.§5&§ = _loc4_;
                                                                                 }
                                                                                 if(_loc6_ && this)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr224);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§8P§);
                                                                                 addr188:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§!+§ = _loc2_.§!+§;
                                                                                    break loop5;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§!+§);
                                                                              addr162:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§8P§ = _loc2_.§8P§;
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_.§%;§);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    addr128:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr224);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr86:
                                                                           addr160:
                                                                        }
                                                                        §§goto(addr45);
                                                                     }
                                                                     addr81:
                                                                  }
                                                                  §§goto(addr224);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               addr149:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§!+§);
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr160);
                                                                     }
                                                                     §§goto(addr128);
                                                                  }
                                                                  §§goto(addr162);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr81);
                                                      }
                                                      §§goto(addr112);
                                                   }
                                                   §§goto(addr134);
                                                }
                                                continue loop1;
                                                addr148:
                                             }
                                             §§goto(addr224);
                                          }
                                       }
                                       addr136:
                                    }
                                    §§goto(addr148);
                                 }
                                 §§goto(addr97);
                              }
                           }
                           break;
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr136);
                  }
               }
            }
            §§goto(addr180);
         }
         while(true)
         {
            §§push(_loc2_.§8P§);
            if(!_loc6_)
            {
               if(§§pop())
               {
                  §§goto(addr186);
               }
               §§goto(addr149);
            }
            §§goto(addr188);
         }
      }
      
      public function §`Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§ R§)
         {
            this.§5!&§(this.§ R§.§7!@§);
            if(!_loc1_)
            {
               break;
            }
         }
      }
      
      public function §`!R§() : b2Controller
      {
         return this.§0]§;
      }
      
      public function §4!@§() : b2World
      {
         return this.m_world;
      }
      
      public function §;+§() : b2ControllerEdge
      {
         return this.§ R§;
      }
   }
}
