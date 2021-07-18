package § !t§
{
   import §#A§.b2Contact;
   import §#A§.b2ContactEdge;
   import §#A§.b2ContactFactory;
   import §'!;§.§1!p§;
   import §'!;§.b2ContactPoint;
   import §'!;§.b2DynamicTreeBroadPhase;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §%!Q§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §%!Q§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §3!C§:§1!p§;
      
      b2internal var §<!T§:b2Contact;
      
      b2internal var §"Z§:int;
      
      b2internal var §7q§:b2ContactFilter;
      
      b2internal var §+!&§:b2ContactListener;
      
      b2internal var §#!$§:b2ContactFactory;
      
      b2internal var §4!5§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         this.m_world = null;
         this.§"Z§ = 0;
         if(!_loc1_)
         {
            this.§7q§ = b2ContactFilter.§0w§;
            if(_loc2_ || _loc1_)
            {
               this.§+!&§ = b2ContactListener.§"!#§;
               if(!_loc1_)
               {
                  this.§#!$§ = new b2ContactFactory(this.§4!5§);
                  if(!_loc2_)
                  {
                  }
               }
               §§goto(addr78);
            }
            this.§3!C§ = new b2DynamicTreeBroadPhase();
         }
         addr78:
      }
      
      public function §5!S§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(_loc13_ || param2)
         {
            if(_loc5_ == _loc6_)
            {
               if(_loc13_)
               {
                  return;
               }
            }
         }
         var _loc7_:b2ContactEdge = _loc6_.§>!U§();
         while(true)
         {
            if(!_loc7_)
            {
               if(!_loc14_)
               {
                  §§push(_loc6_.§`t§(_loc5_));
                  if(_loc13_ || _loc3_)
                  {
                     §§push(false);
                     if(!(_loc14_ && _loc3_))
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc13_)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr190:
                           if(this.§7q§.§`t§(_loc3_,_loc4_) == false)
                           {
                              if(!_loc13_)
                              {
                                 addr194:
                                 var _loc8_:b2Contact;
                                 _loc3_ = (_loc8_ = this.§#!$§.§?J§(_loc3_,_loc4_)).§,^§();
                                 _loc4_ = _loc8_.§'!+§();
                                 _loc5_ = _loc3_.m_body;
                                 _loc6_ = _loc4_.m_body;
                                 if(!(_loc14_ && param1))
                                 {
                                    _loc8_.§?!D§ = null;
                                    if(_loc13_)
                                    {
                                       _loc8_.§ <§ = this.m_world.§<!T§;
                                       §§push(this.m_world);
                                       if(!_loc14_)
                                       {
                                          §§push(§§pop().§<!T§);
                                          if(_loc13_ || _loc3_)
                                          {
                                             if(§§pop() != null)
                                             {
                                                addr258:
                                                §§push(this.m_world);
                                                if(_loc13_)
                                                {
                                                   addr263:
                                                   §§pop().§<!T§.§?!D§ = _loc8_;
                                                   addr265:
                                                   §§push(this.m_world);
                                                   if(_loc13_)
                                                   {
                                                      §§pop().§<!T§ = _loc8_;
                                                      §§push(_loc8_.§>!3§);
                                                      if(!_loc14_)
                                                      {
                                                         §§pop().§12§ = _loc8_;
                                                         if(_loc13_ || param2)
                                                         {
                                                            §§push(_loc8_.§>!3§);
                                                            if(_loc13_ || param1)
                                                            {
                                                               §§pop().§'q§ = _loc6_;
                                                               if(_loc13_)
                                                               {
                                                                  §§push(_loc8_.§>!3§);
                                                                  if(_loc13_)
                                                                  {
                                                                     §§pop().§=6§ = null;
                                                                     if(!_loc14_)
                                                                     {
                                                                        addr307:
                                                                        _loc8_.§>!3§.§1!U§ = _loc5_.§<!T§;
                                                                        §§push(_loc5_.§<!T§);
                                                                        if(!(_loc14_ && param1))
                                                                        {
                                                                           §§push(null);
                                                                           if(!(_loc14_ && param1))
                                                                           {
                                                                              if(§§pop() != §§pop())
                                                                              {
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    addr330:
                                                                                    §§push(_loc5_.§<!T§);
                                                                                    if(!(_loc14_ && param2))
                                                                                    {
                                                                                       §§pop().§=6§ = _loc8_.§>!3§;
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    §§goto(addr422);
                                                                                 }
                                                                              }
                                                                              addr342:
                                                                              _loc5_.§<!T§ = _loc8_.§>!3§;
                                                                              if(!(_loc14_ && param1))
                                                                              {
                                                                                 §§push(_loc8_.§1A§);
                                                                                 if(!(_loc14_ && param1))
                                                                                 {
                                                                                    §§pop().§12§ = _loc8_;
                                                                                    if(!(_loc14_ && this))
                                                                                    {
                                                                                       §§push(_loc8_.§1A§);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§pop().§'q§ = _loc5_;
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             §§push(_loc8_.§1A§);
                                                                                             if(!(_loc14_ && this))
                                                                                             {
                                                                                                addr393:
                                                                                                §§pop().§=6§ = null;
                                                                                                §§goto(addr425);
                                                                                             }
                                                                                             §§pop().§1!U§ = _loc6_.§<!T§;
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(_loc6_.§<!T§);
                                                                                                if(!(_loc14_ && this))
                                                                                                {
                                                                                                   addr419:
                                                                                                   if(§§pop() != null)
                                                                                                   {
                                                                                                      addr422:
                                                                                                      _loc6_.§<!T§.§=6§ = _loc8_.§1A§;
                                                                                                      §§goto(addr425);
                                                                                                   }
                                                                                                   addr425:
                                                                                                   if(_loc13_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(_loc8_.§1A§);
                                                                                                   }
                                                                                                   _loc6_.§<!T§ = _loc8_.§1A§;
                                                                                                   if(_loc13_ || param1)
                                                                                                   {
                                                                                                      addr446:
                                                                                                      addr448:
                                                                                                      var _loc11_:*;
                                                                                                      §§push((_loc11_ = this.m_world).§"Z§);
                                                                                                      if(_loc13_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                      }
                                                                                                      var _loc12_:* = §§pop();
                                                                                                      if(!(_loc14_ && this))
                                                                                                      {
                                                                                                         _loc11_.§"Z§ = _loc12_;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr472);
                                                                                                }
                                                                                                §§goto(addr422);
                                                                                             }
                                                                                             §§goto(addr472);
                                                                                          }
                                                                                          §§goto(addr422);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr425);
                                                                                 }
                                                                                 §§goto(addr393);
                                                                              }
                                                                              addr472:
                                                                              return;
                                                                           }
                                                                        }
                                                                        §§goto(addr419);
                                                                     }
                                                                     §§goto(addr446);
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                            §§goto(addr307);
                                                         }
                                                         §§goto(addr422);
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                   addr262:
                                                }
                                                §§goto(addr448);
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr263);
                                       }
                                       §§goto(addr262);
                                    }
                                    §§goto(addr258);
                                 }
                                 §§goto(addr393);
                              }
                           }
                           §§goto(addr194);
                        }
                        return;
                     }
                  }
                  §§goto(addr190);
               }
               §§goto(addr194);
            }
            else
            {
               if(_loc7_.§'q§ != _loc5_)
               {
                  continue;
               }
               if(_loc14_ && _loc3_)
               {
                  break;
               }
               _loc9_ = _loc7_.§12§.§,^§();
               _loc10_ = _loc7_.§12§.§'!+§();
               if(!_loc13_)
               {
                  continue;
               }
               §§push(_loc9_ == _loc3_);
               if(!(_loc14_ && this))
               {
                  §§push(§§pop());
                  if(_loc13_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc14_ && param2))
                        {
                           addr103:
                           §§pop();
                           if(!_loc13_)
                           {
                              continue;
                           }
                           §§push(_loc10_ == _loc4_);
                           if(_loc13_ || this)
                           {
                              addr116:
                              if(§§pop())
                              {
                                 return;
                              }
                              §§push(_loc9_ == _loc4_);
                              if(_loc13_ || _loc3_)
                              {
                                 addr128:
                                 if(§§pop())
                                 {
                                    if(_loc14_)
                                    {
                                    }
                                    addr143:
                                    if(§§pop())
                                    {
                                       if(!(_loc14_ && param1))
                                       {
                                          return;
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr143);
                              }
                              §§pop();
                              if(_loc14_ && param1)
                              {
                                 continue;
                              }
                              §§push(_loc10_ == _loc3_);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr128);
               }
               §§goto(addr103);
            }
         }
      }
      
      public function §<"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§3!C§.§-!g§(this.§5!S§);
         }
      }
      
      public function §;!#§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Fixture = param1.§,^§();
         var _loc3_:b2Fixture = param1.§'!+§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§`!§())
         {
            this.§+!&§.EndContact(param1);
            if(!_loc8_)
            {
               addr42:
               §§push(param1.§?!D§);
               if(_loc9_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        addr56:
                        param1.§?!D§.§ <§ = param1.§ <§;
                        if(!_loc8_)
                        {
                           addr61:
                           §§push(param1.§ <§);
                           if(!_loc8_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    addr75:
                                    param1.§ <§.§?!D§ = param1.§?!D§;
                                 }
                                 addr88:
                                 §§push(param1.§>!3§);
                                 if(_loc9_)
                                 {
                                    §§push(§§pop().§=6§);
                                    if(_loc9_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(param1.§>!3§);
                                             if(!_loc8_)
                                             {
                                                addr102:
                                                §§push(§§pop().§=6§);
                                                if(_loc9_ || _loc2_)
                                                {
                                                   §§push(param1.§>!3§.§1!U§);
                                                   if(!_loc8_)
                                                   {
                                                      §§pop().§1!U§ = §§pop();
                                                      addr116:
                                                      §§push(param1.§>!3§);
                                                      if(_loc9_)
                                                      {
                                                         §§push(§§pop().§1!U§);
                                                         if(!_loc8_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§push(param1.§>!3§);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop().§1!U§);
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     §§push(param1.§>!3§.§=6§);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§pop().§=6§ = §§pop();
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr156:
                                                                           if(param1.§>!3§ == _loc4_.§<!T§)
                                                                           {
                                                                              if(!(_loc8_ && param1))
                                                                              {
                                                                                 _loc4_.§<!T§ = param1.§>!3§.§1!U§;
                                                                                 if(!(_loc8_ && _loc3_))
                                                                                 {
                                                                                    addr178:
                                                                                    §§push(param1.§1A§);
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       §§push(§§pop().§=6§);
                                                                                       if(!(_loc8_ && param1))
                                                                                       {
                                                                                          addr195:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc9_ || param1)
                                                                                             {
                                                                                                §§push(param1.§1A§);
                                                                                                if(_loc9_ || _loc3_)
                                                                                                {
                                                                                                   addr216:
                                                                                                   §§pop().§=6§.§1!U§ = param1.§1A§.§1!U§;
                                                                                                   §§goto(addr213);
                                                                                                }
                                                                                                §§goto(addr243);
                                                                                             }
                                                                                             §§goto(addr239);
                                                                                          }
                                                                                          §§goto(addr219);
                                                                                       }
                                                                                       addr213:
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          addr219:
                                                                                          §§push(param1.§1A§);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§push(§§pop().§1!U§);
                                                                                             if(!(_loc8_ && this))
                                                                                             {
                                                                                                addr231:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr275);
                                                                                                }
                                                                                                §§goto(addr248);
                                                                                             }
                                                                                             §§goto(addr244);
                                                                                          }
                                                                                          if(§§pop() == _loc5_.§<!T§)
                                                                                          {
                                                                                             _loc5_.§<!T§ = param1.§1A§.§1!U§;
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr275);
                                                                                          }
                                                                                          addr275:
                                                                                          §§goto(addr279);
                                                                                       }
                                                                                       addr279:
                                                                                       if(_loc9_ || param1)
                                                                                       {
                                                                                          addr239:
                                                                                          §§push(param1.§1A§);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr247:
                                                                                             §§pop().§1!U§.§=6§ = param1.§1A§.§=6§;
                                                                                             addr248:
                                                                                             §§push(param1.§1A§);
                                                                                             addr244:
                                                                                             addr243:
                                                                                          }
                                                                                       }
                                                                                       this.§#!$§.§;!#§(param1);
                                                                                       var _loc6_:*;
                                                                                       §§push((_loc6_ = this).§"Z§);
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       var _loc7_:* = §§pop();
                                                                                       if(!(_loc8_ && param1))
                                                                                       {
                                                                                          _loc6_.§"Z§ = _loc7_;
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr248);
                                                                                 }
                                                                                 §§goto(addr275);
                                                                              }
                                                                              §§goto(addr219);
                                                                           }
                                                                           §§goto(addr178);
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                            }
                                                            §§goto(addr156);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                      §§goto(addr156);
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr178);
                                       }
                                       §§goto(addr116);
                                    }
                                    §§goto(addr216);
                                 }
                                 §§goto(addr102);
                              }
                              if(param1 == this.m_world.§<!T§)
                              {
                                 this.m_world.§<!T§ = param1.§ <§;
                              }
                              §§goto(addr88);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr61);
               }
               §§goto(addr56);
            }
            §§goto(addr178);
         }
         §§goto(addr42);
      }
      
      public function §5v§() : void
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
         var _loc1_:b2Contact = this.m_world.§<!T§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§,^§();
            _loc3_ = _loc1_.§'!+§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc11_ || _loc1_)
            {
               §§push(_loc4_.IsAwake());
               §§push(false);
               if(_loc11_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc11_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc11_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           if(_loc11_)
                           {
                              §§push(_loc5_.IsAwake());
                              §§push(false);
                              if(_loc11_)
                              {
                                 addr101:
                                 if(§§pop() == §§pop())
                                 {
                                    addr102:
                                    _loc1_ = _loc1_.§4!j§();
                                    continue;
                                 }
                                 if(_loc1_.§;!n§ & b2Contact.§5!V§)
                                 {
                                    addr126:
                                    §§push(_loc5_.§`t§(_loc4_));
                                    §§push(false);
                                    if(!_loc10_)
                                    {
                                       addr129:
                                       if(§§pop() == §§pop())
                                       {
                                          addr130:
                                          _loc1_ = (_loc9_ = _loc1_).§4!j§();
                                          if(_loc11_ || _loc1_)
                                          {
                                             this.§;!#§(_loc9_);
                                          }
                                          continue;
                                       }
                                       addr154:
                                       if(this.§7q§.§`t§(_loc2_,_loc3_) == false)
                                       {
                                          if(_loc11_ || _loc2_)
                                          {
                                             _loc1_ = (_loc9_ = _loc1_).§4!j§();
                                             if(!(_loc10_ && _loc1_))
                                             {
                                                this.§;!#§(_loc9_);
                                             }
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          _loc1_.§;!n§ &= ~b2Contact.§5!V§;
                                       }
                                    }
                                    §§goto(addr154);
                                 }
                                 _loc6_ = _loc2_.§-!§;
                                 _loc7_ = _loc3_.§-!§;
                                 if(!_loc10_)
                                 {
                                    §§push(this.§3!C§.§,!r§(_loc6_,_loc7_));
                                    if(!_loc10_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc11_ || _loc3_)
                                       {
                                          addr213:
                                          §§push(§§pop());
                                          if(!_loc10_)
                                          {
                                             _loc8_ = §§pop();
                                             addr217:
                                             §§push(false);
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             if(!(_loc10_ && _loc1_))
                                             {
                                                addr236:
                                                _loc1_ = (_loc9_ = _loc1_).§4!j§();
                                                if(!_loc10_)
                                                {
                                                   this.§;!#§(_loc9_);
                                                }
                                                continue;
                                             }
                                          }
                                          else
                                          {
                                             _loc1_.§[;§(this.§+!&§);
                                          }
                                          _loc1_ = _loc1_.§4!j§();
                                          continue;
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr236);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr102);
                        }
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr126);
               }
               §§goto(addr154);
            }
            §§goto(addr130);
         }
      }
   }
}
