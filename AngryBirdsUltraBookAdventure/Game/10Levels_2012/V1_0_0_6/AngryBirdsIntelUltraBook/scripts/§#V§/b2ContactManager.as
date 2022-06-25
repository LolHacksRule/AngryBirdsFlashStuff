package §#V§
{
   import §,G§.b2Contact;
   import §,G§.b2ContactEdge;
   import §,G§.b2ContactFactory;
   import §3!m§.b2internal;
   import §8w§.§2U§;
   import §8w§.b2ContactPoint;
   import §8w§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §#!k§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#!k§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §0!f§:§2U§;
      
      b2internal var §<!7§:b2Contact;
      
      b2internal var §?o§:int;
      
      b2internal var §!!q§:b2ContactFilter;
      
      b2internal var §"s§:b2ContactListener;
      
      b2internal var §"!u§:b2ContactFactory;
      
      b2internal var §7!a§;
      
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
            }
            addr104:
         }
         while(true)
         {
            this.§?o§ = 0;
            loop2:
            while(!_loc1_)
            {
               this.§!!q§ = b2ContactFilter.§5!o§;
               loop3:
               while(true)
               {
                  this.§"s§ = b2ContactListener.§]X§;
                  while(true)
                  {
                     if(!(_loc1_ && this))
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        this.§"!u§ = new b2ContactFactory(this.§7!a§);
                        continue;
                     }
                     continue loop3;
                  }
                  continue loop2;
               }
            }
         }
      }
      
      public function §`!Y§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(!(_loc14_ && _loc3_))
         {
            if(_loc5_ == _loc6_)
            {
               if(!(_loc14_ && _loc3_))
               {
                  §§goto(addr57);
               }
            }
            var _loc7_:b2ContactEdge = _loc6_.§ !S§();
            loop0:
            while(true)
            {
               if(!_loc7_)
               {
                  if(!(_loc14_ && this))
                  {
                     §§push(_loc6_.§'!3§(_loc5_));
                     if(!(_loc14_ && _loc3_))
                     {
                        §§push(false);
                        if(!(_loc14_ && this))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc13_ || _loc3_)
                              {
                                 return;
                              }
                              addr224:
                              var _loc8_:b2Contact;
                              _loc3_ = (_loc8_ = this.§"!u§.§1#§(_loc3_,_loc4_)).§68§();
                              _loc4_ = _loc8_.§[t§();
                              _loc5_ = _loc3_.m_body;
                              _loc6_ = _loc4_.m_body;
                              if(!_loc14_)
                              {
                                 _loc8_.§[2§ = null;
                                 _loc8_.§@o§ = this.m_world.§<!7§;
                                 addr524:
                                 addr510:
                                 §§push(this.m_world);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop().§<!7§);
                                    if(_loc13_ || this)
                                    {
                                       if(§§pop() != null)
                                       {
                                          if(!(_loc14_ && _loc3_))
                                          {
                                             addr501:
                                             this.m_world.§<!7§.§[2§ = _loc8_;
                                             addr500:
                                          }
                                          addr503:
                                       }
                                       §§push(this.m_world);
                                       if(_loc13_ || param2)
                                       {
                                          if(_loc13_)
                                          {
                                             §§pop().§<!7§ = _loc8_;
                                             addr451:
                                             _loc8_.§'"§.§80§ = _loc8_;
                                             addr475:
                                             if(!(_loc14_ && this))
                                             {
                                                addr445:
                                                _loc8_.§'"§.§9"§ = _loc6_;
                                                addr428:
                                                addr447:
                                                §§push(_loc8_.§'"§);
                                                if(_loc13_)
                                                {
                                                   if(!(_loc14_ && _loc3_))
                                                   {
                                                      §§pop().§%E§ = null;
                                                      addr439:
                                                      if(!_loc14_)
                                                      {
                                                         §§push(_loc8_.§'"§);
                                                         if(!(_loc14_ && _loc3_))
                                                         {
                                                            §§pop().§#!R§ = _loc5_.§<!7§;
                                                            if(!(_loc14_ && _loc3_))
                                                            {
                                                               §§push(_loc5_.§<!7§);
                                                               if(!(_loc14_ && this))
                                                               {
                                                                  addr397:
                                                                  if(§§pop() != null)
                                                                  {
                                                                     addr400:
                                                                     _loc5_.§<!7§.§%E§ = _loc8_.§'"§;
                                                                     addr398:
                                                                  }
                                                                  _loc5_.§<!7§ = _loc8_.§'"§;
                                                                  addr383:
                                                                  if(_loc13_)
                                                                  {
                                                                     addr366:
                                                                     _loc8_.§=`§.§80§ = _loc8_;
                                                                     addr368:
                                                                     if(_loc13_)
                                                                     {
                                                                        if(!(_loc14_ && param1))
                                                                        {
                                                                           addr347:
                                                                           §§push(_loc8_.§=`§);
                                                                           if(_loc13_)
                                                                           {
                                                                              §§pop().§9"§ = _loc5_;
                                                                              addr351:
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(_loc13_ || _loc3_)
                                                                                 {
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       addr341:
                                                                                       _loc8_.§=`§.§%E§ = null;
                                                                                       addr343:
                                                                                       §§push(_loc8_.§=`§);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             §§pop().§#!R§ = _loc6_.§<!7§;
                                                                                             addr330:
                                                                                             if(!(_loc14_ && param1))
                                                                                             {
                                                                                                addr276:
                                                                                                §§push(_loc6_.§<!7§);
                                                                                                if(!(_loc14_ && this))
                                                                                                {
                                                                                                   if(!(_loc14_ && param1))
                                                                                                   {
                                                                                                      §§push(null);
                                                                                                      if(_loc13_)
                                                                                                      {
                                                                                                         if(§§pop() != §§pop())
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           addr309:
                                                                                                                           _loc6_.§<!7§.§%E§ = _loc8_.§=`§;
                                                                                                                           if(!(_loc14_ && param1))
                                                                                                                           {
                                                                                                                              addr250:
                                                                                                                              _loc6_.§<!7§ = _loc8_.§=`§;
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 if(!(_loc14_ && this))
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr276);
                                                                                                                                    }
                                                                                                                                    addr527:
                                                                                                                                    var _loc11_:*;
                                                                                                                                    §§push((_loc11_ = this.m_world).§?o§);
                                                                                                                                    if(_loc13_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                    }
                                                                                                                                    var _loc12_:* = §§pop();
                                                                                                                                    if(_loc13_ || param2)
                                                                                                                                    {
                                                                                                                                       _loc11_.§?o§ = _loc12_;
                                                                                                                                    }
                                                                                                                                    §§goto(addr551);
                                                                                                                                 }
                                                                                                                                 §§goto(addr343);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr551);
                                                                                                                        }
                                                                                                                        §§goto(addr475);
                                                                                                                     }
                                                                                                                     §§goto(addr383);
                                                                                                                  }
                                                                                                                  §§goto(addr368);
                                                                                                               }
                                                                                                               §§goto(addr330);
                                                                                                            }
                                                                                                            §§goto(addr551);
                                                                                                         }
                                                                                                         §§goto(addr250);
                                                                                                      }
                                                                                                      §§goto(addr397);
                                                                                                   }
                                                                                                   §§goto(addr400);
                                                                                                }
                                                                                                §§goto(addr309);
                                                                                             }
                                                                                             §§goto(addr351);
                                                                                          }
                                                                                          §§goto(addr347);
                                                                                       }
                                                                                       §§goto(addr341);
                                                                                    }
                                                                                    §§goto(addr503);
                                                                                 }
                                                                                 §§goto(addr398);
                                                                              }
                                                                              §§goto(addr400);
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                        §§goto(addr524);
                                                                     }
                                                                     §§goto(addr439);
                                                                  }
                                                                  §§goto(addr510);
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                            §§goto(addr551);
                                                         }
                                                         §§goto(addr428);
                                                         addr441:
                                                      }
                                                      §§goto(addr447);
                                                   }
                                                   §§goto(addr451);
                                                }
                                                §§goto(addr445);
                                             }
                                             addr551:
                                             return;
                                          }
                                          §§goto(addr500);
                                       }
                                       §§goto(addr527);
                                    }
                                 }
                                 §§goto(addr501);
                              }
                              §§goto(addr441);
                           }
                           else
                           {
                              addr219:
                              §§push(this.§!!q§.§'!3§(_loc3_,_loc4_));
                              §§push(false);
                           }
                           §§goto(addr224);
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!_loc14_)
                           {
                              break;
                           }
                        }
                        §§goto(addr224);
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr224);
               }
               else
               {
                  if(_loc7_.§9"§ != _loc5_)
                  {
                     continue;
                  }
                  if(_loc14_ && _loc3_)
                  {
                     break;
                  }
                  _loc9_ = _loc7_.§80§.§68§();
                  _loc10_ = _loc7_.§80§.§[t§();
                  if(!(_loc14_ && this))
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
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc9_ == _loc4_);
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc13_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             loop7:
                                             for(; §§pop(); continue loop1)
                                             {
                                                if(!(_loc13_ || this))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   continue loop6;
                                                }
                                                if(!_loc14_)
                                                {
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop6;
                                                }
                                                addr147:
                                                while(true)
                                                {
                                                   if(_loc14_ && this)
                                                   {
                                                      addr161:
                                                      if(!_loc14_)
                                                      {
                                                         return;
                                                      }
                                                      break;
                                                   }
                                                   §§push(_loc10_ == _loc3_);
                                                   if(!_loc13_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc13_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc13_ || this)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr171);
                                             }
                                             continue loop0;
                                             addr115:
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr147);
                                       }
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr161);
                              }
                           }
                        }
                        if(_loc14_ && this)
                        {
                           continue;
                        }
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr171);
               }
            }
            return;
         }
         addr57:
      }
      
      public function §,K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§0!f§.§"-§(this.§`!Y§);
         }
      }
      
      public function §,!W§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Fixture = param1.§68§();
         var _loc3_:b2Fixture = param1.§[t§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(_loc8_ || _loc2_)
         {
            if(param1.§]i§())
            {
               while(true)
               {
                  this.§"s§.EndContact(param1);
                  addr340:
                  while(true)
                  {
                  }
               }
               addr326:
            }
            loop2:
            while(true)
            {
               §§push(param1.§[2§);
               if(_loc8_ || _loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§[2§);
                        addr317:
                        while(true)
                        {
                           §§pop().§@o§ = param1.§@o§;
                           addr320:
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 continue loop2;
                              }
                              addr322:
                           }
                        }
                     }
                     addr315:
                  }
                  while(true)
                  {
                     §§push(param1.§@o§);
                     if(_loc8_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           addr298:
                           while(true)
                           {
                              §§push(param1.§@o§);
                              addr300:
                              while(true)
                              {
                                 §§pop().§[2§ = param1.§[2§;
                                 addr303:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr298:
                        }
                        while(true)
                        {
                           if(param1 == this.m_world.§<!7§)
                           {
                              while(true)
                              {
                                 if(!_loc9_)
                                 {
                                    if(!_loc9_)
                                    {
                                       this.m_world.§<!7§ = param1.§@o§;
                                       while(true)
                                       {
                                       }
                                       addr286:
                                    }
                                    else
                                    {
                                       §§goto(addr326);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr315);
                                 }
                              }
                              §§goto(addr320);
                              addr277:
                           }
                           while(true)
                           {
                              §§push(param1.§'"§);
                              loop10:
                              while(true)
                              {
                                 §§push(§§pop().§%E§);
                                 if(_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(param1.§'"§);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop().§%E§);
                                             addr266:
                                             while(true)
                                             {
                                                §§push(param1.§'"§.§#!R§);
                                                addr269:
                                                while(true)
                                                {
                                                   §§pop().§#!R§ = §§pop();
                                                }
                                             }
                                             loop16:
                                             while(true)
                                             {
                                                if(_loc9_ && param1)
                                                {
                                                   continue loop11;
                                                }
                                                if(_loc9_)
                                                {
                                                   continue loop10;
                                                }
                                                §§push(§§pop().§#!R§);
                                                while(true)
                                                {
                                                   §§push(param1.§'"§.§%E§);
                                                   addr247:
                                                   while(true)
                                                   {
                                                      §§pop().§%E§ = §§pop();
                                                      addr248:
                                                      while(true)
                                                      {
                                                         continue loop16;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr266);
                                          }
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr266);
                              }
                           }
                           §§goto(addr303);
                        }
                     }
                     §§goto(addr300);
                     §§goto(addr322);
                  }
               }
               §§goto(addr317);
            }
         }
         §§goto(addr303);
      }
      
      public function §,!t§() : void
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
         var _loc1_:b2Contact = this.m_world.§<!7§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§68§();
            _loc3_ = _loc1_.§[t§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc11_ || _loc1_)
            {
               §§push(_loc4_.IsAwake());
               if(_loc11_ || _loc2_)
               {
                  §§push(false);
                  if(_loc11_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc10_ && _loc1_))
                     {
                        §§push(§§pop());
                        if(!(_loc10_ && this))
                        {
                           if(§§pop())
                           {
                              if(_loc11_ || this)
                              {
                                 §§pop();
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(_loc10_)
                                    {
                                    }
                                    addr160:
                                    §§push(false);
                                    if(_loc11_ || _loc3_)
                                    {
                                       addr168:
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc11_)
                                          {
                                             _loc1_ = (_loc9_ = _loc1_).§>H§();
                                             if(_loc11_ || _loc2_)
                                             {
                                                this.§,!W§(_loc9_);
                                             }
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          addr195:
                                          if(this.§!!q§.§'!3§(_loc2_,_loc3_) == false)
                                          {
                                             if(_loc11_ || this)
                                             {
                                                addr203:
                                                _loc1_ = (_loc9_ = _loc1_).§>H§();
                                                if(_loc11_ || _loc3_)
                                                {
                                                   this.§,!W§(_loc9_);
                                                }
                                                continue;
                                             }
                                          }
                                          else
                                          {
                                             _loc1_.§]!p§ &= ~b2Contact.§%P§;
                                          }
                                       }
                                       addr229:
                                       _loc6_ = _loc2_.§ !P§;
                                       _loc7_ = _loc3_.§ !P§;
                                       if(!_loc10_)
                                       {
                                          §§push(this.§0!f§.§3!V§(_loc6_,_loc7_));
                                          if(!(_loc10_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc10_)
                                             {
                                                addr254:
                                                §§push(§§pop());
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   _loc8_ = §§pop();
                                                   addr263:
                                                   §§push(false);
                                                }
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      addr282:
                                                      _loc1_ = (_loc9_ = _loc1_).§>H§();
                                                      if(!(_loc10_ && _loc2_))
                                                      {
                                                         this.§,!W§(_loc9_);
                                                      }
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   _loc1_.§8!s§(this.§"s§);
                                                }
                                                _loc1_ = _loc1_.§>H§();
                                                continue;
                                             }
                                             §§goto(addr263);
                                          }
                                          §§goto(addr254);
                                       }
                                       §§goto(addr282);
                                    }
                                    §§goto(addr195);
                                 }
                                 addr155:
                                 §§push(_loc5_.§'!3§(_loc4_));
                                 if(!_loc10_)
                                 {
                                    §§goto(addr160);
                                 }
                                 §§goto(addr195);
                              }
                              §§push(false);
                              if(!_loc10_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc11_)
                                 {
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr195);
                           }
                           if(§§pop())
                           {
                              if(_loc11_)
                              {
                                 _loc1_ = _loc1_.§>H§();
                                 continue;
                              }
                           }
                           else
                           {
                              if(_loc1_.§]!p§ & b2Contact.§%P§)
                              {
                                 if(!(_loc10_ && this))
                                 {
                                    §§goto(addr155);
                                 }
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr203);
                        }
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr168);
               }
               §§goto(addr160);
            }
            §§goto(addr155);
         }
      }
   }
}
