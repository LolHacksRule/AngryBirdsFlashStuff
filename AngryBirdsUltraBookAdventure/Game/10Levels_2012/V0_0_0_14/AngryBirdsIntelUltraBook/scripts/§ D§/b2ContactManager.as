package § D§
{
   import §&!-§.§>D§;
   import §&!-§.b2ContactPoint;
   import §&!-§.b2DynamicTreeBroadPhase;
   import §7a§.b2Contact;
   import §7a§.b2ContactEdge;
   import §7a§.b2ContactFactory;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §61§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §61§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §0G§:§>D§;
      
      b2internal var §#!u§:b2Contact;
      
      b2internal var §#4§:int;
      
      b2internal var §0!A§:b2ContactFilter;
      
      b2internal var §,!§:b2ContactListener;
      
      b2internal var § '§:b2ContactFactory;
      
      b2internal var §>#§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               this.m_world = null;
               loop1:
               while(_loc1_)
               {
                  this.§#4§ = 0;
                  while(true)
                  {
                     this.§0!A§ = b2ContactFilter.§5!7§;
                     loop5:
                     while(_loc1_ || _loc1_)
                     {
                        if(_loc1_)
                        {
                           this.§0G§ = new b2DynamicTreeBroadPhase();
                           if(_loc2_ && _loc1_)
                           {
                              continue;
                           }
                           addr35:
                           if(_loc1_)
                           {
                              addr47:
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    this.§,!§ = b2ContactListener.§-!c§;
                                    addr82:
                                    while(true)
                                    {
                                       this.§ '§ = new b2ContactFactory(this.§>#§);
                                       continue loop5;
                                       §§goto(addr35);
                                    }
                                    §§goto(addr47);
                                 }
                                 addr88:
                              }
                              return;
                           }
                           §§goto(addr82);
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §8?§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(!_loc14_)
         {
            if(_loc5_ == _loc6_)
            {
               if(!(_loc14_ && param1))
               {
                  §§goto(addr52);
               }
            }
            var _loc7_:b2ContactEdge = _loc6_.§=!-§();
            while(true)
            {
               if(!_loc7_)
               {
                  if(_loc13_ || this)
                  {
                     §§push(_loc6_.§>?§(_loc5_));
                     if(_loc13_)
                     {
                        §§push(false);
                        if(_loc13_ || _loc3_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc14_)
                              {
                                 §§goto(addr201);
                              }
                              break;
                           }
                           addr214:
                           §§push(this.§0!A§.§>?§(_loc3_,_loc4_));
                           §§push(false);
                        }
                        if(§§pop() == §§pop())
                        {
                           if(_loc13_ || _loc3_)
                           {
                              return;
                           }
                           break;
                        }
                        break;
                     }
                     §§goto(addr214);
                  }
                  addr201:
                  return;
               }
               if(_loc7_.§<!-§ != _loc5_)
               {
                  continue;
               }
               if(_loc14_)
               {
                  break;
               }
               _loc9_ = _loc7_.§58§.§5J§();
               _loc10_ = _loc7_.§58§.§@!X§();
               if(_loc13_)
               {
                  §§push(_loc9_ == _loc3_);
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr171:
                              while(true)
                              {
                                 §§push(_loc10_ == _loc4_);
                              }
                           }
                           addr170:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc13_ || param2)
                                 {
                                    break;
                                 }
                                 addr164:
                                 while(true)
                                 {
                                 }
                              }
                              addr107:
                              while(true)
                              {
                                 §§push(_loc9_ == _loc4_);
                                 continue loop6;
                              }
                           }
                           return;
                        }
                     }
                     if(_loc14_ && param1)
                     {
                        continue;
                     }
                     §§pop();
                     §§goto(addr142);
                  }
               }
               §§goto(addr149);
            }
            var _loc8_:b2Contact;
            _loc3_ = (_loc8_ = this.§ '§.§5=§(_loc3_,_loc4_)).§5J§();
            _loc4_ = _loc8_.§@!X§();
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            if(_loc13_)
            {
               _loc8_.§4!7§ = null;
               loop14:
               while(true)
               {
                  _loc8_.§7n§ = this.m_world.§#!u§;
                  loop15:
                  while(true)
                  {
                     §§push(this.m_world);
                     if(_loc13_)
                     {
                        §§push(§§pop().§#!u§);
                        if(!_loc14_)
                        {
                           if(§§pop() != null)
                           {
                              addr493:
                              if(_loc13_)
                              {
                                 §§push(this.m_world);
                                 while(true)
                                 {
                                    §§push(§§pop().§#!u§);
                                    addr491:
                                    while(true)
                                    {
                                       §§pop().§4!7§ = _loc8_;
                                    }
                                    addr466:
                                    if(_loc14_ && param2)
                                    {
                                       continue;
                                    }
                                    §§pop().§#!u§ = _loc8_;
                                    while(true)
                                    {
                                       §§push(_loc8_.§#f§);
                                       loop20:
                                       while(true)
                                       {
                                          §§pop().§58§ = _loc8_;
                                          addr455:
                                          while(true)
                                          {
                                             addr442:
                                             §§push(_loc8_.§#f§);
                                             loop23:
                                             for(; !_loc14_; if(_loc13_ || param1)
                                             {
                                                §§pop().§0e§ = _loc5_.§#!u§;
                                                continue loop15;
                                             })
                                             {
                                                §§pop().§<!-§ = _loc6_;
                                                while(true)
                                                {
                                                   §§push(_loc8_.§#f§);
                                                   loop25:
                                                   while(true)
                                                   {
                                                      §§pop().§7!J§ = null;
                                                      addr441:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_.§#f§);
                                                         if(!_loc14_)
                                                         {
                                                            continue loop23;
                                                         }
                                                         continue loop25;
                                                      }
                                                      continue loop23;
                                                   }
                                                }
                                             }
                                             continue loop20;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                              }
                              addr493:
                           }
                           while(true)
                           {
                              §§push(this.m_world);
                              if(_loc14_ && param1)
                              {
                                 break;
                              }
                              §§goto(addr466);
                              §§goto(addr493);
                           }
                           §§goto(addr517);
                        }
                        §§goto(addr491);
                     }
                     addr517:
                     var _loc11_:*;
                     §§push((_loc11_ = §§pop()).§#4§);
                     if(_loc13_ || this)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc12_:* = §§pop();
                     if(!(_loc14_ && param1))
                     {
                        _loc11_.§#4§ = _loc12_;
                     }
                     return;
                     addr428:
                     while(!(_loc14_ && param2))
                     {
                        §§push(_loc5_.§#!u§);
                        if(!(_loc14_ && param1))
                        {
                           §§push(null);
                           while(true)
                           {
                              if(§§pop() != §§pop())
                              {
                                 while(!_loc14_)
                                 {
                                    §§push(_loc5_.§#!u§);
                                    while(true)
                                    {
                                       §§pop().§7!J§ = _loc8_.§#f§;
                                       loop39:
                                       while(true)
                                       {
                                          if(!_loc14_)
                                          {
                                             while(true)
                                             {
                                                _loc5_.§#!u§ = _loc8_.§#f§;
                                                addr381:
                                                while(true)
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   continue loop39;
                                                }
                                                continue loop39;
                                             }
                                             §§goto(addr455);
                                             addr376:
                                          }
                                          else
                                          {
                                             §§goto(addr455);
                                          }
                                          §§goto(addr442);
                                       }
                                    }
                                 }
                                 §§goto(addr475);
                                 addr403:
                              }
                              §§goto(addr376);
                           }
                           addr402:
                        }
                        §§goto(addr407);
                     }
                  }
               }
            }
            §§goto(addr455);
         }
         addr52:
      }
      
      public function §4!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§0G§.§`h§(this.§8?§);
         }
      }
      
      public function §"L§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Fixture = param1.§5J§();
         var _loc3_:b2Fixture = param1.§@!X§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!_loc8_)
         {
            if(param1.§8]§())
            {
               while(true)
               {
                  this.§,!§.EndContact(param1);
                  addr331:
                  while(true)
                  {
                  }
               }
               addr317:
            }
            while(true)
            {
               §§push(param1.§4!7§);
               if(!(_loc8_ && param1))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§4!7§);
                        addr303:
                        while(true)
                        {
                           §§pop().§7n§ = param1.§7n§;
                           if(_loc9_ || this)
                           {
                              while(true)
                              {
                                 §§push(param1.§7n§);
                                 if(_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§7n§);
                                          addr286:
                                          while(true)
                                          {
                                             §§pop().§4!7§ = param1.§4!7§;
                                             addr289:
                                             while(true)
                                             {
                                             }
                                          }
                                          addr244:
                                          if(_loc8_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(param1.§#f§);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop().§7!J§);
                                             addr254:
                                             while(true)
                                             {
                                                §§push(param1.§#f§.§0e§);
                                                addr257:
                                                while(true)
                                                {
                                                   §§pop().§0e§ = §§pop();
                                                   loop38:
                                                   while(true)
                                                   {
                                                      addr215:
                                                      while(true)
                                                      {
                                                         §§push(param1.§#f§);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§0e§);
                                                            addr219:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.§#f§);
                                                                     addr222:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§0e§);
                                                                        addr223:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.§#f§.§7!J§);
                                                                           addr226:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§7!J§ = §§pop();
                                                                              addr227:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop38;
                                                                                 }
                                                                              }
                                                                              continue loop38;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr220:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(param1.§#f§);
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     if(!(_loc8_ && _loc3_))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr222);
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                         continue loop38;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(param1 == this.m_world.§#!u§)
                                       {
                                          if(!(_loc8_ && this))
                                          {
                                             this.m_world.§#!u§ = param1.§7n§;
                                          }
                                          §§goto(addr277);
                                       }
                                       §§goto(addr230);
                                       §§goto(addr289);
                                    }
                                 }
                                 §§goto(addr286);
                              }
                              addr278:
                           }
                           §§goto(addr357);
                        }
                     }
                  }
                  §§goto(addr278);
               }
               §§goto(addr303);
               §§goto(addr331);
            }
         }
         §§goto(addr331);
      }
      
      public function §-0§() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§#!u§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§5J§();
            _loc3_ = _loc1_.§@!X§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc10_ || this)
            {
               §§push(_loc4_.IsAwake());
               if(!_loc11_)
               {
                  §§push(false);
                  if(!_loc11_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc11_ && _loc3_))
                     {
                        §§push(§§pop());
                        if(_loc10_)
                        {
                           addr87:
                           if(§§pop())
                           {
                              if(!(_loc11_ && _loc3_))
                              {
                                 §§pop();
                                 if(!(_loc11_ && _loc3_))
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(!_loc11_)
                                    {
                                       §§push(false);
                                       if(_loc10_)
                                       {
                                          addr110:
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc11_ && this))
                                          {
                                             addr118:
                                             if(§§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   addr121:
                                                   _loc1_ = _loc1_.§2!g§();
                                                   continue;
                                                }
                                             }
                                             else if(_loc1_.§ !<§ & b2Contact.§2!t§)
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc5_.§>?§(_loc4_));
                                                   if(_loc10_)
                                                   {
                                                      addr149:
                                                      §§push(false);
                                                      if(!_loc11_)
                                                      {
                                                         addr152:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               addr155:
                                                               _loc1_ = (_loc9_ = _loc1_).§2!g§();
                                                               if(_loc10_ || this)
                                                               {
                                                                  this.§"L§(_loc9_);
                                                               }
                                                               continue;
                                                            }
                                                            addr208:
                                                            _loc6_ = _loc2_.§"!X§;
                                                            _loc7_ = _loc3_.§"!X§;
                                                            if(_loc10_ || _loc1_)
                                                            {
                                                               §§push(this.§0G§.§'V§(_loc6_,_loc7_));
                                                               if(_loc10_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc10_)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        addr237:
                                                                        §§push(false);
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc10_ || _loc1_)
                                                                        {
                                                                           addr256:
                                                                           _loc1_ = (_loc9_ = _loc1_).§2!g§();
                                                                           if(!_loc11_)
                                                                           {
                                                                              this.§"L§(_loc9_);
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc1_.§5>§(this.§,!§);
                                                                     }
                                                                     _loc1_ = _loc1_.§2!g§();
                                                                     continue;
                                                                  }
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr256);
                                                         }
                                                         else
                                                         {
                                                            addr178:
                                                            §§push(this.§0!A§.§>?§(_loc2_,_loc3_));
                                                            §§push(false);
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc10_ || _loc1_)
                                                         {
                                                            _loc1_ = (_loc9_ = _loc1_).§2!g§();
                                                            if(!_loc11_)
                                                            {
                                                               this.§"L§(_loc9_);
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc1_.§ !<§ &= ~b2Contact.§2!t§;
                                                      }
                                                   }
                                                   §§goto(addr178);
                                                }
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr178);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr87);
               }
               §§goto(addr149);
            }
            §§goto(addr121);
         }
      }
   }
}
