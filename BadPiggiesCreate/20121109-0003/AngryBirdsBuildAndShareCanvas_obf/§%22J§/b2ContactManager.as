package §"J§
{
   import §%4§.§0w§;
   import §%4§.b2ContactPoint;
   import §%4§.b2DynamicTreeBroadPhase;
   import §;!e§.b2Contact;
   import §;!e§.b2ContactEdge;
   import §;!e§.b2ContactFactory;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §?!h§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?!h§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §58§:§0w§;
      
      b2internal var §<W§:b2Contact;
      
      b2internal var §4A§:int;
      
      b2internal var §!!i§:b2ContactFilter;
      
      b2internal var §`"!§:b2ContactListener;
      
      b2internal var §1Q§:b2ContactFactory;
      
      b2internal var §9"6§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.m_world = null;
               while(true)
               {
                  this.§4A§ = 0;
                  while(true)
                  {
                     this.§!!i§ = b2ContactFilter.§!W§;
                     loop3:
                     while(true)
                     {
                        this.§`"!§ = b2ContactListener.§;!V§;
                        do
                        {
                           this.§1Q§ = new b2ContactFactory(this.§9"6§);
                           continue loop3;
                        }
                        while(!(_loc1_ || this));
                        
                     }
                  }
               }
            }
         }
      }
      
      public function §@!B§(param1:*, param2:*) : void
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
                  §§goto(addr52);
               }
            }
            var _loc7_:b2ContactEdge = _loc6_.§3!$§();
            loop0:
            while(true)
            {
               if(!_loc7_)
               {
                  if(!(_loc14_ && this))
                  {
                     break;
                  }
                  addr204:
                  addr210:
                  addr209:
                  if(this.§!!i§.§5"8§(_loc3_,_loc4_) == false)
                  {
                     if(_loc13_)
                     {
                        return;
                     }
                  }
                  var _loc8_:b2Contact;
                  _loc3_ = (_loc8_ = this.§1Q§.§`!P§(_loc3_,_loc4_)).§&!K§();
                  _loc4_ = _loc8_.§ 1§();
                  _loc5_ = _loc3_.m_body;
                  _loc6_ = _loc4_.m_body;
                  if(_loc13_)
                  {
                     _loc8_.§+!w§ = null;
                     while(true)
                     {
                        _loc8_.§7!'§ = this.m_world.§<W§;
                        while(true)
                        {
                           §§push(this.m_world);
                           if(!(_loc14_ && param1))
                           {
                              §§push(§§pop().§<W§);
                              if(!_loc14_)
                              {
                                 if(§§pop() != null)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§push(this.m_world);
                                       if(_loc13_)
                                       {
                                          §§push(§§pop().§<W§);
                                          while(true)
                                          {
                                             §§pop().§+!w§ = _loc8_;
                                             if(!_loc14_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.m_world);
                                                   if(_loc14_ && param2)
                                                   {
                                                      break loop13;
                                                   }
                                                   §§pop().§<W§ = _loc8_;
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.§#=§);
                                                      while(true)
                                                      {
                                                         §§pop().§6M§ = _loc8_;
                                                         while(true)
                                                         {
                                                            §§push(_loc8_.§#=§);
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§pop().§;5§ = _loc6_;
                                                               addr469:
                                                               while(true)
                                                               {
                                                                  §§push(_loc8_.§#=§);
                                                                  continue loop18;
                                                               }
                                                            }
                                                         }
                                                         if(!(_loc13_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         §§pop().§8!?§ = null;
                                                         §§goto(addr461);
                                                      }
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr287);
                                                         }
                                                         §§push(this.m_world);
                                                         break loop13;
                                                      }
                                                   }
                                                }
                                                addr476:
                                             }
                                             §§goto(addr561);
                                          }
                                          addr509:
                                       }
                                       break;
                                    }
                                    addr527:
                                    var _loc11_:*;
                                    §§push((_loc11_ = §§pop()).§4A§);
                                    if(!(_loc14_ && this))
                                    {
                                       §§push(§§pop() + 1);
                                    }
                                    var _loc12_:* = §§pop();
                                    if(!(_loc14_ && this))
                                    {
                                       _loc11_.§4A§ = _loc12_;
                                    }
                                    §§goto(addr561);
                                 }
                                 §§goto(addr476);
                              }
                              §§goto(addr509);
                           }
                           §§goto(addr527);
                           if(!(_loc13_ || this))
                           {
                              continue;
                           }
                           §§goto(addr371);
                        }
                     }
                  }
                  §§goto(addr430);
               }
               else
               {
                  if(_loc7_.§;5§ != _loc5_)
                  {
                     continue;
                  }
                  if(!(_loc13_ || param1))
                  {
                     break;
                  }
                  _loc9_ = _loc7_.§6M§.§&!K§();
                  _loc10_ = _loc7_.§6M§.§ 1§();
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
                              while(true)
                              {
                                 §§pop();
                                 addr166:
                                 while(true)
                                 {
                                    §§push(_loc10_ == _loc4_);
                                    addr147:
                                    while(_loc13_)
                                    {
                                    }
                                    continue loop1;
                                 }
                              }
                              addr165:
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc9_ == _loc4_);
                                    if(!_loc14_)
                                    {
                                       if(!_loc14_)
                                       {
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(§§pop());
                                             if(!_loc14_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr142:
                                                      while(true)
                                                      {
                                                         §§push(_loc10_ == _loc3_);
                                                         if(_loc13_ || _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                   addr141:
                                                }
                                                for(; §§pop(); §§goto(addr142))
                                                {
                                                   if(!(_loc13_ || param2))
                                                   {
                                                      if(_loc13_)
                                                      {
                                                         if(_loc14_ && this)
                                                         {
                                                            return;
                                                         }
                                                         addr151:
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue;
                                                   }
                                                   if(_loc13_ || param2)
                                                   {
                                                      return;
                                                   }
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                continue loop0;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr165);
                                          §§goto(addr166);
                                       }
                                       break;
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr147);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr151);
               }
            }
            §§push(_loc6_.§5"8§(_loc5_));
            if(!(_loc14_ && this))
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
                  }
                  §§goto(addr204);
               }
               §§goto(addr210);
            }
            §§goto(addr209);
         }
         addr52:
      }
      
      public function §8u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§58§.§=!o§(this.§@!B§);
         }
      }
      
      public function §3!0§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Fixture = param1.§&!K§();
         var _loc3_:b2Fixture = param1.§ 1§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!(_loc8_ && this))
         {
            if(param1.§!j§())
            {
               while(true)
               {
                  this.§`"!§.EndContact(param1);
                  addr361:
                  while(true)
                  {
                  }
                  addr168:
                  if(!(_loc9_ || this))
                  {
                     continue;
                  }
                  loop27:
                  while(true)
                  {
                     §§push(param1.§="9§);
                     if(_loc9_)
                     {
                        if(!_loc8_)
                        {
                           if(§§pop() == _loc5_.§<W§)
                           {
                              if(!(_loc8_ && _loc3_))
                              {
                                 if(_loc9_ || _loc2_)
                                 {
                                    addr79:
                                    if(_loc9_ || param1)
                                    {
                                       _loc5_.§<W§ = param1.§="9§.§>"2§;
                                       if(!(_loc8_ && param1))
                                       {
                                          if(_loc9_ || this)
                                          {
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                addr41:
                                                this.§1Q§.§3!0§(param1);
                                                if(!(_loc8_ && this))
                                                {
                                                   if(true)
                                                   {
                                                      var _loc6_:*;
                                                      §§push((_loc6_ = this).§4A§);
                                                      if(!(_loc8_ && this))
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      var _loc7_:* = §§pop();
                                                   }
                                                   continue;
                                                   if(_loc9_)
                                                   {
                                                      _loc6_.§4A§ = _loc7_;
                                                   }
                                                }
                                                §§goto(addr392);
                                             }
                                             else
                                             {
                                                loop42:
                                                while(true)
                                                {
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(param1.§#=§);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§>"2§);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(param1.§#=§);
                                                                     loop17:
                                                                     for(; !_loc8_; while(true)
                                                                     {
                                                                        §§push(param1.§#=§);
                                                                        if(!(_loc9_ || this))
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        if(!_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           if(§§pop() == _loc4_.§<W§)
                                                                           {
                                                                              §§goto(addr250);
                                                                           }
                                                                           §§goto(addr176);
                                                                        }
                                                                        §§goto(addr300);
                                                                     },continue loop14)
                                                                     {
                                                                        §§push(§§pop().§>"2§);
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(param1.§#=§.§8!?§);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              §§pop().§8!?§ = §§pop();
                                                                              addr286:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 loop37:
                                                                                 while(true)
                                                                                 {
                                                                                    addr320:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.§7!'§);
                                                                                       if(_loc9_ || _loc2_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.§7!'§);
                                                                                                addr333:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().§+!w§ = param1.§+!w§;
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
                                                                                             if(param1 == this.m_world.§<W§)
                                                                                             {
                                                                                                loop7:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      this.m_world.§<W§ = param1.§7!'§;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr289:
                                                                                                         addr250:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.§#=§);
                                                                                                            break loop17;
                                                                                                         }
                                                                                                         while(!(_loc8_ && _loc2_))
                                                                                                         {
                                                                                                            _loc4_.§<W§ = param1.§#=§.§>"2§;
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§="9§);
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     break loop27;
                                                                                                                  }
                                                                                                                  §§push(§§pop().§8!?§);
                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                  {
                                                                                                                     if(!(_loc8_ && this))
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           continue loop23;
                                                                                                                        }
                                                                                                                        loop26:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param1.§="9§);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().§>"2§);
                                                                                                                              if(!(_loc8_ && this))
                                                                                                                              {
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr145:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§>"2§);
                                                                                                                              }
                                                                                                                              addr145:
                                                                                                                           }
                                                                                                                           while(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(param1.§="9§.§8!?§);
                                                                                                                              if(_loc9_ || this)
                                                                                                                              {
                                                                                                                                 §§pop().§8!?§ = §§pop();
                                                                                                                                 while(!_loc8_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop16;
                                                                                                                                    }
                                                                                                                                    §§goto(addr168);
                                                                                                                                 }
                                                                                                                                 continue loop26;
                                                                                                                                 addr159:
                                                                                                                              }
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        continue loop18;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1.§#=§.§>"2§);
                                                                                                                        addr304:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().§>"2§ = §§pop();
                                                                                                                           continue loop42;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr301:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1.§="9§.§>"2§);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§pop().§>"2§ = §§pop();
                                                                                                                     }
                                                                                                                     §§goto(addr304);
                                                                                                                     addr221:
                                                                                                                  }
                                                                                                                  §§goto(addr227);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.§#=§);
                                                                                                                                 addr300:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr301);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr298:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr361);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr331);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop6;
                                                                                                                     addr294:
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                            }
                                                                                                            if(_loc8_ && _loc3_)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr145);
                                                                                                            §§push(param1.§="9§);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr348:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.§+!w§);
                                                                                                      addr350:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().§7!'§ = param1.§7!'§;
                                                                                                         continue loop37;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop37;
                                                                                             }
                                                                                             §§goto(addr289);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr333);
                                                                                       continue loop37;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr293);
                                                                     }
                                                                  }
                                                                  §§goto(addr336);
                                                               }
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr392);
                                          }
                                          §§goto(addr286);
                                       }
                                       §§goto(addr392);
                                    }
                                    §§goto(addr209);
                                 }
                                 §§goto(addr159);
                              }
                              addr392:
                              return;
                           }
                           §§goto(addr41);
                        }
                        break;
                     }
                     §§goto(addr145);
                  }
                  while(true)
                  {
                     §§goto(addr221);
                  }
               }
            }
            while(true)
            {
               §§push(param1.§+!w§);
               if(!(_loc8_ && this))
               {
                  if(§§pop())
                  {
                     §§goto(addr348);
                  }
                  §§goto(addr320);
               }
               §§goto(addr350);
               §§goto(addr361);
            }
         }
         §§goto(addr298);
      }
      
      public function §^!Z§() : void
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
         var _loc1_:b2Contact = this.m_world.§<W§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§&!K§();
            _loc3_ = _loc1_.§ 1§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(!(_loc11_ && _loc2_))
            {
               §§push(_loc4_.IsAwake());
               if(_loc10_ || this)
               {
                  §§push(false);
                  if(!_loc11_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc10_)
                     {
                        addr84:
                        §§push(§§pop());
                        if(!(_loc11_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              if(!_loc11_)
                              {
                                 addr95:
                                 §§pop();
                                 if(_loc10_ || _loc2_)
                                 {
                                    addr103:
                                    §§push(_loc5_.IsAwake());
                                    if(_loc10_ || _loc3_)
                                    {
                                       §§push(false);
                                       if(!(_loc11_ && _loc1_))
                                       {
                                          addr120:
                                          §§push(§§pop() == §§pop());
                                          if(!_loc11_)
                                          {
                                             addr123:
                                             if(§§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   _loc1_ = _loc1_.§7"3§();
                                                   continue;
                                                }
                                             }
                                             else if(_loc1_.§]!+§ & b2Contact.§0t§)
                                             {
                                                if(_loc10_)
                                                {
                                                   §§push(_loc5_.§5"8§(_loc4_));
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      §§push(false);
                                                      if(_loc10_ || this)
                                                      {
                                                         addr167:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!(_loc11_ && this))
                                                            {
                                                               addr175:
                                                               _loc1_ = (_loc9_ = _loc1_).§7"3§();
                                                               if(!(_loc11_ && _loc1_))
                                                               {
                                                                  this.§3!0§(_loc9_);
                                                               }
                                                               continue;
                                                            }
                                                            addr233:
                                                            _loc6_ = _loc2_.§<"3§;
                                                            _loc7_ = _loc3_.§<"3§;
                                                            if(_loc10_)
                                                            {
                                                               §§push(this.§58§.§6m§(_loc6_,_loc7_));
                                                               if(!(_loc11_ && _loc2_))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc10_)
                                                                  {
                                                                     addr258:
                                                                     §§push(§§pop());
                                                                     if(_loc10_)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        addr262:
                                                                        §§push(false);
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(!(_loc11_ && _loc2_))
                                                                        {
                                                                           addr271:
                                                                           _loc1_ = (_loc9_ = _loc1_).§7"3§();
                                                                           if(!(_loc11_ && _loc3_))
                                                                           {
                                                                              this.§3!0§(_loc9_);
                                                                           }
                                                                           continue;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc1_.§]!J§(this.§`"!§);
                                                                     }
                                                                     _loc1_ = _loc1_.§7"3§();
                                                                     continue;
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                         else
                                                         {
                                                            addr198:
                                                            §§push(this.§!!i§.§5"8§(_loc2_,_loc3_));
                                                            §§push(false);
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc11_ && _loc1_)
                                                         {
                                                            §§goto(addr233);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc1_.§]!+§ &= ~b2Contact.§0t§;
                                                         §§goto(addr233);
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   §§goto(addr198);
                                                }
                                                _loc1_ = (_loc9_ = _loc1_).§7"3§();
                                                if(_loc10_ || _loc1_)
                                                {
                                                   this.§3!0§(_loc9_);
                                                }
                                                continue;
                                             }
                                             §§goto(addr233);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr167);
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr167);
               }
               §§goto(addr84);
            }
            §§goto(addr103);
         }
      }
   }
}
