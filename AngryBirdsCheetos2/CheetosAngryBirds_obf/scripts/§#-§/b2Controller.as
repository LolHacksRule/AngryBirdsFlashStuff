package §#-§
{
   import § o§.b2Body;
   import § o§.b2DebugDraw;
   import § o§.b2TimeStep;
   import § o§.b2World;
   import §"0§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §-![§:b2Controller;
      
      b2internal var §`D§:b2Controller;
      
      protected var §%! §:b2ControllerEdge;
      
      protected var §`#§:int;
      
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
      
      public function §+"§(param1:b2TimeStep) : void
      {
      }
      
      public function §!!d§(param1:b2DebugDraw) : void
      {
      }
      
      public function §^!,§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!_loc6_)
         {
            _loc2_.§^&§ = this;
            loop0:
            while(true)
            {
               _loc2_.§%!_§ = param1;
               if(!_loc6_)
               {
                  _loc2_.§<0§ = this.§%! §;
                  if(_loc6_ && _loc2_)
                  {
                     break;
                  }
                  _loc2_.§%t§ = null;
                  while(true)
                  {
                     addr46:
                     addr161:
                     while(true)
                     {
                        this.§%! § = _loc2_;
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr161:
                     while(true)
                     {
                        §§push(_loc2_.§4p§);
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_ && param1)
                              {
                                 addr209:
                              }
                              if(!(_loc6_ && this))
                              {
                                 addr142:
                                 §§push(_loc2_.§4p§);
                                 break;
                              }
                              continue;
                              addr209:
                              return;
                           }
                           addr174:
                           var _loc3_:*;
                           §§push((_loc3_ = param1).§7!"§);
                           if(_loc5_ || this)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc4_:* = §§pop();
                           if(_loc5_ || this)
                           {
                              _loc3_.§7!"§ = _loc4_;
                           }
                           §§goto(addr209);
                        }
                        break;
                     }
                     §§pop().§`X§ = _loc2_;
                     if(!(_loc6_ && _loc2_))
                     {
                        if(_loc5_)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 param1.§3j§ = _loc2_;
                                 §§goto(addr161);
                              }
                              §§goto(addr209);
                              addr157:
                           }
                           §§goto(addr174);
                        }
                        while(true)
                        {
                           §§goto(addr157);
                        }
                        addr166:
                     }
                     §§goto(addr209);
                  }
               }
               break;
            }
            _loc2_.§`X§ = null;
            §§goto(addr166);
         }
         §§goto(addr209);
      }
      
      public function §<%§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = param1.§3j§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     §§pop();
                     if(!(_loc5_ && this))
                     {
                        §§push(_loc2_.§^&§ == this);
                        if(!_loc5_)
                        {
                           addr199:
                           if(!§§pop())
                           {
                              §§push(_loc2_.§4p§);
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              loop19:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc2_.§4p§);
                                       loop10:
                                       while(true)
                                       {
                                          §§pop().§`X§ = _loc2_.§`X§;
                                          loop11:
                                          while(!_loc5_)
                                          {
                                             addr167:
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc2_.§`X§);
                                                if(!(_loc5_ && param1))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   continue loop8;
                                                }
                                                addr141:
                                                while(true)
                                                {
                                                   §§pop().§4p§ = _loc2_.§4p§;
                                                   addr144:
                                                   while(true)
                                                   {
                                                      if(_loc5_ && _loc2_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         break loop9;
                                                      }
                                                      addr217:
                                                      while(true)
                                                      {
                                                         addr168:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.§<0§);
                                                            if(_loc6_ || this)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  break loop11;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§4p§);
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               addr154:
                                                            }
                                                            addr188:
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§pop().§%t§ = _loc2_.§%t§;
                                                               addr191:
                                                               while(true)
                                                               {
                                                                  §§goto(addr154);
                                                                  continue loop18;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr167);
                                             }
                                             loop4:
                                             while(this.§%! § == _loc2_)
                                             {
                                                while(!(_loc6_ || _loc2_))
                                                {
                                                   §§goto(addr191);
                                                }
                                                while(true)
                                                {
                                                   this.§%! § = _loc2_.§<0§;
                                                   addr110:
                                                   while(true)
                                                   {
                                                      break loop4;
                                                   }
                                                   §§goto(addr99);
                                                }
                                                addr99:
                                             }
                                             while(param1.§3j§ == _loc2_)
                                             {
                                                if(_loc6_ || this)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            param1.§3j§ = _loc2_.§4p§;
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr94);
                                                               }
                                                               §§goto(addr99);
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr144);
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr110);
                                                }
                                                §§goto(addr245);
                                             }
                                             addr94:
                                             var _loc3_:*;
                                             §§push((_loc3_ = param1).§7!"§);
                                             if(_loc6_ || this)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             var _loc4_:* = §§pop();
                                             if(_loc6_)
                                             {
                                                _loc3_.§7!"§ = _loc4_;
                                             }
                                             if(_loc5_ && _loc3_)
                                             {
                                             }
                                             §§goto(addr245);
                                          }
                                          while(true)
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(_loc2_.§<0§);
                                                break;
                                             }
                                             break loop0;
                                             §§goto(addr168);
                                          }
                                          §§goto(addr188);
                                       }
                                    }
                                 }
                                 §§goto(addr111);
                              }
                           }
                           break;
                        }
                        §§goto(addr199);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr199);
               }
            }
            §§goto(addr199);
         }
         while(true)
         {
            §§push(_loc2_.§%t§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     addr214:
                     _loc2_.§%t§.§<0§ = _loc2_.§<0§;
                     §§goto(addr217);
                  }
                  addr245:
                  §§push((_loc3_ = this).§`#§);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc4_ = §§pop();
                  if(!_loc5_)
                  {
                     _loc3_.§`#§ = _loc4_;
                  }
                  return;
               }
               §§goto(addr168);
            }
            §§goto(addr214);
         }
      }
      
      public function §#R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§%! §)
         {
            this.§<%§(this.§%! §.§%!_§);
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      public function §;!B§() : b2Controller
      {
         return this.§-![§;
      }
      
      public function §5h§() : b2World
      {
         return this.m_world;
      }
      
      public function §>B§() : b2ControllerEdge
      {
         return this.§%! §;
      }
   }
}
