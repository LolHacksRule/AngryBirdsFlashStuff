package §_-Iw§
{
   import §_-a5§.b2Contact;
   import §_-a5§.b2ContactEdge;
   import §_-a5§.b2ContactFactory;
   import §_-lh§.b2internal;
   import §_-qg§.§_-nW§;
   import §_-qg§.b2ContactPoint;
   import §_-qg§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §_-lW§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-lW§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §_-ep§:§_-nW§;
      
      b2internal var §_-W1§:b2Contact;
      
      b2internal var §_-b7§:int;
      
      b2internal var §_-P9§:b2ContactFilter;
      
      b2internal var §_-qO§:b2ContactListener;
      
      b2internal var §_-Fx§:b2ContactFactory;
      
      b2internal var §_-sB§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super();
         if(_loc1_ || _loc1_)
         {
            this.m_world = null;
            this.§_-b7§ = 0;
            this.§_-P9§ = b2ContactFilter.§_-QX§;
            if(_loc1_ || _loc1_)
            {
               this.§_-qO§ = b2ContactListener.§_-aj§;
               §§goto(addr50);
            }
            §§goto(addr70);
         }
         addr50:
         this.§_-Fx§ = new b2ContactFactory(this.§_-sB§);
         if(!(_loc2_ && _loc2_))
         {
            addr70:
            this.§_-ep§ = new b2DynamicTreeBroadPhase();
         }
      }
      
      public function §_-Vf§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(!(_loc14_ && this))
         {
            if(_loc5_ == _loc6_)
            {
               if(_loc13_)
               {
                  §§goto(addr49);
               }
            }
            var _loc7_:b2ContactEdge = _loc6_.§_-Xi§();
            while(true)
            {
               if(!_loc7_)
               {
                  if(!(_loc14_ && this))
                  {
                     §§push(_loc6_.§_-Zp§(_loc5_));
                     if(!(_loc14_ && _loc3_))
                     {
                        §§push(false);
                        if(!(_loc14_ && param2))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc13_ || param2)
                              {
                                 return;
                              }
                           }
                           else
                           {
                              addr171:
                              if(this.§_-P9§.§_-Zp§(_loc3_,_loc4_) == false)
                              {
                                 if(!_loc14_)
                                 {
                                    break;
                                 }
                              }
                           }
                           var _loc8_:b2Contact;
                           _loc3_ = (_loc8_ = this.§_-Fx§.§_-xO§(_loc3_,_loc4_)).§_-8S§();
                           _loc4_ = _loc8_.§_-16§();
                           _loc5_ = _loc3_.m_body;
                           _loc6_ = _loc4_.m_body;
                           if(_loc13_ || this)
                           {
                              _loc8_.§_-VL§ = null;
                              _loc8_.§_-NA§ = this.m_world.§_-W1§;
                              if(!(_loc14_ && param1))
                              {
                                 §§push(this.m_world);
                                 if(_loc13_ || _loc3_)
                                 {
                                    §§push(§§pop().§_-W1§);
                                    if(_loc13_ || this)
                                    {
                                       if(§§pop() != null)
                                       {
                                          §§push(this.m_world);
                                          if(_loc13_)
                                          {
                                             addr251:
                                             §§pop().§_-W1§.§_-VL§ = _loc8_;
                                             if(_loc13_ || param2)
                                             {
                                                addr260:
                                                §§push(this.m_world);
                                                if(!(_loc14_ && param1))
                                                {
                                                   addr269:
                                                   §§pop().§_-W1§ = _loc8_;
                                                   if(_loc13_)
                                                   {
                                                      §§push(_loc8_.§_-UU§);
                                                      if(!_loc14_)
                                                      {
                                                         §§pop().§_-bX§ = _loc8_;
                                                         if(_loc13_ || _loc3_)
                                                         {
                                                            §§push(_loc8_.§_-UU§);
                                                            if(!_loc14_)
                                                            {
                                                               §§pop().§_-dr§ = _loc6_;
                                                               §§push(_loc8_.§_-UU§);
                                                               if(!(_loc14_ && param2))
                                                               {
                                                                  addr301:
                                                                  §§pop().§_-M0§ = null;
                                                                  §§push(_loc8_.§_-UU§);
                                                               }
                                                            }
                                                            §§pop().§_-Jr§ = _loc5_.§_-W1§;
                                                            §§push(_loc5_.§_-W1§);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(null);
                                                               if(!_loc14_)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(_loc5_.§_-W1§);
                                                                        if(_loc13_)
                                                                        {
                                                                           §§pop().§_-M0§ = _loc8_.§_-UU§;
                                                                           if(_loc13_)
                                                                           {
                                                                              addr327:
                                                                              _loc5_.§_-W1§ = _loc8_.§_-UU§;
                                                                              §§push(_loc8_.§_-f-§);
                                                                              if(_loc13_ || this)
                                                                              {
                                                                                 §§pop().§_-bX§ = _loc8_;
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    addr344:
                                                                                    §§push(_loc8_.§_-f-§);
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       addr348:
                                                                                       §§pop().§_-dr§ = _loc5_;
                                                                                       if(!(_loc14_ && param2))
                                                                                       {
                                                                                          addr357:
                                                                                          §§push(_loc8_.§_-f-§);
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             addr361:
                                                                                             §§pop().§_-M0§ = null;
                                                                                             if(_loc13_ || _loc3_)
                                                                                             {
                                                                                                addr372:
                                                                                                _loc8_.§_-f-§.§_-Jr§ = _loc6_.§_-W1§;
                                                                                                §§push(_loc6_.§_-W1§);
                                                                                                if(_loc13_ || param2)
                                                                                                {
                                                                                                   addr385:
                                                                                                   if(§§pop() != null)
                                                                                                   {
                                                                                                      if(!(_loc14_ && _loc3_))
                                                                                                      {
                                                                                                         addr395:
                                                                                                         _loc6_.§_-W1§.§_-M0§ = _loc8_.§_-f-§;
                                                                                                         _loc6_.§_-W1§ = _loc8_.§_-f-§;
                                                                                                      }
                                                                                                      addr404:
                                                                                                      var _loc11_:*;
                                                                                                      §§push((_loc11_ = this.m_world).§_-b7§);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                      }
                                                                                                      var _loc12_:* = §§pop();
                                                                                                      if(!(_loc14_ && param1))
                                                                                                      {
                                                                                                         _loc11_.§_-b7§ = _loc12_;
                                                                                                      }
                                                                                                      §§goto(addr430);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr395);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr372);
                                                                                    }
                                                                                    §§goto(addr361);
                                                                                 }
                                                                                 §§goto(addr357);
                                                                              }
                                                                              §§goto(addr348);
                                                                           }
                                                                           §§goto(addr430);
                                                                        }
                                                                        §§goto(addr395);
                                                                     }
                                                                     §§goto(addr344);
                                                                  }
                                                                  §§goto(addr327);
                                                               }
                                                            }
                                                            §§goto(addr385);
                                                         }
                                                         addr430:
                                                         return;
                                                      }
                                                      §§goto(addr301);
                                                   }
                                                   §§goto(addr344);
                                                }
                                                §§goto(addr404);
                                             }
                                             §§goto(addr327);
                                          }
                                          §§goto(addr404);
                                       }
                                       §§goto(addr260);
                                    }
                                    §§goto(addr251);
                                 }
                                 §§goto(addr269);
                              }
                              §§goto(addr260);
                           }
                           §§goto(addr372);
                        }
                     }
                     §§goto(addr171);
                  }
                  break;
               }
               if(_loc7_.§_-dr§ == _loc5_)
               {
                  if(_loc14_)
                  {
                     break;
                  }
                  _loc9_ = _loc7_.§_-bX§.§_-8S§();
                  _loc10_ = _loc7_.§_-bX§.§_-16§();
                  §§push(_loc9_ == _loc3_);
                  if(_loc13_)
                  {
                     §§push(§§pop());
                     if(!_loc14_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc14_ && this))
                           {
                              §§pop();
                              §§push(_loc10_ == _loc4_);
                              if(_loc13_)
                              {
                                 addr94:
                                 if(§§pop())
                                 {
                                    return;
                                 }
                                 §§push(_loc9_ == _loc4_);
                                 if(_loc14_ && param1)
                                 {
                                 }
                                 §§goto(addr110);
                              }
                              addr107:
                              if(§§pop())
                              {
                                 if(_loc13_)
                                 {
                                    §§goto(addr110);
                                 }
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr107);
                  }
               }
               continue;
               addr110:
               §§pop();
               if(_loc13_ || param1)
               {
                  addr121:
                  if(_loc10_ != _loc3_)
                  {
                     continue;
                  }
               }
               return;
            }
            return;
         }
         addr49:
      }
      
      public function §_-Z6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-ep§.§_-PJ§(this.§_-Vf§);
         }
      }
      
      public function §_-2A§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Fixture = param1.§_-8S§();
         var _loc3_:b2Fixture = param1.§_-16§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(_loc8_)
         {
            if(param1.§_-ps§())
            {
               this.§_-qO§.EndContact(param1);
               if(_loc8_ || this)
               {
                  addr45:
                  §§push(param1.§_-VL§);
                  if(_loc8_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || _loc3_)
                        {
                           addr59:
                           param1.§_-VL§.§_-NA§ = param1.§_-NA§;
                           addr62:
                           §§push(param1.§_-NA§);
                           if(_loc8_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    addr76:
                                    param1.§_-NA§.§_-VL§ = param1.§_-VL§;
                                 }
                                 addr215:
                                 §§push(param1.§_-f-§);
                                 if(_loc8_ || this)
                                 {
                                    addr228:
                                    §§pop().§_-Jr§.§_-M0§ = param1.§_-f-§.§_-M0§;
                                    addr229:
                                    §§push(param1.§_-f-§);
                                    addr224:
                                    addr225:
                                 }
                                 if(§§pop() == _loc5_.§_-W1§)
                                 {
                                    addr234:
                                    _loc5_.§_-W1§ = param1.§_-f-§.§_-Jr§;
                                    if(!_loc9_)
                                    {
                                       addr241:
                                       this.§_-Fx§.§_-2A§(param1);
                                       if(!(_loc9_ && param1))
                                       {
                                          var _loc6_:*;
                                          §§push((_loc6_ = this).§_-b7§);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          var _loc7_:* = §§pop();
                                          if(_loc8_)
                                          {
                                             _loc6_.§_-b7§ = _loc7_;
                                          }
                                       }
                                    }
                                    §§goto(addr274);
                                 }
                                 §§goto(addr241);
                              }
                              if(param1 == this.m_world.§_-W1§)
                              {
                                 if(!_loc9_)
                                 {
                                    this.m_world.§_-W1§ = param1.§_-NA§;
                                    addr91:
                                    §§push(param1.§_-UU§);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop().§_-M0§);
                                       if(_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             addr99:
                                             §§push(param1.§_-UU§);
                                             if(_loc8_)
                                             {
                                                §§push(§§pop().§_-M0§);
                                                if(!(_loc9_ && param1))
                                                {
                                                   §§push(param1.§_-UU§.§_-Jr§);
                                                   if(_loc8_)
                                                   {
                                                      §§pop().§_-Jr§ = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         addr119:
                                                         §§push(param1.§_-UU§);
                                                         if(_loc8_)
                                                         {
                                                            addr123:
                                                            §§push(§§pop().§_-Jr§);
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(param1.§_-UU§);
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr145:
                                                                        §§push(§§pop().§_-Jr§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(param1.§_-UU§.§_-M0§);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§pop().§_-M0§ = §§pop();
                                                                              addr156:
                                                                              if(param1.§_-UU§ == _loc4_.§_-W1§)
                                                                              {
                                                                                 if(!(_loc9_ && _loc2_))
                                                                                 {
                                                                                    _loc4_.§_-W1§ = param1.§_-UU§.§_-Jr§;
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr173:
                                                                                       §§push(param1.§_-f-§);
                                                                                       if(_loc8_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop().§_-M0§);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             addr185:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   addr188:
                                                                                                   §§push(param1.§_-f-§);
                                                                                                   if(_loc8_ || param1)
                                                                                                   {
                                                                                                      addr201:
                                                                                                      §§pop().§_-M0§.§_-Jr§ = param1.§_-f-§.§_-Jr§;
                                                                                                      addr202:
                                                                                                      §§push(param1.§_-f-§);
                                                                                                      if(_loc9_ && param1)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr224);
                                                                                                      addr198:
                                                                                                   }
                                                                                                   §§push(§§pop().§_-Jr§);
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      addr214:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§goto(addr215);
                                                                                                      }
                                                                                                      §§goto(addr229);
                                                                                                   }
                                                                                                   §§goto(addr225);
                                                                                                }
                                                                                                addr274:
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr202);
                                                                                          }
                                                                                          §§goto(addr198);
                                                                                       }
                                                                                       §§goto(addr229);
                                                                                    }
                                                                                    §§goto(addr202);
                                                                                 }
                                                                                 §§goto(addr188);
                                                                              }
                                                                              §§goto(addr173);
                                                                           }
                                                                        }
                                                                        §§goto(addr228);
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               §§goto(addr156);
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                      §§goto(addr215);
                                                   }
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr185);
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr234);
                              }
                              §§goto(addr91);
                           }
                           §§goto(addr76);
                           addr57:
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr62);
                  }
                  §§goto(addr59);
               }
               §§goto(addr215);
            }
            §§goto(addr45);
         }
         §§goto(addr57);
      }
      
      public function §_-ch§() : void
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
         var _loc1_:b2Contact = this.m_world.§_-W1§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§_-8S§();
            _loc3_ = _loc1_.§_-16§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            §§push(_loc4_.IsAwake());
            if(_loc10_ || _loc2_)
            {
               §§push(false);
               if(_loc10_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  if(!_loc11_)
                  {
                     addr75:
                     if(§§pop())
                     {
                        §§pop();
                        §§push(_loc5_.IsAwake());
                        if(!(_loc11_ && _loc2_))
                        {
                           addr86:
                           §§push(false);
                           if(!_loc11_)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc10_)
                              {
                                 addr92:
                                 if(§§pop())
                                 {
                                    _loc1_ = _loc1_.§_-tx§();
                                    continue;
                                 }
                                 if(_loc1_.§_-Il§ & b2Contact.§_-cT§)
                                 {
                                    if(!(_loc11_ && _loc1_))
                                    {
                                       §§push(_loc5_.§_-Zp§(_loc4_));
                                       §§push(false);
                                       if(_loc10_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc11_)
                                             {
                                                _loc1_ = (_loc9_ = _loc1_).§_-tx§();
                                                if(_loc10_ || _loc3_)
                                                {
                                                   this.§_-2A§(_loc9_);
                                                }
                                                continue;
                                             }
                                             addr173:
                                             _loc6_ = _loc2_.§_-ev§;
                                             _loc7_ = _loc3_.§_-ev§;
                                             if(!(_loc11_ && _loc2_))
                                             {
                                                §§push(this.§_-ep§.§_-pb§(_loc6_,_loc7_));
                                                if(_loc10_ || this)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc11_ && _loc1_))
                                                      {
                                                         _loc8_ = §§pop();
                                                         addr212:
                                                         §§push(false);
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            addr216:
                                                            _loc1_ = (_loc9_ = _loc1_).§_-tx§();
                                                            if(!(_loc11_ && _loc1_))
                                                            {
                                                               this.§_-2A§(_loc9_);
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc1_.§_-r-§(this.§_-qO§);
                                                      }
                                                      _loc1_ = _loc1_.§_-tx§();
                                                      continue;
                                                   }
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr216);
                                          }
                                          else
                                          {
                                             addr151:
                                             if(this.§_-P9§.§_-Zp§(_loc2_,_loc3_) != false)
                                             {
                                                _loc1_.§_-Il§ &= ~b2Contact.§_-cT§;
                                                §§goto(addr173);
                                             }
                                          }
                                          §§goto(addr173);
                                       }
                                       §§goto(addr151);
                                    }
                                    _loc1_ = (_loc9_ = _loc1_).§_-tx§();
                                    if(_loc10_)
                                    {
                                       this.§_-2A§(_loc9_);
                                    }
                                    continue;
                                 }
                                 §§goto(addr173);
                              }
                           }
                           §§goto(addr151);
                        }
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr151);
               }
               §§goto(addr75);
            }
            §§goto(addr86);
         }
      }
   }
}
