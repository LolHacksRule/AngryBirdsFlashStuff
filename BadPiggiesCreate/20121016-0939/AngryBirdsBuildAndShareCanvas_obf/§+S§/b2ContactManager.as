package §+S§
{
   import §5!o§.§#!M§;
   import §5!o§.b2ContactPoint;
   import §5!o§.b2DynamicTreeBroadPhase;
   import §;T§.b2Contact;
   import §;T§.b2ContactEdge;
   import §;T§.b2ContactFactory;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §^"&§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2ContactManager)
         {
            §^"&§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §9n§:§#!M§;
      
      b2internal var §]8§:b2Contact;
      
      b2internal var §3!Z§:int;
      
      b2internal var §"!V§:b2ContactFilter;
      
      b2internal var §@<§:b2ContactListener;
      
      b2internal var §1!s§:b2ContactFactory;
      
      b2internal var §=!6§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            while(true)
            {
               this.m_world = null;
               loop1:
               while(true)
               {
                  this.§3!Z§ = 0;
                  while(true)
                  {
                     this.§"!V§ = b2ContactFilter.§5"=§;
                     addr82:
                     while(_loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
               addr69:
               if(_loc1_ && this)
               {
                  continue;
               }
               this.§1!s§ = new b2ContactFactory(this.§=!6§);
               while(!_loc1_)
               {
                  this.§9n§ = new b2DynamicTreeBroadPhase();
                  if(_loc2_ || this)
                  {
                     return;
                  }
               }
               while(_loc2_)
               {
                  §§goto(addr69);
               }
               §§goto(addr82);
               addr67:
            }
         }
         while(true)
         {
            this.§@<§ = b2ContactListener.§^!1§;
            §§goto(addr67);
         }
      }
      
      public function §>E§(param1:*, param2:*) : void
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
               if(_loc13_)
               {
                  §§goto(addr47);
               }
            }
            var _loc7_:b2ContactEdge = _loc6_.§4!T§();
            loop0:
            while(true)
            {
               if(_loc7_)
               {
                  if(_loc7_.§!!m§ == _loc5_)
                  {
                     if(!_loc13_)
                     {
                        break;
                     }
                     _loc9_ = _loc7_.§3w§.§=!'§();
                     _loc10_ = _loc7_.§3w§.§&O§();
                  }
                  continue;
                  if(_loc13_)
                  {
                     §§push(_loc9_ == _loc3_);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop());
                        loop2:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc14_ && param1))
                                    {
                                       if(_loc13_ || this)
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          addr112:
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc9_ == _loc4_);
                                             loop9:
                                             while(true)
                                             {
                                                if(_loc13_ || param2)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc13_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr128:
                                                         while(true)
                                                         {
                                                            if(_loc13_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                   while(§§pop())
                                                   {
                                                      if(_loc14_ && _loc3_)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         continue loop8;
                                                      }
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         §§goto(addr109);
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   continue loop0;
                                                }
                                                addr165:
                                                while(true)
                                                {
                                                   §§pop();
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(_loc10_ == _loc4_);
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr112);
                              }
                              return;
                              addr142:
                           }
                           §§goto(addr165);
                        }
                     }
                  }
                  addr109:
                  return;
               }
               if(_loc13_)
               {
                  break;
               }
               addr194:
               addr200:
               addr199:
               if(this.§"!V§.§ each§(_loc3_,_loc4_) == false)
               {
                  if(_loc13_)
                  {
                     return;
                  }
               }
               var _loc8_:b2Contact;
               _loc3_ = (_loc8_ = this.§1!s§.§-!x§(_loc3_,_loc4_)).§=!'§();
               _loc4_ = _loc8_.§&O§();
               _loc5_ = _loc3_.m_body;
               _loc6_ = _loc4_.m_body;
               if(_loc13_ || param1)
               {
                  _loc8_.§7b§ = null;
                  while(true)
                  {
                     _loc8_.§>""§ = this.m_world.§]8§;
                     while(true)
                     {
                        §§push(this.m_world);
                        if(_loc13_ || param2)
                        {
                           §§push(§§pop().§]8§);
                           if(!(_loc14_ && this))
                           {
                              if(§§pop() != null)
                              {
                                 loop15:
                                 while(true)
                                 {
                                    §§push(this.m_world);
                                    if(_loc13_ || param1)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop().§]8§);
                                          addr526:
                                          while(true)
                                          {
                                             §§pop().§7b§ = _loc8_;
                                             loop24:
                                             while(true)
                                             {
                                                addr488:
                                                while(true)
                                                {
                                                   §§push(this.m_world);
                                                   if(_loc14_)
                                                   {
                                                      break loop15;
                                                   }
                                                   §§pop().§]8§ = _loc8_;
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.§8I§);
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§pop().§3w§ = _loc8_;
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(_loc8_.§8I§);
                                                            while(true)
                                                            {
                                                               §§pop().§!!m§ = _loc6_;
                                                               addr460:
                                                               while(!(_loc14_ && param2))
                                                               {
                                                                  continue loop15;
                                                               }
                                                               continue loop19;
                                                               addr436:
                                                               if(!(_loc13_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc14_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               §§pop().§9!V§ = _loc5_.§]8§;
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.§]8§);
                                                                  while(true)
                                                                  {
                                                                     §§push(null);
                                                                     addr412:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.§]8§);
                                                                              addr415:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§["'§ = _loc8_.§8I§;
                                                                                 addr418:
                                                                                 addr454:
                                                                                 while(!(_loc14_ && this))
                                                                                 {
                                                                                 }
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_.§8I§);
                                                                                    if(!(_loc14_ && param2))
                                                                                    {
                                                                                       §§goto(addr436);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§["'§ = null;
                                                                                          continue loop26;
                                                                                       }
                                                                                       addr452:
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr413:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc5_.§]8§ = _loc8_.§8I§;
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc8_.§55§);
                                                                              loop35:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§3w§ = _loc8_;
                                                                                 addr401:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_.§55§);
                                                                                    continue loop35;
                                                                                 }
                                                                              }
                                                                              addr249:
                                                                              if(_loc14_ && param2)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc14_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(this.m_world);
                                                                                    break loop15;
                                                                                 }
                                                                                 §§goto(addr260);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr460);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     if(!(_loc13_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(null);
                                                                     if(!_loc14_)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           if(_loc14_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           if(!_loc14_)
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 continue loop27;
                                                                              }
                                                                              §§goto(addr418);
                                                                           }
                                                                           §§goto(addr381);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc6_.§]8§ = _loc8_.§55§;
                                                                           if(!_loc14_)
                                                                           {
                                                                              addr242:
                                                                              if(!(_loc13_ || param1))
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              §§goto(addr249);
                                                                           }
                                                                           §§goto(addr566);
                                                                        }
                                                                        addr235:
                                                                     }
                                                                     §§goto(addr412);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop24;
                                                }
                                             }
                                          }
                                       }
                                       addr525:
                                    }
                                    break;
                                 }
                                 var _loc11_:*;
                                 §§push((_loc11_ = §§pop()).§3!Z§);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc12_:* = §§pop();
                                 if(_loc13_)
                                 {
                                    _loc11_.§3!Z§ = _loc12_;
                                 }
                                 §§goto(addr566);
                              }
                              §§goto(addr488);
                           }
                           §§goto(addr526);
                        }
                        §§goto(addr525);
                        if(_loc14_ && param2)
                        {
                           continue;
                        }
                        §§goto(addr452);
                        §§push(_loc8_.§8I§);
                     }
                  }
               }
               §§goto(addr454);
            }
            §§push(_loc6_.§ each§(_loc5_));
            if(!_loc14_)
            {
               §§push(false);
               if(!_loc14_)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc13_ || param2)
                     {
                        return;
                     }
                  }
                  §§goto(addr194);
               }
               §§goto(addr200);
            }
            §§goto(addr199);
         }
         addr47:
      }
      
      public function §+"-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§9n§.§^!`§(this.§>E§);
         }
      }
      
      public function §;&§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Fixture = param1.§=!'§();
         var _loc3_:b2Fixture = param1.§&O§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(_loc8_ || _loc3_)
         {
            if(param1.§%!1§())
            {
               loop0:
               while(true)
               {
                  this.§@<§.EndContact(param1);
                  addr350:
                  while(true)
                  {
                  }
                  loop43:
                  while(true)
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        loop6:
                        while(true)
                        {
                           if(param1 == this.m_world.§]8§)
                           {
                              addr292:
                              while(true)
                              {
                                 if(_loc9_ && _loc2_)
                                 {
                                    continue loop43;
                                 }
                                 this.m_world.§]8§ = param1.§>""§;
                                 while(_loc8_)
                                 {
                                 }
                                 §§goto(addr350);
                              }
                              continue loop43;
                              addr292:
                           }
                           while(true)
                           {
                              §§push(param1.§8I§);
                              loop10:
                              while(true)
                              {
                                 §§push(§§pop().§["'§);
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             §§push(param1.§8I§);
                                             loop13:
                                             while(true)
                                             {
                                                §§push(§§pop().§["'§);
                                                addr281:
                                                while(true)
                                                {
                                                   §§push(param1.§8I§.§9!V§);
                                                   addr284:
                                                   while(true)
                                                   {
                                                      §§pop().§9!V§ = §§pop();
                                                      addr285:
                                                      while(true)
                                                      {
                                                         addr251:
                                                         while(true)
                                                         {
                                                            §§push(param1.§8I§);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§9!V§);
                                                               addr255:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.§8I§);
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop18;
                                                                     addr214:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.§8I§);
                                                                     continue loop10;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr337:
                                          while(true)
                                          {
                                             §§push(param1.§7b§);
                                             addr339:
                                             while(true)
                                             {
                                                §§pop().§>""§ = param1.§>""§;
                                                break loop12;
                                             }
                                          }
                                       }
                                       loop45:
                                       while(true)
                                       {
                                          addr307:
                                          while(true)
                                          {
                                             §§push(param1.§>""§);
                                             if(_loc8_ || _loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop6;
                                                }
                                                §§goto(addr318);
                                             }
                                             §§goto(addr320);
                                             continue loop45;
                                          }
                                       }
                                    }
                                    §§goto(addr251);
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               §§push(param1.§7b§);
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     §§goto(addr337);
                  }
                  §§goto(addr307);
               }
               §§goto(addr339);
               §§goto(addr350);
            }
         }
         §§goto(addr213);
      }
      
      public function §1!]§() : void
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
         var _loc1_:b2Contact = this.m_world.§]8§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§=!'§();
            _loc3_ = _loc1_.§&O§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc10_ || this)
            {
               §§push(_loc4_.IsAwake());
               if(!(_loc11_ && _loc2_))
               {
                  §§push(false);
                  if(_loc10_ || _loc2_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc10_)
                     {
                        §§push(§§pop());
                        if(_loc10_ || _loc1_)
                        {
                           if(§§pop())
                           {
                              if(!_loc11_)
                              {
                                 addr100:
                                 §§pop();
                                 if(!_loc11_)
                                 {
                                    addr103:
                                    §§push(_loc5_.IsAwake());
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(false);
                                       if(_loc10_ || _loc3_)
                                       {
                                          addr120:
                                          §§push(§§pop() == §§pop());
                                          if(!_loc11_)
                                          {
                                             addr123:
                                             if(§§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   _loc1_ = _loc1_.§'!q§();
                                                   continue;
                                                }
                                             }
                                             else if(_loc1_.§`"8§ & b2Contact.§#!>§)
                                             {
                                                if(!(_loc11_ && _loc2_))
                                                {
                                                   §§push(_loc5_.§ each§(_loc4_));
                                                   if(!_loc11_)
                                                   {
                                                      §§push(false);
                                                      if(_loc10_)
                                                      {
                                                         addr162:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!(_loc11_ && _loc2_))
                                                            {
                                                               _loc1_ = (_loc9_ = _loc1_).§'!q§();
                                                               if(!_loc11_)
                                                               {
                                                                  this.§;&§(_loc9_);
                                                               }
                                                               continue;
                                                            }
                                                            addr223:
                                                            _loc6_ = _loc2_.§-!]§;
                                                            _loc7_ = _loc3_.§-!]§;
                                                            if(_loc10_ || this)
                                                            {
                                                               §§push(this.§9n§.§;c§(_loc6_,_loc7_));
                                                               if(!(_loc11_ && _loc1_))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc10_)
                                                                  {
                                                                     addr253:
                                                                     §§push(§§pop());
                                                                     if(!(_loc11_ && _loc2_))
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        addr262:
                                                                        §§push(false);
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           addr266:
                                                                           _loc1_ = (_loc9_ = _loc1_).§'!q§();
                                                                           if(!_loc11_)
                                                                           {
                                                                              this.§;&§(_loc9_);
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc1_.§?L§(this.§@<§);
                                                                     }
                                                                     _loc1_ = _loc1_.§'!q§();
                                                                     continue;
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                         else
                                                         {
                                                            addr188:
                                                            §§push(this.§"!V§.§ each§(_loc2_,_loc3_));
                                                            §§push(false);
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc10_ || _loc1_)
                                                         {
                                                            addr197:
                                                            _loc1_ = (_loc9_ = _loc1_).§'!q§();
                                                            if(!(_loc11_ && this))
                                                            {
                                                               this.§;&§(_loc9_);
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc1_.§`"8§ &= ~b2Contact.§#!>§;
                                                      }
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr223);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr197);
                              }
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr120);
               }
               §§goto(addr100);
            }
            §§goto(addr103);
         }
      }
   }
}
