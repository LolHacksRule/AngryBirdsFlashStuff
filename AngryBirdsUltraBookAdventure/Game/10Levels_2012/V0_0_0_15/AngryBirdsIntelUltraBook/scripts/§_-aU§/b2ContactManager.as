package §_-aU§
{
   import §_-0DM§.b2Contact;
   import §_-0DM§.b2ContactEdge;
   import §_-0DM§.b2ContactFactory;
   import §_-5§.b2internal;
   import §_-gE§.§_-We§;
   import §_-gE§.b2ContactPoint;
   import §_-gE§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §_-mJ§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §_-mJ§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §_-Q-§:§_-We§;
      
      b2internal var §_-4p§:b2Contact;
      
      b2internal var §_-09s§:int;
      
      b2internal var §_-K4§:b2ContactFilter;
      
      b2internal var §_-0DF§:b2ContactListener;
      
      b2internal var §_-xF§:b2ContactFactory;
      
      b2internal var §_-qZ§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.m_world = null;
               addr101:
               while(true)
               {
                  this.§_-09s§ = 0;
               }
            }
            addr104:
         }
         loop2:
         while(true)
         {
            this.§_-K4§ = b2ContactFilter.§_-Rt§;
            loop3:
            while(!_loc1_)
            {
               if(!_loc1_)
               {
                  this.§_-0DF§ = b2ContactListener.§_-p5§;
                  loop4:
                  do
                  {
                     this.§_-xF§ = new b2ContactFactory(this.§_-qZ§);
                     while(!_loc1_)
                     {
                        continue loop2;
                        this.§_-Q-§ = new b2DynamicTreeBroadPhase();
                        if(!_loc1_)
                        {
                           continue loop4;
                        }
                     }
                     continue loop3;
                  }
                  while(!(_loc2_ || this));
                  
                  return;
               }
               §§goto(addr104);
            }
            §§goto(addr101);
         }
      }
      
      public function §_-lj§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(_loc13_)
         {
            if(_loc5_ == _loc6_)
            {
               if(!(_loc14_ && param1))
               {
                  return;
               }
            }
         }
         var _loc7_:b2ContactEdge = _loc6_.§_-qw§();
         loop0:
         while(true)
         {
            if(_loc7_)
            {
               if(_loc7_.§_-TK§ == _loc5_)
               {
                  if(!(_loc14_ && param2))
                  {
                     _loc9_ = _loc7_.§_-20§.§_-k-§();
                     _loc10_ = _loc7_.§_-20§.§_-7G§();
                     if(!(_loc14_ && param2))
                     {
                        §§push(_loc9_ == _loc3_);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr176:
                                    while(true)
                                    {
                                       §§push(_loc10_ == _loc4_);
                                    }
                                 }
                                 addr175:
                              }
                              while(true)
                              {
                                 loop6:
                                 while(!§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc9_ == _loc4_);
                                       if(_loc13_ || this)
                                       {
                                          if(_loc14_ && this)
                                          {
                                             continue loop6;
                                          }
                                          §§push(§§pop());
                                          if(_loc14_ && _loc3_)
                                          {
                                             continue loop2;
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr153);
                                          }
                                          §§goto(addr108);
                                          continue loop6;
                                       }
                                       addr153:
                                       loop10:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          for(; !(_loc14_ && param2); continue loop10)
                                          {
                                             §§push(_loc10_ == _loc3_);
                                             if(_loc14_ && this)
                                             {
                                                continue loop10;
                                             }
                                             if(!(_loc14_ && param2))
                                             {
                                                if(_loc14_)
                                                {
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc13_ || _loc3_)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               return;
                                                            }
                                                            break;
                                                         }
                                                         break loop6;
                                                      }
                                                      if(!_loc14_)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop7;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr175);
                                             }
                                             §§goto(addr176);
                                          }
                                          continue loop7;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     return;
                  }
                  break;
               }
               continue;
            }
            if(!(_loc14_ && param2))
            {
               §§push(_loc6_.§_-VH§(_loc5_));
               if(_loc13_)
               {
                  §§push(false);
                  if(!(_loc14_ && this))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!_loc14_)
                        {
                           return;
                        }
                        §§goto(addr228);
                     }
                     break;
                  }
                  addr220:
                  if(§§pop() == §§pop())
                  {
                     if(_loc13_ || this)
                     {
                        addr228:
                        return;
                     }
                     addr229:
                     var _loc8_:b2Contact;
                     _loc3_ = (_loc8_ = this.§_-xF§.§_-xb§(_loc3_,_loc4_)).§_-k-§();
                     _loc4_ = _loc8_.§_-7G§();
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if(!_loc14_)
                     {
                        _loc8_.§_-021§ = null;
                        while(true)
                        {
                           _loc8_.§_-oz§ = this.m_world.§_-4p§;
                           loop12:
                           while(true)
                           {
                              §§push(this.m_world);
                              while(true)
                              {
                                 §§push(§§pop().§_-4p§);
                                 if(_loc13_)
                                 {
                                    if(§§pop() != null)
                                    {
                                       continue loop12;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop().§_-021§ = _loc8_;
                                       addr518:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr516:
                                 }
                                 while(true)
                                 {
                                    §§push(this.m_world);
                                    if(_loc13_ || param2)
                                    {
                                       if(!_loc13_)
                                       {
                                          break;
                                       }
                                       §§pop().§_-4p§ = _loc8_;
                                       while(true)
                                       {
                                          §§push(_loc8_.§_-a-§);
                                          loop17:
                                          while(true)
                                          {
                                             §§pop().§_-20§ = _loc8_;
                                             addr480:
                                             while(true)
                                             {
                                                §§push(_loc8_.§_-a-§);
                                                loop21:
                                                while(true)
                                                {
                                                   §§pop().§_-TK§ = _loc6_;
                                                   addr474:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.§_-a-§);
                                                      while(true)
                                                      {
                                                         §§pop().§_-05Y§ = null;
                                                         addr468:
                                                         while(true)
                                                         {
                                                            §§push(_loc8_.§_-a-§);
                                                            if(!(_loc13_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            if(_loc13_)
                                                            {
                                                               continue loop17;
                                                            }
                                                            continue loop21;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr542);
                                    §§goto(addr518);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr480);
                  }
                  §§goto(addr229);
               }
               addr219:
               §§goto(addr220);
               §§push(false);
            }
            §§goto(addr229);
         }
         §§goto(addr219);
         §§push(this.§_-K4§.§_-VH§(_loc3_,_loc4_));
      }
      
      public function §_-Wx§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§_-Q-§.§_-Mm§(this.§_-lj§);
         }
      }
      
      public function §_-01§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Fixture = param1.§_-k-§();
         var _loc3_:b2Fixture = param1.§_-7G§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!_loc8_)
         {
            if(param1.§_-bU§())
            {
               while(true)
               {
                  this.§_-0DF§.EndContact(param1);
                  addr361:
                  while(true)
                  {
                  }
               }
               addr357:
            }
            loop2:
            while(true)
            {
               §§push(param1.§_-021§);
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§_-021§);
                        addr338:
                        while(true)
                        {
                           §§pop().§_-oz§ = param1.§_-oz§;
                           addr341:
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 §§goto(addr357);
                              }
                              else
                              {
                                 addr343:
                              }
                           }
                        }
                     }
                     addr336:
                  }
                  while(true)
                  {
                     §§push(param1.§_-oz§);
                     if(!(_loc8_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(param1.§_-oz§);
                              addr324:
                              while(true)
                              {
                                 §§pop().§_-021§ = param1.§_-021§;
                                 addr327:
                                 loop37:
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       addr329:
                                       while(true)
                                       {
                                          if(param1 == this.m_world.§_-4p§)
                                          {
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                this.m_world.§_-4p§ = param1.§_-oz§;
                                             }
                                             continue loop5;
                                          }
                                          addr272:
                                          while(true)
                                          {
                                             §§push(param1.§_-a-§);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop().§_-05Y§);
                                                loop10:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1.§_-a-§);
                                                         addr279:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§_-05Y§);
                                                            addr280:
                                                            while(true)
                                                            {
                                                               §§push(param1.§_-a-§.§_-Oh§);
                                                               addr283:
                                                               while(true)
                                                               {
                                                                  §§pop().§_-Oh§ = §§pop();
                                                                  addr284:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr277:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1.§_-a-§);
                                                      loop17:
                                                      for(; _loc9_; if(!(_loc9_ || _loc3_))
                                                      {
                                                         continue;
                                                      },if(§§pop() == _loc4_.§_-4p§)
                                                      {
                                                         §§goto(addr217);
                                                      },§§goto(addr142))
                                                      {
                                                         §§push(§§pop().§_-Oh§);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc9_ || this)
                                                               {
                                                                  §§push(param1.§_-a-§);
                                                                  continue loop9;
                                                               }
                                                               addr271:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.§_-a-§);
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop17;
                                                            addr108:
                                                            if(!(_loc9_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc9_ || this)
                                                               {
                                                                  §§push(param1.§_-Gh§);
                                                                  loop34:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§_-Oh§);
                                                                     loop33:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.§_-Gh§.§_-05Y§);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§pop().§_-05Y§ = §§pop();
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 loop30:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§_-Gh§);
                                                                                    if(!(_loc9_ || this))
                                                                                    {
                                                                                       continue loop34;
                                                                                    }
                                                                                    addr59:
                                                                                    if(!(_loc8_ && param1))
                                                                                    {
                                                                                       if(§§pop() == _loc5_.§_-4p§)
                                                                                       {
                                                                                          loop31:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                _loc5_.§_-4p§ = param1.§_-Gh§.§_-Oh§;
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr78:
                                                                                                   if(!(_loc9_ || this))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc8_ && this)
                                                                                                         {
                                                                                                            continue loop37;
                                                                                                         }
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_.§_-4p§ = param1.§_-a-§.§_-Oh§;
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               if(!(_loc8_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1.§_-Gh§);
                                                                                                                        addr145:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().§_-05Y§);
                                                                                                                           if(!(_loc8_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc9_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(_loc8_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       §§push(param1.§_-Gh§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop().§_-05Y§);
                                                                                                                                          addr173:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1.§_-Gh§.§_-Oh§);
                                                                                                                                             if(_loc9_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§pop().§_-Oh§ = §§pop();
                                                                                                                                                addr194:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_ && param1)
                                                                                                                                                   {
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr194:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr283);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr172:
                                                                                                                                    }
                                                                                                                                    §§goto(addr194);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§_-Gh§);
                                                                                                                                    if(_loc8_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop34;
                                                                                                                                    }
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§_-Oh§);
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                       addr101:
                                                                                                                                       if(_loc9_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr108);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1.§_-a-§.§_-05Y§);
                                                                                                                                             addr270:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop().§_-05Y§ = §§pop();
                                                                                                                                                §§goto(addr271);
                                                                                                                                             }
                                                                                                                                             §§goto(addr101);
                                                                                                                                          }
                                                                                                                                          addr267:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr172);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              §§goto(addr280);
                                                                                                                              §§goto(addr283);
                                                                                                                           }
                                                                                                                           §§goto(addr173);
                                                                                                                           §§goto(addr59);
                                                                                                                        }
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     addr142:
                                                                                                                  }
                                                                                                                  break loop31;
                                                                                                               }
                                                                                                               §§goto(addr271);
                                                                                                            }
                                                                                                            §§goto(addr382);
                                                                                                         }
                                                                                                         §§goto(addr78);
                                                                                                      }
                                                                                                      addr217:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr382);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr277);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr284);
                                                                                          addr69:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.§_-xF§.§_-01§(param1);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   break loop30;
                                                                                                }
                                                                                                if(false)
                                                                                                {
                                                                                                   continue loop30;
                                                                                                }
                                                                                                var _loc6_:*;
                                                                                                §§push((_loc6_ = this).§_-09s§);
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   §§push(§§pop() - 1);
                                                                                                }
                                                                                                var _loc7_:* = §§pop();
                                                                                                if(!(_loc8_ && this))
                                                                                                {
                                                                                                   _loc6_.§_-09s§ = _loc7_;
                                                                                                }
                                                                                                §§goto(addr382);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr69);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr382);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr145);
                                                                                 }
                                                                                 §§goto(addr336);
                                                                                 addr49:
                                                                              }
                                                                              §§goto(addr194);
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                        §§goto(addr270);
                                                                     }
                                                                  }
                                                               }
                                                               addr382:
                                                               return;
                                                            }
                                                            §§goto(addr49);
                                                         }
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr329);
                                       }
                                       addr285:
                                    }
                                    §§goto(addr341);
                                 }
                              }
                           }
                        }
                        §§goto(addr285);
                     }
                     §§goto(addr324);
                     §§goto(addr343);
                  }
               }
               §§goto(addr338);
            }
         }
         §§goto(addr226);
      }
      
      public function §_-4P§() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§_-4p§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-k-§();
            _loc3_ = _loc1_.§_-7G§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(!_loc10_)
            {
               §§push(_loc4_.IsAwake());
               if(_loc11_ || _loc3_)
               {
                  §§push(false);
                  if(_loc11_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc11_)
                     {
                        addr80:
                        §§push(§§pop());
                        if(!_loc10_)
                        {
                           if(§§pop())
                           {
                              if(!_loc10_)
                              {
                                 §§pop();
                                 if(!_loc10_)
                                 {
                                    addr89:
                                    §§push(_loc5_.IsAwake());
                                    if(_loc11_)
                                    {
                                       §§push(false);
                                       if(!(_loc10_ && _loc1_))
                                       {
                                          addr101:
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc10_ && _loc1_))
                                          {
                                             addr109:
                                             if(§§pop())
                                             {
                                                if(!(_loc10_ && _loc1_))
                                                {
                                                   addr117:
                                                   _loc1_ = _loc1_.§_-02g§();
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                if(_loc1_.§_-7R§ & b2Contact.§_-b1§)
                                                {
                                                   if(_loc11_ || _loc2_)
                                                   {
                                                      §§push(_loc5_.§_-VH§(_loc4_));
                                                      if(_loc11_)
                                                      {
                                                         addr150:
                                                         §§push(false);
                                                         if(!_loc10_)
                                                         {
                                                            addr153:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  addr156:
                                                                  _loc1_ = (_loc9_ = _loc1_).§_-02g§();
                                                                  if(!_loc10_)
                                                                  {
                                                                     this.§_-01§(_loc9_);
                                                                  }
                                                                  continue;
                                                               }
                                                               addr209:
                                                               _loc6_ = _loc2_.§_-Xg§;
                                                               _loc7_ = _loc3_.§_-Xg§;
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(this.§_-Q-§.§_-Rd§(_loc6_,_loc7_));
                                                                  if(!(_loc10_ && _loc2_))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc11_ || this)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           addr243:
                                                                           §§push(false);
                                                                        }
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(!(_loc10_ && _loc1_))
                                                                           {
                                                                              _loc1_ = (_loc9_ = _loc1_).§_-02g§();
                                                                              if(_loc11_ || _loc3_)
                                                                              {
                                                                                 this.§_-01§(_loc9_);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr284:
                                                                              _loc1_ = _loc1_.§_-02g§();
                                                                           }
                                                                           continue;
                                                                        }
                                                                        _loc1_.§_-Gb§(this.§_-0DF§);
                                                                        §§goto(addr284);
                                                                        §§goto(addr284);
                                                                     }
                                                                  }
                                                                  §§goto(addr243);
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§_-K4§.§_-VH§(_loc2_,_loc3_));
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                         addr175:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc11_ || _loc1_)
                                                            {
                                                               _loc1_ = (_loc9_ = _loc1_).§_-02g§();
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  this.§_-01§(_loc9_);
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc1_.§_-7R§ &= ~b2Contact.§_-b1§;
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      §§goto(addr175);
                                                      §§push(false);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr156);
                                          }
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr153);
               }
               §§goto(addr80);
            }
            §§goto(addr89);
         }
      }
   }
}
