package §+#$§
{
   import §3"5§.§8t§;
   import §3"5§.b2ContactPoint;
   import §3"5§.b2DynamicTreeBroadPhase;
   import §5"i§.b2internal;
   import §8[§.b2Contact;
   import §8[§.b2ContactEdge;
   import §8[§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const § "Q§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § "Q§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §7#U§:§8t§;
      
      b2internal var §'#H§:b2Contact;
      
      b2internal var §1N§:int;
      
      b2internal var §7l§:b2ContactFilter;
      
      b2internal var §?O§:b2ContactListener;
      
      b2internal var §5"!§:b2ContactFactory;
      
      b2internal var §+!z§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            loop0:
            while(true)
            {
               this.m_world = null;
               addr106:
               while(true)
               {
                  this.§1N§ = 0;
                  continue loop0;
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §<"W§(param1:*, param2:*) : void
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
                  §§goto(addr52);
               }
            }
            var _loc7_:b2ContactEdge = _loc6_.§9!K§();
            loop0:
            while(true)
            {
               if(!_loc7_)
               {
                  if(_loc13_ || param2)
                  {
                     §§push(_loc6_.§="N§(_loc5_));
                     if(_loc13_ || _loc3_)
                     {
                        §§push(false);
                        if(_loc13_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc13_)
                              {
                                 return;
                              }
                              §§goto(addr208);
                           }
                           addr204:
                           §§push(this.§7l§.§="N§(_loc3_,_loc4_));
                           §§push(false);
                           §§goto(addr208);
                        }
                        if(§§pop() == §§pop())
                        {
                           if(_loc14_)
                           {
                              break;
                           }
                           §§goto(addr208);
                        }
                        break;
                     }
                     §§goto(addr204);
                  }
                  addr208:
                  return;
               }
               if(_loc7_.other != _loc5_)
               {
                  continue;
               }
               if(!_loc13_)
               {
                  break;
               }
               _loc9_ = _loc7_.§>"6§.§?!@§();
               _loc10_ = _loc7_.§>"6§.§;"R§();
               if(_loc13_ || param2)
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
                              addr161:
                              while(true)
                              {
                                 §§push(_loc10_ == _loc4_);
                              }
                           }
                           addr160:
                        }
                        while(true)
                        {
                           loop6:
                           for(; !§§pop(); while(_loc13_ || this)
                           {
                              continue loop1;
                              §§goto(addr144);
                           })
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(_loc9_ == _loc4_);
                                 if(_loc14_)
                                 {
                                    continue loop6;
                                 }
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop());
                                    if(_loc13_)
                                    {
                                       if(§§pop())
                                       {
                                          continue loop6;
                                       }
                                       loop8:
                                       while(§§pop())
                                       {
                                          if(!(_loc14_ && _loc3_))
                                          {
                                             if(_loc13_)
                                             {
                                                if(_loc13_ || this)
                                                {
                                                   return;
                                                }
                                                break loop6;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc10_ == _loc3_);
                                                if(_loc13_)
                                                {
                                                   continue loop8;
                                                }
                                                continue loop6;
                                             }
                                             continue;
                                          }
                                          if(!(_loc14_ && param2))
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                          }
                                          continue loop7;
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr161);
                           }
                           if(!_loc14_)
                           {
                              break;
                           }
                           §§goto(addr161);
                        }
                        return;
                     }
                     if(_loc14_ && param2)
                     {
                        continue;
                     }
                     §§pop();
                     §§goto(addr144);
                  }
               }
               §§goto(addr144);
            }
            var _loc8_:b2Contact;
            _loc3_ = (_loc8_ = this.§5"!§.§=!S§(_loc3_,_loc4_)).§?!@§();
            _loc4_ = _loc8_.§;"R§();
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            if(_loc13_ || _loc3_)
            {
               _loc8_.§ #&§ = null;
               while(true)
               {
                  _loc8_.§!"!§ = this.m_world.§'#H§;
                  while(true)
                  {
                     §§push(this.m_world);
                     if(!_loc14_)
                     {
                        §§push(§§pop().§'#H§);
                        if(_loc13_)
                        {
                           if(§§pop() != null)
                           {
                              while(true)
                              {
                                 §§push(this.m_world);
                                 addr470:
                                 while(true)
                                 {
                                    §§push(§§pop().§'#H§);
                                    addr471:
                                    while(true)
                                    {
                                       §§pop().§ #&§ = _loc8_;
                                       addr473:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr468:
                           }
                           while(true)
                           {
                              §§push(this.m_world);
                              if(_loc14_)
                              {
                                 break;
                              }
                              if(!_loc14_)
                              {
                                 §§pop().§'#H§ = _loc8_;
                                 loop15:
                                 while(true)
                                 {
                                    §§push(_loc8_.§`g§);
                                    addr431:
                                    while(true)
                                    {
                                       §§pop().§>"6§ = _loc8_;
                                       continue loop15;
                                    }
                                 }
                              }
                              §§goto(addr470);
                              §§goto(addr473);
                           }
                           addr487:
                           var _loc11_:*;
                           §§push((_loc11_ = §§pop()).§1N§);
                           if(!_loc14_)
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc12_:* = §§pop();
                           if(_loc13_)
                           {
                              _loc11_.§1N§ = _loc12_;
                           }
                           §§goto(addr511);
                        }
                        §§goto(addr471);
                     }
                     §§goto(addr470);
                     if(_loc14_ && _loc3_)
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr273);
                     }
                     §§goto(addr487);
                     §§push(this.m_world);
                  }
               }
            }
            §§goto(addr400);
         }
         addr52:
      }
      
      public function §7"D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§7#U§.§;"#§(this.§<"W§);
         }
      }
      
      public function §;!"§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Fixture = param1.§?!@§();
         var _loc3_:b2Fixture = param1.§;"R§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(_loc8_ || this)
         {
            if(param1.§[#B§())
            {
               addr351:
               while(true)
               {
                  this.§?O§.EndContact(param1);
                  addr355:
                  while(true)
                  {
                  }
               }
               addr351:
            }
            while(true)
            {
               §§push(param1.§ #&§);
               if(!(_loc9_ && _loc2_))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(_loc8_)
                        {
                           §§push(param1.§ #&§);
                           while(true)
                           {
                              §§pop().§!"!§ = param1.§!"!§;
                              addr347:
                              while(true)
                              {
                              }
                           }
                           addr344:
                        }
                        else
                        {
                           §§goto(addr351);
                        }
                        addr68:
                        if(_loc9_ && _loc3_)
                        {
                           continue;
                        }
                        if(false)
                        {
                           while(true)
                           {
                              §§push(param1.§["[§);
                              if(_loc8_ || this)
                              {
                                 if(_loc8_ || _loc3_)
                                 {
                                    if(§§pop() == _loc5_.§'#H§)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(!(_loc9_ && this))
                                          {
                                             if(_loc8_ || this)
                                             {
                                                _loc5_.§'#H§ = param1.§["[§.§]!D§;
                                                loop23:
                                                while(true)
                                                {
                                                   addr40:
                                                   while(true)
                                                   {
                                                      this.§5"!§.§;!"§(param1);
                                                      if(!(_loc8_ || _loc3_))
                                                      {
                                                         return;
                                                      }
                                                      addr391:
                                                      addr391:
                                                      continue loop23;
                                                   }
                                                }
                                             }
                                             §§goto(addr231);
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr391);
                                    }
                                    §§goto(addr40);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr158);
                           }
                           loop15:
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 if(_loc8_)
                                 {
                                    _loc4_.§'#H§ = param1.§`g§.§]!D§;
                                    §§goto(addr258);
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§!"!§);
                                    addr325:
                                    while(true)
                                    {
                                       §§pop().§ #&§ = param1.§ #&§;
                                       break loop15;
                                    }
                                 }
                                 addr323:
                              }
                              §§goto(addr302);
                           }
                           §§goto(addr328);
                        }
                        var _loc6_:*;
                        §§push((_loc6_ = this).§1N§);
                        if(!(_loc9_ && this))
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc7_:* = §§pop();
                        if(_loc8_ || _loc3_)
                        {
                           _loc6_.§1N§ = _loc7_;
                        }
                        §§goto(addr391);
                     }
                     continue;
                  }
                  while(true)
                  {
                     §§push(param1.§!"!§);
                     if(!_loc9_)
                     {
                        if(§§pop())
                        {
                           §§goto(addr323);
                        }
                        §§goto(addr303);
                     }
                     §§goto(addr325);
                     §§goto(addr347);
                  }
               }
               §§goto(addr344);
            }
         }
         §§goto(addr351);
      }
      
      public function §9#Z§() : void
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
         var _loc1_:b2Contact = this.m_world.§'#H§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§?!@§();
            _loc3_ = _loc1_.§;"R§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc11_)
            {
               §§push(_loc4_.IsAwake());
               if(_loc11_)
               {
                  §§push(false);
                  if(_loc11_ || _loc1_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc11_)
                     {
                        §§push(§§pop());
                        if(_loc11_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc10_ && _loc2_))
                              {
                                 addr96:
                                 §§pop();
                                 if(_loc11_ || _loc3_)
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       §§push(false);
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc11_)
                                          {
                                             addr119:
                                             if(§§pop())
                                             {
                                                if(!_loc10_)
                                                {
                                                   addr122:
                                                   _loc1_ = _loc1_.§>!>§();
                                                   continue;
                                                }
                                                addr204:
                                                _loc6_ = _loc2_.§4"t§;
                                                _loc7_ = _loc3_.§4"t§;
                                                if(_loc11_ || this)
                                                {
                                                   §§push(this.§7#U§.§?#S§(_loc6_,_loc7_));
                                                   if(_loc11_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc11_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            _loc8_ = §§pop();
                                                            addr238:
                                                            §§push(false);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               _loc1_ = (_loc9_ = _loc1_).§>!>§();
                                                               if(!_loc10_)
                                                               {
                                                                  this.§;!"§(_loc9_);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr269:
                                                               _loc1_ = _loc1_.§>!>§();
                                                            }
                                                            continue;
                                                         }
                                                         _loc1_.§%!q§(this.§?O§);
                                                         §§goto(addr269);
                                                         §§goto(addr269);
                                                      }
                                                   }
                                                   §§goto(addr238);
                                                }
                                                §§goto(addr269);
                                             }
                                             else
                                             {
                                                if(_loc1_.§6b§ & b2Contact.§#!=§)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§push(_loc5_.§="N§(_loc4_));
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         addr155:
                                                         §§push(false);
                                                         if(!_loc10_)
                                                         {
                                                            addr158:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  addr161:
                                                                  _loc1_ = (_loc9_ = _loc1_).§>!>§();
                                                                  if(_loc11_)
                                                                  {
                                                                     this.§;!"§(_loc9_);
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr204);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§7l§.§="N§(_loc2_,_loc3_));
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                         addr180:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               _loc1_ = (_loc9_ = _loc1_).§>!>§();
                                                               if(_loc11_)
                                                               {
                                                                  this.§;!"§(_loc9_);
                                                               }
                                                               continue;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc1_.§6b§ &= ~b2Contact.§#!=§;
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                      §§goto(addr180);
                                                      §§push(false);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr204);
                                             }
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr155);
               }
               §§goto(addr119);
            }
            §§goto(addr204);
         }
      }
   }
}
