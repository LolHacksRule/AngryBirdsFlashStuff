package §&!"§
{
   import § G§.§3!>§;
   import § G§.b2ContactPoint;
   import § G§.b2DynamicTreeBroadPhase;
   import §69§.b2Contact;
   import §69§.b2ContactEdge;
   import §69§.b2ContactFactory;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §!!K§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §!!K§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §+o§:§3!>§;
      
      b2internal var §3!1§:b2Contact;
      
      b2internal var §4!D§:int;
      
      b2internal var §6!$§:b2ContactFilter;
      
      b2internal var §8X§:b2ContactListener;
      
      b2internal var §>Q§:b2ContactFactory;
      
      b2internal var §@!=§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            loop0:
            while(true)
            {
               this.m_world = null;
               loop1:
               while(true)
               {
                  this.§4!D§ = 0;
                  while(true)
                  {
                     this.§6!$§ = b2ContactFilter.§>3§;
                     while(!(_loc2_ && this))
                     {
                        this.§8X§ = b2ContactListener.§3R§;
                        loop4:
                        while(!(_loc2_ && this))
                        {
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 this.§>Q§ = new b2ContactFactory(this.§@!=§);
                                 while(true)
                                 {
                                    this.§+o§ = new b2DynamicTreeBroadPhase();
                                    if(_loc1_)
                                    {
                                       if(_loc1_ || _loc2_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 return;
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §,Q§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(_loc14_)
         {
            if(_loc5_ == _loc6_)
            {
               if(_loc14_)
               {
                  §§goto(addr48);
               }
            }
            var _loc7_:b2ContactEdge = _loc6_.§!-§();
            loop0:
            while(true)
            {
               if(!_loc7_)
               {
                  if(_loc14_ || param1)
                  {
                     §§push(_loc6_.§4!T§(_loc5_));
                     if(_loc14_ || this)
                     {
                        §§push(false);
                        if(!(_loc13_ && param2))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc13_)
                              {
                                 §§goto(addr197);
                              }
                           }
                           addr205:
                           §§push(this.§6!$§.§4!T§(_loc3_,_loc4_));
                           §§push(false);
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!_loc13_)
                           {
                              return;
                           }
                           break;
                        }
                        break;
                     }
                     §§goto(addr205);
                  }
                  addr197:
                  return;
               }
               if(_loc7_.§!!Y§ == _loc5_)
               {
                  if(_loc13_ && param1)
                  {
                     break;
                  }
                  _loc9_ = _loc7_.§^<§.§"&§();
                  _loc10_ = _loc7_.§^<§.§7!Z§();
               }
               continue;
               if(_loc14_ || param2)
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
                              addr162:
                              while(true)
                              {
                                 §§push(_loc10_ == _loc4_);
                              }
                           }
                           addr161:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc13_ && _loc3_))
                                 {
                                    if(_loc14_ || _loc3_)
                                    {
                                       §§goto(addr154);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                 }
                                 addr155:
                              }
                              loop8:
                              while(true)
                              {
                                 §§push(_loc9_ == _loc4_);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop());
                                    if(_loc13_ && this)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       for(; §§pop(); continue loop1)
                                       {
                                          if(_loc14_ || param1)
                                          {
                                             if(!_loc13_)
                                             {
                                                return;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc10_ == _loc3_);
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                                addr132:
                                                §§pop();
                                             }
                                             if(_loc14_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr161);
                                          }
                                          else
                                          {
                                             if(!_loc13_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop8;
                                             }
                                             §§goto(addr155);
                                          }
                                       }
                                       continue loop0;
                                       addr99:
                                    }
                                 }
                                 while(!_loc13_)
                                 {
                                    §§goto(addr132);
                                 }
                                 continue loop6;
                              }
                              continue loop2;
                           }
                           §§goto(addr162);
                        }
                     }
                     if(!(_loc14_ || this))
                     {
                        continue;
                     }
                     §§goto(addr99);
                  }
               }
               addr154:
               return;
            }
            var _loc8_:b2Contact;
            _loc3_ = (_loc8_ = this.§>Q§.§?!@§(_loc3_,_loc4_)).§"&§();
            _loc4_ = _loc8_.§7!Z§();
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            if(_loc14_ || _loc3_)
            {
               _loc8_.§3U§ = null;
               while(true)
               {
                  _loc8_.§0]§ = this.m_world.§3!1§;
                  while(true)
                  {
                     §§push(this.m_world);
                     if(_loc14_ || param2)
                     {
                        §§push(§§pop().§3!1§);
                        if(!(_loc13_ && this))
                        {
                           if(§§pop() != null)
                           {
                              loop14:
                              while(true)
                              {
                                 §§push(this.m_world);
                                 if(!_loc13_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop().§3!1§);
                                       addr507:
                                       while(true)
                                       {
                                          §§pop().§3U§ = _loc8_;
                                          loop20:
                                          while(true)
                                          {
                                             addr474:
                                             while(true)
                                             {
                                                §§push(this.m_world);
                                                if(_loc13_)
                                                {
                                                   break loop14;
                                                }
                                                §§pop().§3!1§ = _loc8_;
                                                loop16:
                                                while(true)
                                                {
                                                   §§push(_loc8_.§ !D§);
                                                   while(true)
                                                   {
                                                      §§pop().§^<§ = _loc8_;
                                                      while(!_loc13_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc8_.§ !D§);
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§pop().§!!Y§ = _loc6_;
                                                               addr465:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_.§ !D§);
                                                                  continue loop23;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop16;
                                                   }
                                                }
                                                continue loop20;
                                             }
                                          }
                                       }
                                    }
                                    addr506:
                                 }
                                 break;
                              }
                              addr523:
                              var _loc11_:*;
                              §§push((_loc11_ = §§pop()).§4!D§);
                              if(_loc14_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc12_:* = §§pop();
                              if(!_loc13_)
                              {
                                 _loc11_.§4!D§ = _loc12_;
                              }
                              §§goto(addr241);
                           }
                           §§goto(addr474);
                        }
                        §§goto(addr507);
                     }
                     §§goto(addr506);
                     while(!(_loc13_ && param2))
                     {
                        §§goto(addr410);
                        §§push(_loc5_.§3!1§);
                        §§goto(addr399);
                     }
                  }
                  if(!(_loc14_ || this))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr279);
                  }
                  §§goto(addr523);
                  §§push(this.m_world);
               }
            }
            §§goto(addr473);
         }
         addr48:
      }
      
      public function § b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§+o§.§,!<§(this.§,Q§);
         }
      }
      
      public function §4!L§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Fixture = param1.§"&§();
         var _loc3_:b2Fixture = param1.§7!Z§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!(_loc8_ && _loc2_))
         {
            if(param1.§ !I§())
            {
               while(true)
               {
                  this.§8X§.EndContact(param1);
                  addr331:
                  while(true)
                  {
                  }
               }
               addr327:
            }
            loop2:
            while(true)
            {
               §§push(param1.§3U§);
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(param1.§3U§);
                        addr320:
                        while(true)
                        {
                           §§pop().§0]§ = param1.§0]§;
                           addr323:
                           while(true)
                           {
                           }
                        }
                        addr299:
                        loop5:
                        while(true)
                        {
                           if(_loc8_ && param1)
                           {
                              continue loop3;
                           }
                           §§push(param1.§0]§);
                           while(true)
                           {
                              §§pop().§3U§ = param1.§3U§;
                              loop39:
                              while(true)
                              {
                                 addr274:
                                 while(true)
                                 {
                                    if(param1 == this.m_world.§3!1§)
                                    {
                                       while(!_loc8_)
                                       {
                                          this.m_world.§3!1§ = param1.§0]§;
                                          while(true)
                                          {
                                          }
                                       }
                                       continue loop2;
                                       addr280:
                                    }
                                    while(true)
                                    {
                                       §§push(param1.§ !D§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop().§"W§);
                                          if(!(_loc8_ && this))
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(param1.§ !D§);
                                                   addr268:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§"W§);
                                                      addr269:
                                                      while(true)
                                                      {
                                                         §§push(param1.§ !D§.§8L§);
                                                         addr272:
                                                         while(true)
                                                         {
                                                            §§pop().§8L§ = §§pop();
                                                            addr273:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr266:
                                             }
                                             while(true)
                                             {
                                                §§push(param1.§ !D§);
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(§§pop().§8L§);
                                                   addr236:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               break loop5;
                                                            }
                                                            §§push(param1.§ !D§);
                                                            while(_loc9_ || _loc2_)
                                                            {
                                                               §§push(§§pop().§8L§);
                                                               while(true)
                                                               {
                                                                  §§push(param1.§ !D§.§"W§);
                                                                  addr252:
                                                                  while(true)
                                                                  {
                                                                     §§pop().§"W§ = §§pop();
                                                                     addr253:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr268);
                                                         }
                                                         addr237:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param1.§ !D§);
                                                         if(!_loc8_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop10;
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                                §§goto(addr273);
                                             }
                                          }
                                          §§goto(addr269);
                                       }
                                    }
                                    continue loop39;
                                 }
                              }
                           }
                           if(!(_loc9_ || _loc3_))
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§goto(addr57);
                           }
                        }
                        §§goto(addr323);
                     }
                  }
                  while(true)
                  {
                     §§push(param1.§0]§);
                     if(!(_loc8_ && this))
                     {
                        if(§§pop())
                        {
                           §§goto(addr299);
                        }
                        §§goto(addr274);
                     }
                     §§goto(addr308);
                     §§goto(addr323);
                  }
               }
               §§goto(addr320);
            }
         }
         §§goto(addr149);
      }
      
      public function §+@§() : void
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
         var _loc1_:b2Contact = this.m_world.§3!1§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§"&§();
            _loc3_ = _loc1_.§7!Z§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc11_)
            {
               §§push(_loc4_.IsAwake());
               if(!(_loc10_ && _loc2_))
               {
                  §§push(false);
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(§§pop() == §§pop());
                     if(!_loc10_)
                     {
                        §§push(§§pop());
                        if(!_loc10_)
                        {
                           if(§§pop())
                           {
                              if(_loc11_ || _loc3_)
                              {
                                 §§pop();
                                 if(!(_loc10_ && _loc3_))
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(!(_loc10_ && _loc3_))
                                    {
                                       §§push(false);
                                       if(!_loc10_)
                                       {
                                          addr116:
                                          §§push(§§pop() == §§pop());
                                          if(_loc11_)
                                          {
                                             addr119:
                                             if(§§pop())
                                             {
                                                if(!(_loc10_ && this))
                                                {
                                                   _loc1_ = _loc1_.§`!R§();
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                if(_loc1_.§?z§ & b2Contact.§62§)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      addr150:
                                                      §§push(_loc5_.§4!T§(_loc4_));
                                                      if(_loc11_)
                                                      {
                                                         addr155:
                                                         §§push(false);
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            addr163:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  addr166:
                                                                  _loc1_ = (_loc9_ = _loc1_).§`!R§();
                                                                  if(_loc11_ || _loc2_)
                                                                  {
                                                                     this.§4!L§(_loc9_);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr193:
                                                                  _loc1_ = (_loc9_ = _loc1_).§`!R§();
                                                                  if(_loc11_)
                                                                  {
                                                                     this.§4!L§(_loc9_);
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            addr190:
                                                            if(this.§6!$§.§4!T§(_loc2_,_loc3_) == false)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  §§goto(addr193);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               _loc1_.§?z§ &= ~b2Contact.§62§;
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   §§goto(addr166);
                                                }
                                                _loc6_ = _loc2_.§]j§;
                                                _loc7_ = _loc3_.§]j§;
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   §§push(this.§+o§.§;!4§(_loc6_,_loc7_));
                                                   if(!_loc10_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc11_ || _loc2_)
                                                      {
                                                         addr244:
                                                         §§push(§§pop());
                                                         if(!_loc10_)
                                                         {
                                                            _loc8_ = §§pop();
                                                            addr248:
                                                            §§push(false);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               _loc1_ = (_loc9_ = _loc1_).§`!R§();
                                                               if(!_loc10_)
                                                               {
                                                                  this.§4!L§(_loc9_);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr279:
                                                               _loc1_ = _loc1_.§`!R§();
                                                            }
                                                            continue;
                                                         }
                                                         _loc1_.§8!C§(this.§8X§);
                                                         §§goto(addr279);
                                                         §§goto(addr279);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr244);
                                                }
                                                §§goto(addr279);
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr116);
                     }
                  }
               }
               §§goto(addr190);
            }
            §§goto(addr150);
         }
      }
   }
}
