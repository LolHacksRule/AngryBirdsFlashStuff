package §@0§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2DebugDraw;
   import §3!`§.b2TimeStep;
   import §3!`§.b2World;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §0!>§:b2Controller;
      
      b2internal var §0!^§:b2Controller;
      
      protected var §>L§:b2ControllerEdge;
      
      protected var §3"'§:int;
      
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
      
      public function §4!6§(param1:b2TimeStep) : void
      {
      }
      
      public function §>"&§(param1:b2DebugDraw) : void
      {
      }
      
      public function §<",§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(_loc6_ || param1)
         {
            _loc2_.controller = this;
            while(true)
            {
               _loc2_.body = param1;
               if(_loc6_)
               {
                  _loc2_.§#@§ = this.§>L§;
                  if(!_loc5_)
                  {
                     if(!_loc6_)
                     {
                        continue;
                     }
                     _loc2_.§%M§ = null;
                     if(_loc6_ || _loc2_)
                     {
                        while(true)
                        {
                           this.§>L§ = _loc2_;
                           if(!_loc5_)
                           {
                              §§push(_loc2_.§#@§);
                              if(_loc6_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       §§goto(addr49);
                                    }
                                    break;
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr49);
                           }
                           break;
                        }
                     }
                     while(true)
                     {
                        addr168:
                        while(true)
                        {
                           param1.§9"&§ = _loc2_;
                        }
                     }
                     addr184:
                  }
                  while(true)
                  {
                     §§push(_loc2_.§4!m§);
                     if(_loc6_ || this)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && this))
                           {
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              if(!_loc5_)
                              {
                                 addr157:
                                 _loc2_.§4!m§.§0?§ = _loc2_;
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr166:
                                    if(true)
                                    {
                                       addr190:
                                       var _loc3_:*;
                                       §§push((_loc3_ = param1).§,!l§);
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc4_:* = §§pop();
                                       if(_loc6_)
                                       {
                                          _loc3_.§,!l§ = _loc4_;
                                       }
                                       break;
                                    }
                                    §§goto(addr168);
                                 }
                                 break;
                              }
                              loop2:
                              while(_loc5_ && this)
                              {
                                 while(true)
                                 {
                                    _loc2_.§0?§ = null;
                                    continue loop2;
                                 }
                              }
                              §§goto(addr184);
                              §§goto(addr168);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr157);
                  }
                  addr49:
                  _loc2_.§#@§.§%M§ = _loc2_;
                  if(!_loc5_)
                  {
                     if(false)
                     {
                        continue loop3;
                     }
                     addr95:
                     §§push((_loc3_ = this).§3"'§);
                     if(!(_loc5_ && param1))
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc4_ = §§pop();
                     if(_loc6_ || this)
                     {
                        _loc3_.§3"'§ = _loc4_;
                     }
                     if(_loc6_)
                     {
                        break;
                     }
                  }
                  return;
               }
               break;
            }
            _loc2_.§4!m§ = param1.§9"&§;
            §§goto(addr189);
         }
         §§goto(addr184);
      }
      
      public function §2!U§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§9"&§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_ || this)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        §§push(_loc2_.controller == this);
                        if(_loc5_ || param1)
                        {
                           addr168:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              §§push(_loc2_.§%M§);
                              if(!(_loc6_ && this))
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_.§%M§);
                                       addr183:
                                       while(true)
                                       {
                                          §§pop().§#@§ = _loc2_.§#@§;
                                          addr186:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr181:
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    §§push(_loc2_.§#@§);
                                    if(!_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_.§#@§);
                                             addr152:
                                             while(true)
                                             {
                                                §§pop().§%M§ = _loc2_.§%M§;
                                                addr155:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr150:
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          §§push(_loc2_.§4!m§);
                                          if(_loc5_)
                                          {
                                             break loop0;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             §§pop().§0?§ = _loc2_.§0?§;
                                             if(!_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§0?§);
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            addr219:
                                                            var _loc3_:*;
                                                            §§push((_loc3_ = this).§3"'§);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            var _loc4_:* = §§pop();
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            §§push(_loc2_.§0?§);
                                                            break;
                                                         }
                                                         addr132:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc2_.§4!m§);
                                                               continue loop11;
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                         continue loop2;
                                                         addr219:
                                                         if(_loc5_ || param1)
                                                         {
                                                            _loc3_.§3"'§ = _loc4_;
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(this.§>L§ == _loc2_)
                                                         {
                                                            while(_loc5_ || param1)
                                                            {
                                                               if(_loc6_ && this)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               this.§>L§ = _loc2_.§#@§;
                                                               if(_loc6_)
                                                               {
                                                               }
                                                               §§goto(addr254);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  break loop7;
                                                               }
                                                               continue loop7;
                                                            }
                                                            addr77:
                                                            addr113:
                                                         }
                                                         while(param1.§9"&§ == _loc2_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  param1.§9"&§ = _loc2_.§4!m§;
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  §§goto(addr219);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr77);
                                                               }
                                                            }
                                                            §§goto(addr219);
                                                         }
                                                         §§push((_loc3_ = param1).§,!l§);
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         _loc4_ = §§pop();
                                                         if(_loc5_ || this)
                                                         {
                                                            _loc3_.§,!l§ = _loc4_;
                                                         }
                                                         if(_loc6_ && param1)
                                                         {
                                                         }
                                                         §§goto(addr219);
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§pop().§4!m§ = _loc2_.§4!m§;
                                                   §§goto(addr113);
                                                   addr98:
                                                }
                                                else
                                                {
                                                   §§goto(addr150);
                                                }
                                             }
                                             addr254:
                                             return;
                                          }
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr219);
                  }
               }
            }
            §§goto(addr168);
         }
         while(true)
         {
            if(§§pop())
            {
               §§goto(addr132);
            }
            §§goto(addr98);
         }
      }
      
      public function §,A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§>L§)
         {
            this.§2!U§(this.§>L§.body);
            if(!(_loc2_ || _loc2_))
            {
               break;
            }
         }
      }
      
      public function §>X§() : b2Controller
      {
         return this.§0!>§;
      }
      
      public function §7!$§() : b2World
      {
         return this.m_world;
      }
      
      public function §`K§() : b2ControllerEdge
      {
         return this.§>L§;
      }
   }
}
