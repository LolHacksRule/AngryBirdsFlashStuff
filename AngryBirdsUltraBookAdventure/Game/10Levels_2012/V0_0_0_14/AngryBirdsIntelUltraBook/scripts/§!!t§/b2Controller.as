package §!!t§
{
   import § D§.b2Body;
   import § D§.b2DebugDraw;
   import § D§.b2TimeStep;
   import § D§.b2World;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §7n§:b2Controller;
      
      b2internal var §4!7§:b2Controller;
      
      protected var §%H§:b2ControllerEdge;
      
      protected var §1!;§:int;
      
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
      
      public function §`!9§(param1:b2TimeStep) : void
      {
      }
      
      public function §?4§(param1:b2DebugDraw) : void
      {
      }
      
      public function §#H§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(_loc6_ || param1)
         {
            _loc2_.§=`§ = this;
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.§=!§ = param1;
               loop0:
               while(true)
               {
                  _loc2_.§2!D§ = this.§%H§;
                  addr103:
                  loop1:
                  while(true)
                  {
                     _loc2_.§@3§ = null;
                     if(!_loc6_)
                     {
                        break;
                     }
                     while(true)
                     {
                        addr69:
                        while(true)
                        {
                           this.§%H§ = _loc2_;
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        _loc2_.§5#§ = null;
                        if(_loc6_)
                        {
                           addr161:
                           while(true)
                           {
                              param1.§[U§ = _loc2_;
                              if(!(_loc5_ && this))
                              {
                                 break loop1;
                              }
                           }
                           addr161:
                        }
                        §§goto(addr215);
                     }
                     addr42:
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     _loc2_.§2!D§.§@3§ = _loc2_;
                     if(!(_loc5_ && param1))
                     {
                        if(!(_loc6_ || _loc2_))
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           §§goto(addr69);
                        }
                        else
                        {
                           addr120:
                           var _loc3_:*;
                           §§push((_loc3_ = this).§1!;§);
                           if(_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc4_:* = §§pop();
                           if(!_loc5_)
                           {
                              _loc3_.§1!;§ = _loc4_;
                           }
                           if(!(_loc5_ && _loc2_))
                           {
                              _loc2_.§;!V§ = param1.§[U§;
                              §§goto(addr194);
                           }
                           §§goto(addr159);
                        }
                     }
                     §§goto(addr194);
                  }
                  loop2:
                  while(true)
                  {
                     §§push(_loc2_.§;!V§);
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              while(true)
                              {
                                 §§push(_loc2_.§;!V§);
                                 addr153:
                                 while(true)
                                 {
                                    §§pop().§5#§ = _loc2_;
                                    if(!_loc5_)
                                    {
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             addr159:
                                             if(false)
                                             {
                                                §§goto(addr161);
                                             }
                                             §§goto(addr195);
                                          }
                                          else
                                          {
                                             §§goto(addr194);
                                          }
                                       }
                                       addr157:
                                    }
                                    break loop2;
                                 }
                              }
                              addr151:
                           }
                           §§goto(addr157);
                        }
                        addr195:
                        §§push((_loc3_ = param1).§7,§);
                        if(!(_loc5_ && param1))
                        {
                           §§push(§§pop() + 1);
                        }
                        _loc4_ = §§pop();
                        if(!_loc5_)
                        {
                           _loc3_.§7,§ = _loc4_;
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr153);
                     §§goto(addr161);
                  }
                  addr215:
                  return;
               }
            }
            §§goto(addr151);
         }
         §§goto(addr87);
      }
      
      public function §2o§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§[U§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     addr41:
                     §§pop();
                     if(_loc5_ || param1)
                     {
                        §§push(_loc2_.§=`§ == this);
                        if(!(_loc6_ && this))
                        {
                           addr195:
                           if(!§§pop())
                           {
                              §§push(_loc2_.§;!V§);
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              loop1:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(_loc2_.§;!V§);
                                          loop3:
                                          while(true)
                                          {
                                             §§pop().§5#§ = _loc2_.§5#§;
                                             loop4:
                                             while(true)
                                             {
                                                addr119:
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(_loc2_.§5#§);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop14:
                                                         for(; _loc5_; while(true)
                                                         {
                                                            if(_loc6_ && _loc2_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               break loop0;
                                                            }
                                                            this.§%H§ = _loc2_.§2!D§;
                                                            if(_loc5_ || param1)
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  §§goto(addr50);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr177);
                                                               }
                                                            }
                                                            §§goto(addr269);
                                                         },§§goto(addr208))
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§push(_loc2_.§5#§);
                                                               while(true)
                                                               {
                                                                  §§pop().§;!V§ = _loc2_.§;!V§;
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(this.§%H§ == _loc2_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        addr50:
                                                                        while(param1.§[U§ == _loc2_)
                                                                        {
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(_loc6_ && _loc3_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              param1.§[U§ = _loc2_.§;!V§;
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              var _loc3_:*;
                                                                              §§push((_loc3_ = this).§1!;§);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop() - 1);
                                                                              }
                                                                              var _loc4_:* = §§pop();
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 _loc3_.§1!;§ = _loc4_;
                                                                              }
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§push((_loc3_ = param1).§7,§);
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           _loc3_.§7,§ = _loc4_;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr249);
                                                                        }
                                                                        §§goto(addr269);
                                                                     }
                                                                     addr79:
                                                                  }
                                                                  §§goto(addr249);
                                                               }
                                                               addr141:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.§@3§);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_.§@3§);
                                                                           addr208:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§2!D§ = _loc2_.§2!D§;
                                                                              break loop0;
                                                                           }
                                                                        }
                                                                        addr206:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_.§2!D§);
                                                                        if(_loc5_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_.§2!D§);
                                                                                 addr179:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§@3§ = _loc2_.§@3§;
                                                                                    break loop14;
                                                                                 }
                                                                              }
                                                                              addr177:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.§;!V§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop1;
                                                                           addr152:
                                                                        }
                                                                        §§goto(addr179);
                                                                     }
                                                                     addr171:
                                                                  }
                                                                  §§goto(addr208);
                                                               }
                                                               addr196:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr152);
                                                         }
                                                      }
                                                      §§goto(addr79);
                                                   }
                                                   §§goto(addr141);
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr206);
                                    }
                                 }
                                 §§goto(addr119);
                              }
                           }
                           §§goto(addr196);
                        }
                        §§goto(addr195);
                     }
                     break;
                  }
               }
               §§goto(addr195);
            }
            §§goto(addr41);
         }
         while(true)
         {
            §§goto(addr171);
         }
      }
      
      public function §1!E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§%H§)
         {
            this.§2o§(this.§%H§.§=!§);
            if(_loc1_)
            {
               break;
            }
         }
      }
      
      public function §2!g§() : b2Controller
      {
         return this.§7n§;
      }
      
      public function §]`§() : b2World
      {
         return this.m_world;
      }
      
      public function §'!H§() : b2ControllerEdge
      {
         return this.§%H§;
      }
   }
}
