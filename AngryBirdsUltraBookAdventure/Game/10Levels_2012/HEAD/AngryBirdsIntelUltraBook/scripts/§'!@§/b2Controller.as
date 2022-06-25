package §'!@§
{
   import §1%§.b2Body;
   import §1%§.b2DebugDraw;
   import §1%§.b2TimeStep;
   import §1%§.b2World;
   import §8!H§.b2internal;
   
   use namespace b2internal;
   
   public class b2Controller
   {
       
      
      b2internal var §!J§:b2Controller;
      
      b2internal var §4!0§:b2Controller;
      
      protected var §2_§:b2ControllerEdge;
      
      protected var §8y§:int;
      
      b2internal var m_world:b2World;
      
      public function b2Controller()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public function §4k§(param1:b2TimeStep) : void
      {
      }
      
      public function §`!1§(param1:b2DebugDraw) : void
      {
      }
      
      public function §@4§(param1:b2Body) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:b2ControllerEdge = new b2ControllerEdge();
         if(_loc6_ || _loc3_)
         {
            _loc2_.controller = this;
            loop0:
            while(true)
            {
               _loc2_.§`!"§ = param1;
               if(!_loc5_)
               {
                  _loc2_.§;A§ = this.§2_§;
                  loop1:
                  while(true)
                  {
                     _loc2_.§ case§ = null;
                     loop2:
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§2_§ = _loc2_;
                              if(!_loc5_)
                              {
                                 §§push(_loc2_.§;A§);
                                 if(!_loc5_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop2;
                                             }
                                             addr49:
                                             _loc2_.§;A§.§ case§ = _loc2_;
                                             if(!_loc5_)
                                             {
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                addr88:
                                                var _loc3_:*;
                                                §§push((_loc3_ = this).§8y§);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                var _loc4_:* = §§pop();
                                                if(_loc6_ || _loc3_)
                                                {
                                                   _loc3_.§8y§ = _loc4_;
                                                }
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   _loc2_.§"F§ = param1.§>@§;
                                                }
                                                _loc2_.§@!M§ = null;
                                                addr193:
                                             }
                                             addr188:
                                             while(true)
                                             {
                                                param1.§>@§ = _loc2_;
                                                if(_loc6_)
                                                {
                                                   break loop0;
                                                }
                                             }
                                          }
                                          §§goto(addr209);
                                       }
                                       §§goto(addr88);
                                    }
                                    addr137:
                                    if(§§pop())
                                    {
                                       if(_loc6_ || this)
                                       {
                                          if(_loc6_ || this)
                                          {
                                             addr154:
                                             _loc2_.§"F§.§@!M§ = _loc2_;
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr163:
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§goto(addr188);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr49);
                              }
                              break;
                           }
                           while(false)
                           {
                              §§goto(addr167);
                           }
                           addr194:
                           §§push((_loc3_ = param1).§1e§);
                           if(_loc6_)
                           {
                              §§push(§§pop() + 1);
                           }
                        }
                        continue loop1;
                        _loc4_ = §§pop();
                        if(!_loc5_)
                        {
                           _loc3_.§1e§ = _loc4_;
                        }
                        addr209:
                        return;
                     }
                     continue loop0;
                  }
               }
               break;
            }
            while(true)
            {
               §§push(_loc2_.§"F§);
               if(_loc6_)
               {
                  §§goto(addr137);
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr154);
               §§goto(addr49);
            }
         }
         §§goto(addr165);
      }
      
      public function §@!E§(param1:b2Body) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:b2ControllerEdge = param1.§>@§;
         loop0:
         while(true)
         {
            §§push(Boolean(_loc2_));
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop());
               if(!_loc6_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        §§push(_loc2_.controller == this);
                        if(_loc5_ || _loc2_)
                        {
                           §§push(!§§pop());
                           loop1:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc5_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§push(_loc2_.§"F§);
                                       if(!(_loc6_ && this))
                                       {
                                          break;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          §§pop().§@!M§ = _loc2_.§@!M§;
                                          loop9:
                                          while(true)
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc2_.§@!M§);
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue loop9;
                                                   }
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(this.§2_§ == _loc2_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               this.§2_§ = _loc2_.§;A§;
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr58:
                                                                           if(param1.§>@§ != _loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc5_ || _loc3_))
                                                                           {
                                                                              addr287:
                                                                              return;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              param1.§>@§ = _loc2_.§"F§;
                                                                              if(_loc6_ && this)
                                                                              {
                                                                                 addr267:
                                                                                 var _loc3_:*;
                                                                                 §§push((_loc3_ = this).§8y§);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 var _loc4_:* = §§pop();
                                                                              }
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                              addr267:
                                                                              if(!_loc6_)
                                                                              {
                                                                                 _loc3_.§8y§ = _loc4_;
                                                                              }
                                                                              §§goto(addr287);
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        addr229:
                                                                        loop5:
                                                                        while(_loc5_ || param1)
                                                                        {
                                                                           §§push(_loc2_.§;A§);
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§ case§ = _loc2_.§ case§;
                                                                              addr191:
                                                                              while(true)
                                                                              {
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_.§"F§);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop7:
                                                                                    while(_loc5_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(_loc2_.§"F§);
                                                                                                continue loop8;
                                                                                             }
                                                                                             addr213:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc2_.§ case§);
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   addr223:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr224:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_.§ case§);
                                                                                                            break loop9;
                                                                                                         }
                                                                                                         addr224:
                                                                                                      }
                                                                                                      addr170:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_.§;A§);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            break loop7;
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                   }
                                                                                                   addr223:
                                                                                                }
                                                                                                break loop9;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr267);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(_loc5_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§goto(addr223);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr170);
                                                                        }
                                                                        §§goto(addr267);
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     addr148:
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr58);
                                                   }
                                                   §§push((_loc3_ = param1).§1e§);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc4_ = §§pop();
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      _loc3_.§1e§ = _loc4_;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                   }
                                                   §§goto(addr267);
                                                }
                                                §§goto(addr155);
                                             }
                                             addr145:
                                             while(true)
                                             {
                                                §§pop().§"F§ = _loc2_.§"F§;
                                                §§goto(addr148);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§pop().§;A§ = _loc2_.§;A§;
                                             §§goto(addr229);
                                          }
                                       }
                                    }
                                    §§goto(addr213);
                                 }
                                 continue loop0;
                                 addr212:
                              }
                           }
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr159);
               }
            }
            §§goto(addr212);
         }
      }
      
      public function §^!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§2_§)
         {
            this.§@!E§(this.§2_§.§`!"§);
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §5<§() : b2Controller
      {
         return this.§!J§;
      }
      
      public function §#!"§() : b2World
      {
         return this.m_world;
      }
      
      public function §'E§() : b2ControllerEdge
      {
         return this.§2_§;
      }
   }
}
