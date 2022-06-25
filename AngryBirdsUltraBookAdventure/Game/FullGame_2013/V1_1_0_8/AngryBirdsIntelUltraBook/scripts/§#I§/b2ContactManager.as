package §#I§
{
   import §4]§.b2Contact;
   import §4]§.b2ContactEdge;
   import §4]§.b2ContactFactory;
   import §>!Z§.§<P§;
   import §>!Z§.b2ContactPoint;
   import §>!Z§.b2DynamicTreeBroadPhase;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const § =§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            § =§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §,>§:§<P§;
      
      b2internal var §0!?§:b2Contact;
      
      b2internal var §,l§:int;
      
      b2internal var §?Z§:b2ContactFilter;
      
      b2internal var §;!#§:b2ContactListener;
      
      b2internal var §,!1§:b2ContactFactory;
      
      b2internal var §'!H§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            while(true)
            {
               this.m_world = null;
               addr57:
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            this.§,l§ = 0;
            loop2:
            while(true)
            {
               this.§?Z§ = b2ContactFilter.§^!J§;
               loop3:
               while(true)
               {
                  this.§;!#§ = b2ContactListener.§8d§;
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        this.§,!1§ = new b2ContactFactory(this.§'!H§);
                        continue loop3;
                     }
                     continue loop2;
                     addr40:
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     §§goto(addr57);
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public function §0]§(param1:*, param2:*) : void
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
               if(!(_loc14_ && _loc3_))
               {
                  return;
               }
            }
         }
         var _loc7_:b2ContactEdge = _loc6_.§>!3§();
         loop0:
         while(true)
         {
            if(!_loc7_)
            {
               if(!(_loc14_ && param2))
               {
                  §§push(_loc6_.§'!F§(_loc5_));
                  if(_loc13_ || this)
                  {
                     §§push(false);
                     if(!(_loc14_ && this))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc13_ || param1)
                           {
                              break;
                           }
                           §§goto(addr223);
                        }
                        addr219:
                        §§push(this.§?Z§.§'!F§(_loc3_,_loc4_));
                        §§push(false);
                        §§goto(addr223);
                     }
                     if(§§pop() == §§pop())
                     {
                        if(_loc13_)
                        {
                           §§goto(addr223);
                        }
                     }
                     var _loc8_:b2Contact;
                     _loc3_ = (_loc8_ = this.§,!1§.§1!Y§(_loc3_,_loc4_)).§`!a§();
                     _loc4_ = _loc8_.§2!s§();
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if(_loc13_ || this)
                     {
                        _loc8_.§+!3§ = null;
                        _loc8_.§=!8§ = this.m_world.§0!?§;
                        addr530:
                        addr534:
                        §§push(this.m_world);
                        if(!_loc14_)
                        {
                           §§push(§§pop().§0!?§);
                           if(_loc13_ || param1)
                           {
                              if(§§pop() != null)
                              {
                                 addr501:
                                 §§push(this.m_world);
                                 if(_loc13_ || _loc3_)
                                 {
                                    §§pop().§0!?§.§+!3§ = _loc8_;
                                    addr523:
                                    §§push(this.m_world);
                                    if(_loc13_)
                                    {
                                       §§pop().§0!?§ = _loc8_;
                                       addr475:
                                       _loc8_.§=f§.§8!m§ = _loc8_;
                                       addr469:
                                       _loc8_.§=f§.§<!M§ = _loc6_;
                                       addr485:
                                       addr471:
                                       addr477:
                                       §§push(_loc8_.§=f§);
                                       if(!_loc14_)
                                       {
                                          §§pop().§!!m§ = null;
                                          addr465:
                                          §§push(_loc8_.§=f§);
                                          if(!_loc14_)
                                          {
                                             if(!_loc14_)
                                             {
                                                §§pop().§`!w§ = _loc5_.§0!?§;
                                                addr448:
                                                if(!(_loc14_ && this))
                                                {
                                                   if(!_loc14_)
                                                   {
                                                      addr409:
                                                      if(_loc5_.§0!?§ != null)
                                                      {
                                                         addr411:
                                                         if(_loc13_ || param2)
                                                         {
                                                            if(_loc13_ || param1)
                                                            {
                                                               if(!(_loc14_ && _loc3_))
                                                               {
                                                                  addr434:
                                                                  _loc5_.§0!?§.§!!m§ = _loc8_.§=f§;
                                                                  addr393:
                                                                  _loc5_.§0!?§ = _loc8_.§=f§;
                                                                  addr437:
                                                                  if(_loc13_ || param2)
                                                                  {
                                                                     addr374:
                                                                     _loc8_.§!!a§.§8!m§ = _loc8_;
                                                                     if(_loc13_ || this)
                                                                     {
                                                                        if(_loc13_)
                                                                        {
                                                                           if(_loc13_ || param1)
                                                                           {
                                                                              addr361:
                                                                              §§push(_loc8_.§!!a§);
                                                                              if(_loc13_ || _loc3_)
                                                                              {
                                                                                 §§pop().§<!M§ = _loc5_;
                                                                                 addr351:
                                                                                 addr370:
                                                                                 §§push(_loc8_.§!!a§);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    §§pop().§!!m§ = null;
                                                                                    addr355:
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§push(_loc8_.§!!a§);
                                                                                       if(!(_loc14_ && param1))
                                                                                       {
                                                                                          §§pop().§`!w§ = _loc6_.§0!?§;
                                                                                          if(!(_loc14_ && param2))
                                                                                          {
                                                                                             if(_loc13_ || this)
                                                                                             {
                                                                                                addr281:
                                                                                                §§push(_loc6_.§0!?§);
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      §§push(null);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         if(§§pop() != §§pop())
                                                                                                         {
                                                                                                            addr292:
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               addr296:
                                                                                                               §§push(_loc6_.§0!?§);
                                                                                                               if(_loc13_)
                                                                                                               {
                                                                                                                  §§pop().§!!m§ = _loc8_.§!!a§;
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     if(!(_loc14_ && param2))
                                                                                                                     {
                                                                                                                        if(_loc13_ || param2)
                                                                                                                        {
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              _loc6_.§0!?§ = _loc8_.§!!a§;
                                                                                                                              addr255:
                                                                                                                              if(_loc13_)
                                                                                                                              {
                                                                                                                                 if(!(_loc14_ && param2))
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr281);
                                                                                                                                    }
                                                                                                                                    addr537:
                                                                                                                                    var _loc11_:*;
                                                                                                                                    §§push((_loc11_ = this.m_world).§,l§);
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + 1);
                                                                                                                                    }
                                                                                                                                    var _loc12_:* = §§pop();
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       _loc11_.§,l§ = _loc12_;
                                                                                                                                    }
                                                                                                                                    §§goto(addr551);
                                                                                                                                 }
                                                                                                                                 §§goto(addr292);
                                                                                                                              }
                                                                                                                              §§goto(addr551);
                                                                                                                           }
                                                                                                                           §§goto(addr530);
                                                                                                                        }
                                                                                                                        §§goto(addr485);
                                                                                                                     }
                                                                                                                     §§goto(addr355);
                                                                                                                  }
                                                                                                                  §§goto(addr551);
                                                                                                               }
                                                                                                               §§goto(addr409);
                                                                                                            }
                                                                                                            §§goto(addr411);
                                                                                                         }
                                                                                                         §§goto(addr255);
                                                                                                      }
                                                                                                      §§goto(addr409);
                                                                                                   }
                                                                                                   §§goto(addr434);
                                                                                                }
                                                                                                §§goto(addr296);
                                                                                             }
                                                                                             §§goto(addr437);
                                                                                          }
                                                                                          §§goto(addr551);
                                                                                       }
                                                                                       §§goto(addr351);
                                                                                    }
                                                                                    §§goto(addr370);
                                                                                 }
                                                                                 §§goto(addr361);
                                                                              }
                                                                              §§goto(addr374);
                                                                           }
                                                                           §§goto(addr534);
                                                                        }
                                                                        §§goto(addr434);
                                                                     }
                                                                     addr551:
                                                                     return;
                                                                  }
                                                                  §§goto(addr448);
                                                               }
                                                               §§goto(addr501);
                                                            }
                                                            §§goto(addr471);
                                                         }
                                                         §§goto(addr465);
                                                      }
                                                      §§goto(addr393);
                                                   }
                                                   §§goto(addr523);
                                                }
                                                §§goto(addr477);
                                             }
                                          }
                                          §§goto(addr475);
                                       }
                                       §§goto(addr469);
                                    }
                                    addr511:
                                    addr510:
                                 }
                                 §§goto(addr537);
                              }
                              §§goto(addr523);
                           }
                           §§goto(addr511);
                        }
                        §§goto(addr510);
                     }
                     §§goto(addr351);
                  }
                  §§goto(addr219);
               }
               addr223:
               return;
            }
            if(_loc7_.§<!M§ != _loc5_)
            {
               continue;
            }
            if(!(_loc13_ || param1))
            {
               break;
            }
            _loc9_ = _loc7_.§8!m§.§`!a§();
            _loc10_ = _loc7_.§8!m§.§2!s§();
            if(_loc13_ || param1)
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
                        loop6:
                        while(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§push(_loc9_ == _loc4_);
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc13_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    loop9:
                                    for(; _loc13_; §§push(_loc10_ == _loc3_),if(_loc14_)
                                    {
                                       continue;
                                    },if(_loc14_ && _loc3_)
                                    {
                                       continue loop8;
                                    },if(_loc14_)
                                    {
                                       continue loop6;
                                    },if(_loc13_ || param2)
                                    {
                                       loop11:
                                       while(§§pop())
                                       {
                                          if(_loc13_ || param1)
                                          {
                                             §§goto(addr119);
                                          }
                                          else
                                          {
                                             if(!(_loc13_ || param2))
                                             {
                                                continue loop7;
                                             }
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   break loop11;
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                       continue loop0;
                                       addr110:
                                    },§§goto(addr170))
                                    {
                                       §§pop();
                                       while(!(_loc14_ && param2))
                                       {
                                          continue loop9;
                                          if(_loc13_ || param1)
                                          {
                                             if(_loc13_)
                                             {
                                                return;
                                             }
                                             break loop6;
                                          }
                                       }
                                       §§goto(addr171);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr110);
                              }
                              continue loop2;
                           }
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr136);
         }
      }
      
      public function §-!V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§,>§.§9N§(this.§0]§);
         }
      }
      
      public function §=_§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Fixture = param1.§`!a§();
         var _loc3_:b2Fixture = param1.§2!s§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(_loc8_)
         {
            if(param1.§>5§())
            {
               while(true)
               {
                  this.§;!#§.EndContact(param1);
                  addr355:
                  while(true)
                  {
                  }
               }
               addr351:
            }
            loop2:
            while(true)
            {
               §§push(param1.§+!3§);
               if(_loc8_ || param1)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§+!3§);
                        addr344:
                        while(true)
                        {
                           §§pop().§=!8§ = param1.§=!8§;
                           addr347:
                           while(true)
                           {
                           }
                        }
                     }
                     addr332:
                  }
                  while(true)
                  {
                     §§push(param1.§=!8§);
                     if(_loc8_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           while(!_loc9_)
                           {
                              §§push(param1.§=!8§);
                              while(true)
                              {
                                 §§pop().§+!3§ = param1.§+!3§;
                                 addr320:
                                 while(true)
                                 {
                                 }
                              }
                              addr129:
                              if(_loc9_ && _loc3_)
                              {
                                 continue;
                              }
                              §§push(param1.§!!a§);
                              loop27:
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop().§`!w§);
                                       loop29:
                                       while(true)
                                       {
                                          §§push(param1.§!!a§.§!!m§);
                                          if(_loc8_)
                                          {
                                             §§pop().§!!m§ = §§pop();
                                             loop30:
                                             while(true)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   continue loop27;
                                                }
                                                addr229:
                                                addr229:
                                                addr249:
                                                loop20:
                                                while(true)
                                                {
                                                   if(!(_loc9_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param1.§!!a§);
                                                         break loop27;
                                                      }
                                                      addr157:
                                                   }
                                                   addr244:
                                                   while(_loc8_)
                                                   {
                                                      §§push(param1.§=f§);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§`!w§);
                                                         break loop20;
                                                      }
                                                   }
                                                   §§goto(addr320);
                                                   continue loop30;
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.§=f§.§!!m§);
                                                   break loop29;
                                                }
                                             }
                                             addr149:
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          §§pop().§!!m§ = §§pop();
                                          addr253:
                                          loop17:
                                          while(true)
                                          {
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                addr275:
                                                while(true)
                                                {
                                                   §§push(param1.§=f§);
                                                   if(_loc8_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(§§pop() == _loc4_.§0!?§)
                                                         {
                                                            while(!(_loc9_ && _loc2_))
                                                            {
                                                               _loc4_.§0!?§ = param1.§=f§.§`!w§;
                                                               §§goto(addr229);
                                                            }
                                                            continue loop2;
                                                            addr217:
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr248);
                                                }
                                                while(_loc8_)
                                                {
                                                   §§push(§§pop().§`!w§);
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr207);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                }
                                                addr207:
                                                while(true)
                                                {
                                                   §§push(§§pop().§!!m§);
                                                   break loop17;
                                                }
                                                addr275:
                                                addr240:
                                             }
                                             addr273:
                                             while(true)
                                             {
                                                §§goto(addr275);
                                             }
                                          }
                                          loop34:
                                          while(true)
                                          {
                                             §§push(param1.§=f§.§`!w§);
                                             loop35:
                                             while(true)
                                             {
                                                §§pop().§`!w§ = §§pop();
                                                addr280:
                                                addr301:
                                                while(!_loc9_)
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr240);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   addr261:
                                                   while(true)
                                                   {
                                                      §§push(param1.§=f§);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(§§pop().§!!m§);
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr273);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr237);
                                                            }
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(param1.§!!a§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§!!m§);
                                                                           addr193:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc8_ || _loc2_))
                                                                              {
                                                                                 continue loop34;
                                                                              }
                                                                              §§push(param1.§!!a§.§`!w§);
                                                                              if(_loc9_)
                                                                              {
                                                                                 continue loop35;
                                                                              }
                                                                              §§pop().§`!w§ = §§pop();
                                                                              loop32:
                                                                              while(true)
                                                                              {
                                                                                 addr106:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§!!a§);
                                                                                    addr109:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§`!w§);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(!(_loc9_ && this))
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                             if(!(_loc8_ || param1))
                                                                                             {
                                                                                                §§goto(addr371);
                                                                                             }
                                                                                             §§goto(addr129);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr143);
                                                                                       }
                                                                                       §§goto(addr249);
                                                                                    }
                                                                                    §§goto(addr243);
                                                                                    continue loop32;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr192:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr351);
                                                                     }
                                                                  }
                                                                  §§goto(addr217);
                                                               }
                                                               addr186:
                                                            }
                                                            §§goto(addr106);
                                                         }
                                                         addr272:
                                                      }
                                                      §§goto(addr275);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr143:
                                    }
                                    break;
                                 }
                                 §§goto(addr192);
                              }
                              while(true)
                              {
                                 §§push(§§pop().§!!m§);
                                 if(_loc8_ || this)
                                 {
                                    §§goto(addr168);
                                 }
                                 §§goto(addr193);
                              }
                              §§goto(addr272);
                           }
                           continue;
                        }
                        while(true)
                        {
                           if(param1 == this.m_world.§0!?§)
                           {
                              if(_loc8_ || _loc2_)
                              {
                                 this.m_world.§0!?§ = param1.§=!8§;
                                 §§goto(addr301);
                              }
                              addr371:
                              return;
                           }
                           §§goto(addr261);
                           §§goto(addr320);
                        }
                     }
                     §§goto(addr317);
                  }
               }
               §§goto(addr344);
            }
         }
         §§goto(addr301);
      }
      
      public function §7@§() : void
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
         var _loc1_:b2Contact = this.m_world.§0!?§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§`!a§();
            _loc3_ = _loc1_.§2!s§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(!(_loc10_ && this))
            {
               §§push(_loc4_.IsAwake());
               if(!_loc10_)
               {
                  §§push(false);
                  if(_loc11_ || _loc3_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!_loc10_)
                     {
                        §§push(§§pop());
                        if(_loc11_)
                        {
                           if(§§pop())
                           {
                              if(!_loc10_)
                              {
                                 §§pop();
                                 if(_loc11_)
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(_loc11_)
                                    {
                                       addr98:
                                       §§push(false);
                                       if(_loc11_)
                                       {
                                          addr101:
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc10_ && this))
                                          {
                                             addr109:
                                             if(§§pop())
                                             {
                                                if(_loc11_)
                                                {
                                                   _loc1_ = _loc1_.§?!^§();
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                if(_loc1_.§[B§ & b2Contact.§]!Y§)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      addr135:
                                                      §§push(_loc5_.§'!F§(_loc4_));
                                                      if(_loc11_ || _loc2_)
                                                      {
                                                         addr145:
                                                         §§push(false);
                                                         if(_loc11_)
                                                         {
                                                            addr148:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  _loc1_ = (_loc9_ = _loc1_).§?!^§();
                                                                  if(_loc11_)
                                                                  {
                                                                     this.§=_§(_loc9_);
                                                                  }
                                                                  continue;
                                                               }
                                                               addr194:
                                                               _loc6_ = _loc2_.§8""§;
                                                               _loc7_ = _loc3_.§8""§;
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(this.§,>§.§]I§(_loc6_,_loc7_));
                                                                  if(!(_loc10_ && _loc2_))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           addr228:
                                                                           §§push(false);
                                                                        }
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc11_ || _loc3_)
                                                                           {
                                                                              _loc1_ = (_loc9_ = _loc1_).§?!^§();
                                                                              if(_loc11_ || this)
                                                                              {
                                                                                 this.§=_§(_loc9_);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr269:
                                                                              _loc1_ = _loc1_.§?!^§();
                                                                           }
                                                                           continue;
                                                                        }
                                                                        _loc1_.§3!r§(this.§;!#§);
                                                                        §§goto(addr269);
                                                                        §§goto(addr269);
                                                                     }
                                                                  }
                                                                  §§goto(addr228);
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                            else
                                                            {
                                                               addr170:
                                                               if(this.§?Z§.§'!F§(_loc2_,_loc3_) == false)
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§goto(addr194);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc1_.§[B§ &= ~b2Contact.§]!Y§;
                                                                  §§goto(addr194);
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                }
                                                §§goto(addr194);
                                             }
                                             _loc1_ = (_loc9_ = _loc1_).§?!^§();
                                             if(!_loc10_)
                                             {
                                                this.§=_§(_loc9_);
                                             }
                                             continue;
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr148);
               }
               §§goto(addr145);
            }
            §§goto(addr194);
         }
      }
   }
}
