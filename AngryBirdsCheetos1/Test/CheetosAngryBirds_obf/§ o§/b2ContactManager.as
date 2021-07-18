package § o§
{
   import §"0§.b2internal;
   import §-r§.§@C§;
   import §-r§.b2ContactPoint;
   import §-r§.b2DynamicTreeBroadPhase;
   import §30§.b2Contact;
   import §30§.b2ContactEdge;
   import §30§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §`@§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`@§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §<x§:§@C§;
      
      b2internal var §4!]§:b2Contact;
      
      b2internal var §,!^§:int;
      
      b2internal var §1!A§:b2ContactFilter;
      
      b2internal var §8!I§:b2ContactListener;
      
      b2internal var §&=§:b2ContactFactory;
      
      b2internal var §`!Y§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.m_world = null;
               while(true)
               {
                  this.§,!^§ = 0;
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§1!A§ = b2ContactFilter.§7l§;
                     loop3:
                     for(; _loc1_; while(_loc1_ || _loc1_)
                     {
                        continue loop2;
                        this.§<x§ = new b2DynamicTreeBroadPhase();
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        §§goto(addr40);
                     })
                     {
                        while(true)
                        {
                           this.§8!I§ = b2ContactListener.§,x§;
                           do
                           {
                              this.§&=§ = new b2ContactFactory(this.§`!Y§);
                              continue loop3;
                           }
                           while(!_loc1_);
                           
                           return;
                        }
                     }
                     continue loop0;
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     §§goto(addr74);
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §-i§(param1:*, param2:*) : void
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
               if(!(_loc14_ && _loc3_))
               {
                  return;
               }
            }
         }
         var _loc7_:b2ContactEdge = _loc6_.§!!R§();
         loop0:
         while(true)
         {
            if(!_loc7_)
            {
               if(_loc13_ || this)
               {
                  §§push(_loc6_.§#!7§(_loc5_));
                  if(_loc13_ || this)
                  {
                     §§push(false);
                     if(_loc13_ || this)
                     {
                        if(§§pop() != §§pop())
                        {
                           break;
                        }
                        if(_loc13_)
                        {
                           return;
                        }
                        addr219:
                        var _loc8_:b2Contact;
                        _loc3_ = (_loc8_ = this.§&=§.§#!M§(_loc3_,_loc4_)).§`u§();
                        _loc4_ = _loc8_.§7t§();
                        _loc5_ = _loc3_.m_body;
                        _loc6_ = _loc4_.m_body;
                        if(!_loc14_)
                        {
                           _loc8_.§`D§ = null;
                           while(true)
                           {
                              _loc8_.§-![§ = this.m_world.§4!]§;
                              if(_loc13_)
                              {
                                 §§push(this.m_world);
                                 if(_loc13_ || param2)
                                 {
                                    §§push(§§pop().§4!]§);
                                    if(_loc13_)
                                    {
                                       if(§§pop() != null)
                                       {
                                          while(true)
                                          {
                                             §§push(this.m_world);
                                             addr473:
                                             while(true)
                                             {
                                                §§push(§§pop().§4!]§);
                                                addr474:
                                                while(true)
                                                {
                                                   §§pop().§`D§ = _loc8_;
                                                   addr476:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                          addr471:
                                       }
                                       while(true)
                                       {
                                          §§push(this.m_world);
                                          if(_loc13_)
                                          {
                                             if(!_loc14_)
                                             {
                                                §§pop().§4!]§ = _loc8_;
                                                while(true)
                                                {
                                                   §§push(_loc8_.§9F§);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§pop().§4§ = _loc8_;
                                                      addr445:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_.§9F§);
                                                         addr437:
                                                         while(true)
                                                         {
                                                            §§pop().§'!4§ = _loc6_;
                                                            addr439:
                                                            while(true)
                                                            {
                                                               §§push(_loc8_.§9F§);
                                                               continue loop16;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   if(_loc14_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr318);
                                                }
                                             }
                                             §§goto(addr473);
                                          }
                                          break;
                                          §§goto(addr476);
                                       }
                                       addr492:
                                       var _loc11_:*;
                                       §§push((_loc11_ = §§pop()).§,!^§);
                                       if(_loc13_ || param1)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc12_:* = §§pop();
                                       if(_loc13_ || this)
                                       {
                                          _loc11_.§,!^§ = _loc12_;
                                       }
                                       §§goto(addr526);
                                    }
                                    §§goto(addr474);
                                 }
                                 §§goto(addr492);
                              }
                              §§goto(addr526);
                           }
                        }
                        §§goto(addr275);
                     }
                     addr210:
                     if(§§pop() == §§pop())
                     {
                        if(_loc13_ || this)
                        {
                           §§goto(addr218);
                        }
                     }
                     §§goto(addr219);
                  }
                  addr209:
                  §§goto(addr210);
                  §§push(false);
               }
               addr218:
            }
            if(_loc7_.§'!4§ == _loc5_)
            {
               if(!_loc14_)
               {
                  _loc9_ = _loc7_.§4§.§`u§();
                  _loc10_ = _loc7_.§4§.§7t§();
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
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 addr166:
                                 while(true)
                                 {
                                    §§push(_loc10_ == _loc4_);
                                    loop5:
                                    while(!(_loc14_ && param1))
                                    {
                                       while(true)
                                       {
                                          if(!(_loc14_ && _loc3_))
                                          {
                                             continue loop1;
                                          }
                                          continue loop5;
                                       }
                                       continue loop1;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           loop6:
                           while(!§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(_loc9_ == _loc4_);
                                 if(_loc13_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc13_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       for(; §§pop(); while(true)
                                       {
                                          §§push(_loc10_ == _loc3_);
                                          if(_loc13_ || param1)
                                          {
                                             break;
                                          }
                                          addr141:
                                          §§pop();
                                       })
                                       {
                                          if(_loc14_ && _loc3_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          if(!_loc13_)
                                          {
                                             continue;
                                          }
                                          if(_loc13_)
                                          {
                                             if(_loc13_ || param1)
                                             {
                                                return;
                                             }
                                             break loop6;
                                          }
                                          if(!_loc14_)
                                          {
                                             continue loop7;
                                          }
                                          §§goto(addr166);
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  return;
               }
               break;
            }
            continue;
            return;
         }
         §§goto(addr209);
         §§push(this.§1!A§.§#!7§(_loc3_,_loc4_));
      }
      
      public function §!c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§<x§.§]@§(this.§-i§);
         }
      }
      
      public function §[!$§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Fixture = param1.§`u§();
         var _loc3_:b2Fixture = param1.§7t§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!(_loc8_ && _loc3_))
         {
            if(param1.§?5§())
            {
               while(true)
               {
                  this.§8!I§.EndContact(param1);
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
               §§push(param1.§`D§);
               if(!(_loc8_ && param1))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(param1.§`D§);
                        addr350:
                        while(true)
                        {
                           §§pop().§-![§ = param1.§-![§;
                           addr353:
                           while(true)
                           {
                           }
                        }
                     }
                     addr348:
                  }
                  loop4:
                  while(true)
                  {
                     §§push(param1.§-![§);
                     if(!(_loc8_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(param1.§-![§);
                              addr333:
                              while(true)
                              {
                                 §§pop().§`D§ = param1.§`D§;
                                 addr336:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr331:
                        }
                        loop6:
                        while(true)
                        {
                           if(param1 == this.m_world.§4!]§)
                           {
                              loop7:
                              while(!_loc8_)
                              {
                                 this.m_world.§4!]§ = param1.§-![§;
                                 loop8:
                                 while(true)
                                 {
                                    loop23:
                                    while(true)
                                    {
                                       if(_loc8_ && this)
                                       {
                                          continue loop8;
                                       }
                                       if(!(_loc9_ || param1))
                                       {
                                          break;
                                       }
                                       §§push(param1.§5!?§);
                                       loop30:
                                       while(_loc9_ || this)
                                       {
                                          §§push(§§pop().§23§);
                                          loop28:
                                          while(true)
                                          {
                                             §§push(param1.§5!?§.§4!N§);
                                             if(_loc9_ || _loc2_)
                                             {
                                                §§pop().§4!N§ = §§pop();
                                                loop29:
                                                while(true)
                                                {
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         loop24:
                                                         while(true)
                                                         {
                                                            §§push(param1.§5!?§);
                                                            if(!_loc9_)
                                                            {
                                                               continue loop30;
                                                            }
                                                            if(§§pop() != _loc5_.§4!]§)
                                                            {
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  this.§&=§.§[!$§(param1);
                                                                  if(!(_loc9_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr53:
                                                                  if(_loc9_ || _loc3_)
                                                                  {
                                                                     addr60:
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           var _loc6_:*;
                                                                           §§push((_loc6_ = this).§,!^§);
                                                                           if(!(_loc8_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           var _loc7_:* = §§pop();
                                                                        }
                                                                        continue loop24;
                                                                        if(!(_loc8_ && _loc2_))
                                                                        {
                                                                           _loc6_.§,!^§ = _loc7_;
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr77:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                        continue loop29;
                                                                        §§goto(addr60);
                                                                     }
                                                                     continue loop29;
                                                                  }
                                                                  addr98:
                                                                  while(_loc9_ || _loc3_)
                                                                  {
                                                                     continue loop27;
                                                                     §§goto(addr53);
                                                                  }
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_ && param1)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§push(param1.§9F§);
                                                                     while(_loc9_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop().§23§);
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.§9F§.§4!N§);
                                                                           break loop28;
                                                                        }
                                                                     }
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§4!N§);
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.§9F§);
                                                                                 addr300:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§4!N§);
                                                                                    addr301:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.§9F§.§23§);
                                                                                       addr304:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§23§ = §§pop();
                                                                                          break loop24;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr298:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.§9F§);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 §§push(§§pop().§23§);
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.§9F§);
                                                                                       if(!(_loc9_ || param1))
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          if(§§pop() == _loc4_.§4!]§)
                                                                                          {
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      _loc4_.§4!]§ = param1.§9F§.§23§;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.§5!?§);
                                                                                                               break loop30;
                                                                                                            }
                                                                                                            addr176:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr357);
                                                                                                         }
                                                                                                      }
                                                                                                      addr257:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr298);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      break loop16;
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                                §§goto(addr333);
                                                                                                addr288:
                                                                                             }
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                          §§goto(addr176);
                                                                                       }
                                                                                       §§goto(addr300);
                                                                                    }
                                                                                    §§goto(addr331);
                                                                                 }
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           addr260:
                                                                        }
                                                                        §§goto(addr301);
                                                                     }
                                                                     addr276:
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr397);
                                                            }
                                                            §§goto(addr77);
                                                         }
                                                         addr69:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr260);
                                                      }
                                                   }
                                                   addr183:
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§push(param1.§5!?§);
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§4!N§);
                                                            addr198:
                                                            while(true)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(param1.§5!?§.§23§);
                                                                  if(_loc8_ && _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§pop().§23§ = §§pop();
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.§5!?§);
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop21;
                                                                        }
                                                                        continue loop30;
                                                                     }
                                                                     §§goto(addr266);
                                                                     addr106:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr397);
                                                                  }
                                                               }
                                                               §§goto(addr301);
                                                            }
                                                            §§goto(addr304);
                                                         }
                                                      }
                                                      §§goto(addr257);
                                                      continue loop29;
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§pop().§4!N§ = §§pop();
                                             §§goto(addr288);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop().§4!N§);
                                          if(_loc9_)
                                          {
                                             if(§§pop())
                                             {
                                                §§goto(addr183);
                                             }
                                             §§goto(addr106);
                                          }
                                          §§goto(addr198);
                                          §§goto(addr147);
                                       }
                                       addr147:
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                           while(true)
                           {
                              §§goto(addr294);
                           }
                        }
                     }
                     §§goto(addr333);
                  }
               }
               §§goto(addr350);
            }
         }
         addr397:
      }
      
      public function §super§() : void
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
         var _loc1_:b2Contact = this.m_world.§4!]§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§`u§();
            _loc3_ = _loc1_.§7t§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc11_ || _loc2_)
            {
               §§push(_loc4_.IsAwake());
               if(!(_loc10_ && _loc2_))
               {
                  §§push(false);
                  if(!(_loc10_ && _loc3_))
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc10_ && _loc2_))
                     {
                        §§push(§§pop());
                        if(!(_loc10_ && this))
                        {
                           if(§§pop())
                           {
                              if(!_loc10_)
                              {
                                 addr106:
                                 §§pop();
                                 if(_loc11_)
                                 {
                                    §§push(_loc5_.IsAwake());
                                    if(_loc11_)
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
                                                if(_loc11_)
                                                {
                                                   _loc1_ = _loc1_.§;!B§();
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                if(_loc1_.§0b§ & b2Contact.§+<§)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      addr145:
                                                      §§push(_loc5_.§#!7§(_loc4_));
                                                      if(!_loc10_)
                                                      {
                                                         addr150:
                                                         §§push(false);
                                                         if(_loc11_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  addr209:
                                                                  _loc6_ = _loc2_.§4!W§;
                                                                  _loc7_ = _loc3_.§4!W§;
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(this.§<x§.§"!F§(_loc6_,_loc7_));
                                                                     if(_loc11_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!(_loc10_ && _loc1_))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              addr238:
                                                                              §§push(false);
                                                                           }
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              if(!(_loc10_ && _loc2_))
                                                                              {
                                                                                 addr247:
                                                                                 _loc1_ = (_loc9_ = _loc1_).§;!B§();
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    this.§[!$§(_loc9_);
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc1_.§do §(this.§8!I§);
                                                                           }
                                                                           _loc1_ = _loc1_.§;!B§();
                                                                           continue;
                                                                        }
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr180:
                                                               if(this.§1!A§.§#!7§(_loc2_,_loc3_) == false)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr183:
                                                                     _loc1_ = (_loc9_ = _loc1_).§;!B§();
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        this.§[!$§(_loc9_);
                                                                     }
                                                                     continue;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc1_.§0b§ &= ~b2Contact.§+<§;
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                   _loc1_ = (_loc9_ = _loc1_).§;!B§();
                                                   if(_loc11_ || _loc1_)
                                                   {
                                                      this.§[!$§(_loc9_);
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr183);
                                          }
                                       }
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr209);
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr116);
               }
               §§goto(addr119);
            }
            §§goto(addr145);
         }
      }
   }
}
