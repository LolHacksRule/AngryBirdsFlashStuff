package §0<§
{
   import §#V§.b2Body;
   import §#V§.b2DebugDraw;
   import §#V§.b2TimeStep;
   import §#V§.b2World;
   import §3!m§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §@o§:b2Controller;
      
      b2internal var §[2§:b2Controller;
      
      protected var §4!B§:b2ControllerEdge;
      
      protected var §2R§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public function §8y§(param1:b2TimeStep) : void
      {
      }
      
      public function §<9§(param1:b2DebugDraw) : void
      {
      }
      
      public function §@O§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(!(_loc5_ && _loc3_))
         {
            _loc2_.§-U§ = this;
            loop0:
            while(true)
            {
               _loc2_.§?!t§ = param1;
               loop1:
               while(true)
               {
                  _loc2_.§%!y§ = this.§4!B§;
                  if(_loc6_ || param1)
                  {
                     _loc2_.include = null;
                     if(!(_loc5_ && _loc3_))
                     {
                        loop2:
                        while(true)
                        {
                           this.§4!B§ = _loc2_;
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 continue loop1;
                              }
                              §§push(_loc2_.§%!y§);
                              if(!(_loc6_ || _loc3_))
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 if(!(_loc6_ || this))
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(_loc2_.§^!K§);
                                       addr158:
                                       while(true)
                                       {
                                          §§pop().override = _loc2_;
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                if(true)
                                                {
                                                   break loop4;
                                                }
                                                loop6:
                                                while(true)
                                                {
                                                   param1.§+!f§ = _loc2_;
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      break loop2;
                                                   }
                                                   addr204:
                                                   while(true)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc2_.override = null;
                                                   §§goto(addr204);
                                                }
                                                addr209:
                                             }
                                             §§goto(addr204);
                                          }
                                          §§goto(addr230);
                                       }
                                       addr153:
                                       if(!§§pop())
                                       {
                                          break;
                                       }
                                       if(_loc6_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr230);
                                    }
                                    var _loc3_:*;
                                    §§push((_loc3_ = param1).§2&§);
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc4_:* = §§pop();
                                 }
                                 if(!_loc6_)
                                 {
                                    continue;
                                    if(_loc6_)
                                    {
                                       _loc3_.§2&§ = _loc4_;
                                    }
                                    addr230:
                                 }
                                 continue loop0;
                                 return;
                              }
                              addr115:
                              §§push((_loc3_ = this).§2R§);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              _loc4_ = §§pop();
                              if(!_loc5_)
                              {
                                 _loc3_.§2R§ = _loc4_;
                              }
                              if(!(_loc5_ && _loc3_))
                              {
                                 break loop1;
                              }
                              §§goto(addr204);
                              §§goto(addr204);
                           }
                           addr58:
                           §§pop().include = _loc2_;
                           if(_loc6_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              §§goto(addr115);
                           }
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc2_.§^!K§);
                           if(_loc6_ || this)
                           {
                              §§goto(addr153);
                           }
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr204);
                  }
                  break;
               }
               _loc2_.§^!K§ = param1.§+!f§;
               §§goto(addr209);
            }
         }
         §§goto(addr204);
      }
      
      public function §[T§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = param1.§+!f§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc6_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     §§pop();
                     if(!(_loc5_ && param1))
                     {
                        §§push(_loc2_.§-U§ == this);
                        if(!_loc5_)
                        {
                           addr177:
                           if(!§§pop())
                           {
                              §§push(_loc2_.§^!K§);
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              loop12:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc2_.§^!K§);
                                       loop9:
                                       while(true)
                                       {
                                          §§pop().override = _loc2_.override;
                                          addr155:
                                          addr140:
                                          while(true)
                                          {
                                             continue loop9;
                                          }
                                          loop2:
                                          while(true)
                                          {
                                             §§pop().§^!K§ = _loc2_.§^!K§;
                                             while(true)
                                             {
                                                addr99:
                                                loop4:
                                                while(true)
                                                {
                                                   if(this.§4!B§ == _loc2_)
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               this.§4!B§ = _loc2_.§%!y§;
                                                               if(_loc6_)
                                                               {
                                                                  while(param1.§+!f§ == _loc2_)
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(_loc5_ && _loc3_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(_loc5_ && _loc2_)
                                                                        {
                                                                           break loop4;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           param1.§+!f§ = _loc2_.§^!K§;
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              addr169:
                                                                              while(true)
                                                                              {
                                                                                 addr144:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.§^!K§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr265);
                                                                        }
                                                                        addr136:
                                                                        addr136:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                     }
                                                                     break loop5;
                                                                  }
                                                                  var _loc3_:*;
                                                                  §§push((_loc3_ = param1).§2&§);
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                                  var _loc4_:* = §§pop();
                                                                  if(!_loc5_)
                                                                  {
                                                                     _loc3_.§2&§ = _loc4_;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr265:
                                                                  return;
                                                                  addr56:
                                                               }
                                                               break;
                                                            }
                                                            break loop0;
                                                         }
                                                         §§goto(addr155);
                                                         §§goto(addr136);
                                                      }
                                                      addr240:
                                                      §§push((_loc3_ = this).§2R§);
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc4_ = §§pop();
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         _loc3_.§2R§ = _loc4_;
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   §§goto(addr56);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc2_.override);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr136);
                                       }
                                       §§goto(addr99);
                                    }
                                    §§goto(addr140);
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr177);
               }
            }
            §§goto(addr177);
         }
         while(true)
         {
            §§push(_loc2_.include);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     addr197:
                     _loc2_.include.§%!y§ = _loc2_.§%!y§;
                     if(!(_loc5_ && _loc3_))
                     {
                        addr156:
                        §§push(_loc2_.§%!y§);
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 addr166:
                                 _loc2_.§%!y§.include = _loc2_.include;
                                 §§goto(addr169);
                              }
                              §§goto(addr265);
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr166);
                        addr207:
                     }
                     §§goto(addr240);
                  }
                  §§goto(addr207);
               }
               §§goto(addr156);
            }
            §§goto(addr197);
         }
      }
      
      public function §-6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         while(this.§4!B§)
         {
            this.§[T§(this.§4!B§.§?!t§);
            if(_loc2_ && this)
            {
               break;
            }
         }
      }
      
      public function §>H§() : b2Controller
      {
         return this.§@o§;
      }
      
      public function §@!"§() : b2World
      {
         return this.m_world;
      }
      
      public function §;1§() : b2ControllerEdge
      {
         return this.§4!B§;
      }
   }
}
