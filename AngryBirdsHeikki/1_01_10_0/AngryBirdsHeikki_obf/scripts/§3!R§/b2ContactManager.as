package §3!R§
{
   import §!4§.§!s§;
   import §!4§.b2ContactPoint;
   import §!4§.b2DynamicTreeBroadPhase;
   import §=0§.b2Contact;
   import §=0§.b2ContactEdge;
   import §=0§.b2ContactFactory;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §3!,§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §3!,§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §-E§:§!s§;
      
      b2internal var §`W§:b2Contact;
      
      b2internal var § !N§:int;
      
      b2internal var §=n§:b2ContactFilter;
      
      b2internal var §;!5§:b2ContactListener;
      
      b2internal var §>1§:b2ContactFactory;
      
      b2internal var §[!<§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            while(true)
            {
               this.m_world = null;
               addr43:
               if(!(_loc1_ && this))
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            this.§ !N§ = 0;
            loop2:
            while(true)
            {
               this.§=n§ = b2ContactFilter.§'!a§;
               while(true)
               {
                  this.§;!5§ = b2ContactListener.§+l§;
                  while(_loc2_ || this)
                  {
                     this.§>1§ = new b2ContactFactory(this.§[!<§);
                     while(_loc2_ || this)
                     {
                        continue loop2;
                        this.§-E§ = new b2DynamicTreeBroadPhase();
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §7!5§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(_loc13_ || _loc3_)
         {
            if(_loc5_ == _loc6_)
            {
               if(_loc13_ || this)
               {
                  §§goto(addr57);
               }
            }
            var _loc7_:b2ContactEdge = _loc6_.§!+§();
            loop0:
            while(true)
            {
               if(!_loc7_)
               {
                  if(_loc13_)
                  {
                     §§push(_loc6_.§3!C§(_loc5_));
                     if(_loc13_ || param1)
                     {
                        §§push(false);
                        if(!_loc14_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc14_ && param2))
                              {
                                 return;
                              }
                              break;
                           }
                           addr194:
                           §§push(this.§=n§.§3!C§(_loc3_,_loc4_));
                           §§push(false);
                        }
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc14_ && param2))
                           {
                              return;
                           }
                           break;
                        }
                        break;
                     }
                     §§goto(addr194);
                  }
                  break;
               }
               if(_loc7_.§=!"§ != _loc5_)
               {
                  continue;
               }
               if(!_loc13_)
               {
                  break;
               }
               _loc9_ = _loc7_.§-!$§.§#!D§();
               _loc10_ = _loc7_.§-!$§.§''§();
               if(_loc13_)
               {
                  §§push(_loc9_ == _loc3_);
                  if(!_loc14_)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr155:
                           while(true)
                           {
                              §§pop();
                              addr156:
                              while(true)
                              {
                                 §§push(_loc10_ == _loc4_);
                              }
                           }
                           addr155:
                        }
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(!(_loc13_ || param1))
                                       {
                                          continue loop4;
                                       }
                                       addr137:
                                       §§push(_loc10_ == _loc3_);
                                       if(!(_loc14_ && param1))
                                       {
                                          if(_loc14_)
                                          {
                                             break;
                                             addr96:
                                          }
                                          loop9:
                                          while(§§pop())
                                          {
                                             if(!_loc14_)
                                             {
                                                if(!_loc14_)
                                                {
                                                   return;
                                                }
                                                continue loop8;
                                             }
                                             if(!_loc14_)
                                             {
                                                while(true)
                                                {
                                                   if(true)
                                                   {
                                                      break loop9;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc9_ == _loc4_);
                                                      break loop8;
                                                   }
                                                }
                                                addr105:
                                             }
                                             §§goto(addr156);
                                          }
                                          continue loop0;
                                       }
                                       addr129:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop8;
                                          §§goto(addr137);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!_loc13_)
                                       {
                                          continue loop3;
                                       }
                                       if(_loc13_ || param1)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr156);
                                 }
                              }
                              §§goto(addr107);
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr155);
               }
               §§goto(addr105);
            }
            var _loc8_:b2Contact;
            _loc3_ = (_loc8_ = this.§>1§.§;O§(_loc3_,_loc4_)).§#!D§();
            _loc4_ = _loc8_.§''§();
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            if(!_loc14_)
            {
               _loc8_.§8s§ = null;
               loop13:
               while(true)
               {
                  _loc8_.§>W§ = this.m_world.§`W§;
                  while(true)
                  {
                     §§push(this.m_world);
                     if(!_loc14_)
                     {
                        §§push(§§pop().§`W§);
                        if(!(_loc14_ && param1))
                        {
                           if(§§pop() != null)
                           {
                              loop15:
                              while(true)
                              {
                                 if(!_loc14_)
                                 {
                                    §§push(this.m_world);
                                    if(!_loc14_)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop().§`W§);
                                          addr486:
                                          while(true)
                                          {
                                             §§pop().§8s§ = _loc8_;
                                             loop40:
                                             while(true)
                                             {
                                                addr456:
                                                while(true)
                                                {
                                                   §§push(this.m_world);
                                                   if(_loc14_)
                                                   {
                                                      break loop15;
                                                   }
                                                   §§pop().§`W§ = _loc8_;
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.§0!=§);
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§pop().§-!$§ = _loc8_;
                                                         addr455:
                                                         while(true)
                                                         {
                                                            §§push(_loc8_.§0!=§);
                                                            continue loop18;
                                                         }
                                                      }
                                                      while(!(_loc14_ && _loc3_))
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            continue loop40;
                                                         }
                                                         §§goto(addr363);
                                                         §§push(_loc8_.§^!?§);
                                                      }
                                                   }
                                                   continue loop40;
                                                }
                                             }
                                          }
                                       }
                                       addr485:
                                    }
                                    break;
                                 }
                                 continue loop13;
                              }
                              var _loc11_:*;
                              §§push((_loc11_ = §§pop()).§ !N§);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc12_:* = §§pop();
                              if(!(_loc14_ && this))
                              {
                                 _loc11_.§ !N§ = _loc12_;
                              }
                              §§goto(addr531);
                           }
                           §§goto(addr456);
                        }
                        §§goto(addr486);
                     }
                     §§goto(addr485);
                     while(_loc13_ || _loc3_)
                     {
                        §§goto(addr425);
                        §§push(_loc8_.§0!=§);
                     }
                  }
               }
            }
            §§goto(addr405);
         }
         addr57:
      }
      
      public function §<o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§-E§.§"!R§(this.§7!5§);
         }
      }
      
      public function §;!^§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Fixture = param1.§#!D§();
         var _loc3_:b2Fixture = param1.§''§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!_loc8_)
         {
            if(param1.§1h§())
            {
               loop0:
               while(true)
               {
                  this.§;!5§.EndContact(param1);
                  addr341:
                  while(true)
                  {
                  }
                  loop32:
                  while(true)
                  {
                     if(_loc8_ && _loc2_)
                     {
                        continue loop0;
                     }
                     addr321:
                     loop6:
                     while(true)
                     {
                        if(param1 == this.m_world.§`W§)
                        {
                           loop7:
                           while(true)
                           {
                              if(!(_loc8_ && _loc3_))
                              {
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    this.m_world.§`W§ = param1.§>W§;
                                    if(_loc9_ || this)
                                    {
                                       while(true)
                                       {
                                          §§push(param1.§0!=§);
                                          if(_loc9_)
                                          {
                                             §§push(§§pop().§ true§);
                                             loop9:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param1.§0!=§);
                                                      addr259:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§ true§);
                                                         addr260:
                                                         while(true)
                                                         {
                                                            §§push(param1.§0!=§.§+m§);
                                                            addr263:
                                                            while(true)
                                                            {
                                                               §§pop().§+m§ = §§pop();
                                                               addr264:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr257:
                                                }
                                                while(true)
                                                {
                                                   §§push(param1.§0!=§);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§+m§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1.§0!=§);
                                                                  addr237:
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        addr245:
                                                                        §§push(§§pop().§+m§);
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.§0!=§.§ true§);
                                                                           addr248:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§ true§ = §§pop();
                                                                              addr249:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        addr245:
                                                                     }
                                                                     §§goto(addr259);
                                                                  }
                                                               }
                                                               addr235:
                                                            }
                                                            break loop7;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1.§0!=§);
                                                            if(_loc9_ || this)
                                                            {
                                                               if(!(_loc9_ || param1))
                                                               {
                                                                  continue loop12;
                                                               }
                                                               if(§§pop() == _loc4_.§`W§)
                                                               {
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     _loc4_.§`W§ = param1.§0!=§.§+m§;
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        addr152:
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(param1.§^!?§);
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§ true§);
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.§^!?§.§+m§);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§pop().§+m§ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_ || _loc2_)
                                                                                             {
                                                                                                addr187:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.§^!?§);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         §§push(§§pop().§+m§);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop21:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§push(param1.§^!?§);
                                                                                                                     loop24:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§+m§);
                                                                                                                        addr106:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc8_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc9_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(param1.§^!?§.§ true§);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    §§pop().§ true§ = §§pop();
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1.§^!?§);
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(§§pop() == _loc5_.§`W§)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      _loc5_.§`W§ = param1.§^!?§.§+m§;
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         break loop7;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                addr36:
                                                                                                                                                this.§>1§.§;!^§(param1);
                                                                                                                                                if(_loc8_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   break loop7;
                                                                                                                                                }
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(true)
                                                                                                                                                   {
                                                                                                                                                      var _loc6_:*;
                                                                                                                                                      §§push((_loc6_ = this).§ !N§);
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - 1);
                                                                                                                                                      }
                                                                                                                                                      var _loc7_:* = §§pop();
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      _loc6_.§ !N§ = _loc7_;
                                                                                                                                                   }
                                                                                                                                                   break loop7;
                                                                                                                                                }
                                                                                                                                                continue loop18;
                                                                                                                                             }
                                                                                                                                             continue loop24;
                                                                                                                                          }
                                                                                                                                          continue loop19;
                                                                                                                                          addr52:
                                                                                                                                       }
                                                                                                                                       addr309:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§>W§);
                                                                                                                                          addr311:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().§8s§ = param1.§8s§;
                                                                                                                                             continue loop32;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    break loop7;
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           §§goto(addr245);
                                                                                                                        }
                                                                                                                        §§goto(addr248);
                                                                                                                     }
                                                                                                                     addr105:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1.§8s§);
                                                                                                                        addr330:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().§>W§ = param1.§>W§;
                                                                                                                           addr333:
                                                                                                                           loop34:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr298:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.§>W§);
                                                                                                                                 if(_loc9_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    §§goto(addr309);
                                                                                                                                 }
                                                                                                                                 continue loop34;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr328:
                                                                                                                  }
                                                                                                                  §§goto(addr311);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr52);
                                                                                                         }
                                                                                                         §§goto(addr106);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().§ true§);
                                                                                                            if(_loc9_ || this)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         §§goto(addr260);
                                                                                                         addr134:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr105);
                                                                                                   §§goto(addr187);
                                                                                                }
                                                                                                §§goto(addr263);
                                                                                                addr90:
                                                                                             }
                                                                                             §§goto(addr264);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr263);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                        §§goto(addr249);
                                                                     }
                                                                  }
                                                                  break loop7;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr134);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr245);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr259);
                                       }
                                       addr250:
                                    }
                                    break;
                                 }
                                 §§goto(addr341);
                                 §§goto(addr330);
                              }
                              §§goto(addr333);
                           }
                           return;
                        }
                        §§goto(addr250);
                     }
                  }
               }
            }
            while(true)
            {
               §§push(param1.§8s§);
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     §§goto(addr328);
                  }
                  §§goto(addr298);
               }
               §§goto(addr330);
               §§goto(addr341);
            }
         }
         §§goto(addr235);
      }
      
      public function §!J§() : void
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
         var _loc1_:b2Contact = this.m_world.§`W§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§#!D§();
            _loc3_ = _loc1_.§''§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc11_ || _loc1_)
            {
               §§push(_loc4_.IsAwake());
               if(_loc11_)
               {
                  §§push(false);
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc11_ || _loc2_)
                     {
                        §§push(§§pop());
                        if(!(_loc10_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              if(_loc11_)
                              {
                                 §§pop();
                                 if(_loc11_)
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(!(_loc10_ && this))
                                    {
                                       §§push(false);
                                       if(_loc11_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc10_)
                                          {
                                             addr119:
                                             if(§§pop())
                                             {
                                                if(_loc11_)
                                                {
                                                   addr122:
                                                   _loc1_ = _loc1_.§5!J§();
                                                   continue;
                                                }
                                             }
                                             else if(_loc1_.§5!5§ & b2Contact.§^-§)
                                             {
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc5_.§3!C§(_loc4_));
                                                   if(_loc11_ || _loc1_)
                                                   {
                                                      addr145:
                                                      §§push(false);
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         addr163:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               _loc1_ = (_loc9_ = _loc1_).§5!J§();
                                                               if(!(_loc10_ && _loc1_))
                                                               {
                                                                  this.§;!^§(_loc9_);
                                                               }
                                                               continue;
                                                            }
                                                            addr229:
                                                            _loc6_ = _loc2_.§&<§;
                                                            _loc7_ = _loc3_.§&<§;
                                                            if(_loc11_ || _loc3_)
                                                            {
                                                               §§push(this.§-E§.§+!;§(_loc6_,_loc7_));
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc11_ || _loc1_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc11_)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        addr268:
                                                                        §§push(false);
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           _loc1_ = (_loc9_ = _loc1_).§5!J§();
                                                                           if(_loc11_)
                                                                           {
                                                                              this.§;!^§(_loc9_);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr304:
                                                                           _loc1_ = _loc1_.§5!J§();
                                                                        }
                                                                        continue;
                                                                     }
                                                                     _loc1_.§?!§(this.§;!5§);
                                                                     §§goto(addr304);
                                                                     §§goto(addr304);
                                                                  }
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                         else
                                                         {
                                                            addr194:
                                                            §§push(this.§=n§.§3!C§(_loc2_,_loc3_));
                                                            §§push(false);
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(!(_loc10_ && this))
                                                         {
                                                            addr203:
                                                            _loc1_ = (_loc9_ = _loc1_).§5!J§();
                                                            if(!(_loc10_ && _loc1_))
                                                            {
                                                               this.§;!^§(_loc9_);
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc1_.§5!5§ &= ~b2Contact.§^-§;
                                                      }
                                                   }
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr229);
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr203);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr163);
               }
               §§goto(addr119);
            }
            §§goto(addr122);
         }
      }
   }
}
