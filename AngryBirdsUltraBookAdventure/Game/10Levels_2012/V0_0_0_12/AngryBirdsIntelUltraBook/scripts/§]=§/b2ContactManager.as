package §]=§
{
   import §'s§.§8!b§;
   import §'s§.b2ContactPoint;
   import §'s§.b2DynamicTreeBroadPhase;
   import §+!,§.b2internal;
   import §6!9§.b2Contact;
   import §6!9§.b2ContactEdge;
   import §6!9§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §6!>§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6!>§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §'<§:§8!b§;
      
      b2internal var §2!4§:b2Contact;
      
      b2internal var §7!?§:int;
      
      b2internal var §-!6§:b2ContactFilter;
      
      b2internal var §,z§:b2ContactListener;
      
      b2internal var §!b§:b2ContactFactory;
      
      b2internal var §;!,§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.m_world = null;
               while(true)
               {
                  this.§7!?§ = 0;
                  loop2:
                  while(_loc2_)
                  {
                     this.§-!6§ = b2ContactFilter.§=A§;
                     loop3:
                     while(true)
                     {
                        this.§,z§ = b2ContactListener.§2C§;
                        loop4:
                        do
                        {
                           this.§!b§ = new b2ContactFactory(this.§;!,§);
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                              addr77:
                              this.§'<§ = new b2DynamicTreeBroadPhase();
                              if(!(_loc1_ && _loc1_))
                              {
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                        while(!_loc2_);
                        
                     }
                  }
               }
            }
         }
      }
      
      public function §@!R§(param1:*, param2:*) : void
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
                  return;
               }
            }
         }
         var _loc7_:b2ContactEdge = _loc6_.§[7§();
         loop0:
         while(true)
         {
            §§push(Boolean(_loc7_));
            if(_loc13_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc13_)
                  {
                     §§push(_loc6_.§>b§(_loc5_));
                     if(_loc13_ || param1)
                     {
                        §§push(false);
                        if(!_loc14_)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(this.§-!6§.§>b§(_loc3_,_loc4_));
                              break;
                           }
                           if(!_loc14_)
                           {
                              return;
                           }
                           addr252:
                           var _loc8_:b2Contact = this.§!b§.§]!U§(_loc3_,_loc4_);
                           _loc3_ = _loc8_.§2!N§();
                           _loc4_ = _loc8_.§`!Q§();
                           _loc5_ = _loc3_.m_body;
                           _loc6_ = _loc4_.m_body;
                           if(_loc13_ || this)
                           {
                              _loc8_.§7!Q§ = null;
                              loop16:
                              while(true)
                              {
                                 _loc8_.§,1§ = this.m_world.§2!4§;
                                 while(true)
                                 {
                                    §§push(this.m_world);
                                    if(_loc13_ || param2)
                                    {
                                       §§push(§§pop().§2!4§);
                                       if(_loc13_)
                                       {
                                          if(§§pop() != null)
                                          {
                                             if(_loc13_ || this)
                                             {
                                                §§push(this.m_world);
                                                while(true)
                                                {
                                                   §§push(§§pop().§2!4§);
                                                   addr539:
                                                   while(true)
                                                   {
                                                      §§pop().§7!Q§ = _loc8_;
                                                   }
                                                   addr504:
                                                   if(!(_loc13_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   §§pop().§2!4§ = _loc8_;
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.§<b§);
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§pop().§4! § = _loc8_;
                                                         loop23:
                                                         while(!_loc14_)
                                                         {
                                                            §§push(_loc8_.§<b§);
                                                            loop24:
                                                            while(_loc13_)
                                                            {
                                                               §§pop().§3z§ = _loc6_;
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(_loc8_.§<b§);
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§;W§ = null;
                                                                           if(!(_loc13_ || param2))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc8_.§<b§);
                                                                           if(_loc14_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc14_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           §§pop().§2B§ = _loc5_.§2!4§;
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.§2!4§);
                                                                              if(!(_loc14_ && param2))
                                                                              {
                                                                                 §§push(null);
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_.§2!4§);
                                                                                          addr451:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§;W§ = _loc8_.§<b§;
                                                                                             addr454:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr449:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_.§2!4§ = _loc8_.§<b§;
                                                                                       addr436:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_.§ !]§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§4! § = _loc8_;
                                                                                             addr430:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_.§ !]§);
                                                                                                loop34:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().§3z§ = _loc5_;
                                                                                                   addr424:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.§ !]§);
                                                                                                      continue loop34;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr335:
                                                                                    §§push(null);
                                                                                    if(_loc14_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          if(_loc13_)
                                                                                          {
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                addr354:
                                                                                                §§push(_loc6_.§2!4§);
                                                                                                if(!(_loc14_ && param1))
                                                                                                {
                                                                                                   §§pop().§;W§ = _loc8_.§ !]§;
                                                                                                   if(_loc13_ || this)
                                                                                                   {
                                                                                                      addr371:
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr293:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_.§2!4§ = _loc8_.§ !]§;
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               addr300:
                                                                                                               if(!(_loc13_ || param1))
                                                                                                               {
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                               if(!(_loc14_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!(_loc14_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!(_loc14_ && param1))
                                                                                                                     {
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           addr565:
                                                                                                                           var _loc11_:*;
                                                                                                                           §§push((_loc11_ = this.m_world).§7!?§);
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                           }
                                                                                                                           var _loc12_:* = §§pop();
                                                                                                                           if(_loc13_ || param1)
                                                                                                                           {
                                                                                                                              _loc11_.§7!?§ = _loc12_;
                                                                                                                           }
                                                                                                                           break loop26;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.§2!4§);
                                                                                                                           if(_loc13_)
                                                                                                                           {
                                                                                                                              §§goto(addr335);
                                                                                                                           }
                                                                                                                           §§goto(addr354);
                                                                                                                        }
                                                                                                                        §§goto(addr451);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr449);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr436);
                                                                                                               }
                                                                                                               §§goto(addr430);
                                                                                                            }
                                                                                                            break loop26;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   break loop26;
                                                                                                }
                                                                                                §§goto(addr451);
                                                                                             }
                                                                                             §§goto(addr424);
                                                                                          }
                                                                                          §§goto(addr387);
                                                                                       }
                                                                                       §§goto(addr371);
                                                                                    }
                                                                                    §§goto(addr293);
                                                                                 }
                                                                              }
                                                                              §§goto(addr451);
                                                                           }
                                                                        }
                                                                        return;
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop23;
                                                               }
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  addr499:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.m_world);
                                                                     if(!_loc13_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§goto(addr504);
                                                                     continue loop19;
                                                                  }
                                                                  §§goto(addr565);
                                                               }
                                                            }
                                                            continue loop22;
                                                         }
                                                         continue loop21;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr541);
                                          }
                                          §§goto(addr499);
                                       }
                                       §§goto(addr539);
                                    }
                                    §§goto(addr565);
                                    if(_loc14_ && param2)
                                    {
                                       continue;
                                    }
                                    §§goto(addr330);
                                 }
                              }
                           }
                           §§goto(addr373);
                        }
                        addr248:
                        if(§§pop() == §§pop())
                        {
                           if(!_loc13_)
                           {
                              §§goto(addr252);
                           }
                        }
                        §§goto(addr252);
                     }
                     break;
                  }
                  return;
               }
               if(_loc7_.§3z§ != _loc5_)
               {
                  continue;
               }
               if(_loc13_ || param2)
               {
                  _loc9_ = _loc7_.§4! §.§2!N§();
                  _loc10_ = _loc7_.§4! §.§`!Q§();
                  if(_loc13_)
                  {
                     §§push(_loc9_ == _loc3_);
                     loop1:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          §§push(_loc10_ == _loc4_);
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr150:
                                             loop12:
                                             while(_loc13_ || param1)
                                             {
                                                §§push(§§pop());
                                                if(_loc13_ || param2)
                                                {
                                                   if(!(_loc13_ || this))
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!_loc14_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            §§pop();
                                                            while(true)
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  §§push(_loc10_ == _loc3_);
                                                                  if(!(_loc14_ && param1))
                                                                  {
                                                                     if(_loc13_ || this)
                                                                     {
                                                                        addr103:
                                                                        if(!(_loc13_ || this))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc13_ || param1)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    addr127:
                                                                                    if(_loc14_ && param1)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(true)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc9_ == _loc4_);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    continue loop1;
                                                                                    addr136:
                                                                                 }
                                                                              }
                                                                              §§goto(addr136);
                                                                              §§goto(addr103);
                                                                           }
                                                                           return;
                                                                        }
                                                                        addr188:
                                                                        if(_loc14_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                        continue loop13;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop2;
                                                            addr179:
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   while(§§pop())
                                                   {
                                                      if(!_loc14_)
                                                      {
                                                         §§goto(addr124);
                                                      }
                                                      if(_loc13_)
                                                      {
                                                         §§goto(addr127);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr179);
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr188);
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr124:
                  return;
               }
               §§goto(addr252);
            }
            break;
         }
         §§goto(addr248);
         §§push(false);
      }
      
      public function §8!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§'<§.dynamic(this.§@!R§);
         }
      }
      
      public function §"P§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Fixture = param1.§2!N§();
         var _loc3_:b2Fixture = param1.§`!Q§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!_loc8_)
         {
            §§push(param1.§9b§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§,z§.EndContact(param1);
                     if(!_loc9_)
                     {
                     }
                     break;
                     addr48:
                     if(!(_loc8_ && this))
                     {
                        if(false)
                        {
                           loop29:
                           while(true)
                           {
                              §§push(param1.§ !]§);
                              if(!_loc8_)
                              {
                                 if(_loc9_)
                                 {
                                    if(§§pop() == _loc5_.§2!4§)
                                    {
                                       loop30:
                                       while(true)
                                       {
                                          if(!(_loc8_ && _loc2_))
                                          {
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                if(!_loc8_)
                                                {
                                                   _loc5_.§2!4§ = param1.§ !]§.§2B§;
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§!b§.§"P§(param1);
                                                            if(_loc9_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  continue loop30;
                                                               }
                                                               if(!_loc9_)
                                                               {
                                                                  break loop30;
                                                               }
                                                               §§goto(addr48);
                                                            }
                                                            break loop1;
                                                         }
                                                         addr36:
                                                      }
                                                      loop28:
                                                      while(true)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            addr144:
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  continue loop29;
                                                               }
                                                               loop41:
                                                               while(true)
                                                               {
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     if(param1 == this.m_world.§2!4§)
                                                                     {
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              this.m_world.§2!4§ = param1.§,1§;
                                                                              addr324:
                                                                              while(true)
                                                                              {
                                                                                 addr281:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§<b§);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push(§§pop().§;W§);
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.§<b§);
                                                                                                   addr291:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§;W§);
                                                                                                      addr292:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§<b§.§2B§);
                                                                                                         addr295:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().§2B§ = §§pop();
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                            }
                                                                                                            break loop1;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr289:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.§<b§);
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§2B§);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      loop16:
                                                                                                      while(_loc9_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§push(param1.§<b§);
                                                                                                               loop17:
                                                                                                               while(!_loc8_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§2B§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param1.§<b§.§;W§);
                                                                                                                     addr279:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().§;W§ = §§pop();
                                                                                                                        addr280:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr291);
                                                                                                               addr273:
                                                                                                            }
                                                                                                            §§goto(addr280);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.§<b§);
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(§§pop() == _loc4_.§2!4§)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc4_.§2!4§ = param1.§<b§.§2B§;
                                                                                                                     break loop28;
                                                                                                                  }
                                                                                                                  addr253:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§ !]§);
                                                                                                                  loop23:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§;W§);
                                                                                                                     if(!(_loc8_ && this))
                                                                                                                     {
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     addr210:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc9_ || param1)
                                                                                                                        {
                                                                                                                           §§push(param1.§ !]§.§2B§);
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              §§pop().§2B§ = §§pop();
                                                                                                                              if(_loc9_ || _loc3_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§ !]§);
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().§2B§);
                                                                                                                                             if(!(_loc8_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                addr111:
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!(_loc9_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                addr119:
                                                                                                                                                if(_loc9_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(!§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop29;
                                                                                                                                                   }
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue loop28;
                                                                                                                                                   }
                                                                                                                                                   §§push(param1.§ !]§);
                                                                                                                                                   while(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§2B§);
                                                                                                                                                   }
                                                                                                                                                   continue loop23;
                                                                                                                                                   addr131:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.§7!Q§);
                                                                                                                                                            addr347:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§,1§ = param1.§,1§;
                                                                                                                                                               break loop30;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr345:
                                                                                                                                                      }
                                                                                                                                                      addr325:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§,1§);
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            break loop16;
                                                                                                                                                         }
                                                                                                                                                         addr334:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§7!Q§ = param1.§7!Q§;
                                                                                                                                                            continue loop41;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr119);
                                                                                                                                                   }
                                                                                                                                                   addr344:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§ !]§.§;W§);
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§pop().§;W§ = §§pop();
                                                                                                                                                   continue loop28;
                                                                                                                                                }
                                                                                                                                                §§goto(addr276);
                                                                                                                                             }
                                                                                                                                             §§goto(addr279);
                                                                                                                                          }
                                                                                                                                          §§goto(addr131);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || this)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                continue loop0;
                                                                                                                                             }
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          continue loop16;
                                                                                                                                          §§goto(addr111);
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                       continue loop16;
                                                                                                                                       addr98:
                                                                                                                                    }
                                                                                                                                    §§goto(addr289);
                                                                                                                                 }
                                                                                                                                 §§goto(addr292);
                                                                                                                                 addr230:
                                                                                                                              }
                                                                                                                              break loop1;
                                                                                                                           }
                                                                                                                           §§goto(addr295);
                                                                                                                        }
                                                                                                                        §§goto(addr292);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr273);
                                                                                                            }
                                                                                                            §§goto(addr276);
                                                                                                            §§goto(addr280);
                                                                                                         }
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr334);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr276);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 §§goto(addr144);
                                                                              }
                                                                              addr324:
                                                                           }
                                                                           §§goto(addr332);
                                                                        }
                                                                        §§goto(addr324);
                                                                     }
                                                                     §§goto(addr281);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr154);
                                                      }
                                                      addr258:
                                                   }
                                                   break loop1;
                                                }
                                                §§goto(addr345);
                                             }
                                             §§goto(addr280);
                                          }
                                          §§goto(addr258);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr325);
                                       }
                                    }
                                    §§goto(addr36);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr209:
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr131);
                           }
                        }
                        var _loc6_:*;
                        §§push((_loc6_ = this).§7!?§);
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc7_:* = §§pop();
                        if(!_loc8_)
                        {
                           _loc6_.§7!?§ = _loc7_;
                        }
                        break;
                     }
                  }
                  §§goto(addr392);
               }
               while(true)
               {
                  §§push(param1.§7!Q§);
                  if(_loc9_)
                  {
                     §§goto(addr344);
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr347);
               }
            }
         }
         addr392:
      }
      
      public function §2!!§() : void
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
         var _loc1_:b2Contact = this.m_world.§2!4§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§2!N§();
            _loc3_ = _loc1_.§`!Q§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc11_ || _loc3_)
            {
               §§push(_loc4_.IsAwake());
               if(_loc11_ || _loc3_)
               {
                  §§push(false);
                  if(_loc11_ || this)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc10_ && _loc1_))
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc11_ || _loc1_)
                        {
                           §§push(§§pop());
                           if(_loc11_)
                           {
                              addr106:
                              §§push(Boolean(§§pop()));
                              if(!(_loc10_ && _loc2_))
                              {
                                 addr114:
                                 if(§§pop())
                                 {
                                    if(!_loc10_)
                                    {
                                       addr117:
                                       §§pop();
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§push(_loc5_.IsAwake());
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             §§push(false);
                                             if(_loc11_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc10_ && _loc1_)
                                                {
                                                }
                                                addr180:
                                                if(§§pop())
                                                {
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      §§push(_loc5_.§>b§(_loc4_));
                                                      if(_loc11_ || this)
                                                      {
                                                         addr198:
                                                         §§push(false);
                                                         if(!(_loc10_ && _loc1_))
                                                         {
                                                            addr206:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!(_loc10_ && _loc2_))
                                                               {
                                                                  addr214:
                                                                  _loc9_ = _loc1_;
                                                                  _loc1_ = _loc9_.§70§();
                                                                  if(_loc11_ || _loc1_)
                                                                  {
                                                                     this.§"P§(_loc9_);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr242:
                                                                  _loc9_ = _loc1_;
                                                                  _loc1_ = _loc9_.§70§();
                                                                  if(!(_loc10_ && _loc1_))
                                                                  {
                                                                     this.§"P§(_loc9_);
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            addr238:
                                                            §§push(this.§-!6§.§>b§(_loc2_,_loc3_));
                                                            §§push(false);
                                                            §§goto(addr242);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr242);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc1_.§3! § &= ~b2Contact.§%4§;
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                _loc6_ = _loc2_.§<V§;
                                                _loc7_ = _loc3_.§<V§;
                                                if(_loc11_ || _loc2_)
                                                {
                                                   §§push(this.§'<§.§@w§(_loc6_,_loc7_));
                                                   if(_loc11_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc10_ && _loc1_))
                                                      {
                                                         _loc8_ = §§pop();
                                                         addr347:
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            §§push(_loc8_);
                                                         }
                                                         _loc1_ = _loc1_.§70§();
                                                         continue;
                                                      }
                                                   }
                                                   if(§§pop() == false)
                                                   {
                                                      if(!(_loc10_ && this))
                                                      {
                                                         _loc9_ = _loc1_;
                                                         _loc1_ = _loc9_.§70§();
                                                         if(_loc11_)
                                                         {
                                                            this.§"P§(_loc9_);
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc1_.§ !=§(this.§,z§);
                                                   }
                                                }
                                                §§goto(addr347);
                                             }
                                             §§goto(addr206);
                                          }
                                          §§push(Boolean(§§pop()));
                                          if(!_loc10_)
                                          {
                                             addr148:
                                             if(§§pop())
                                             {
                                                if(!(_loc10_ && this))
                                                {
                                                   _loc1_ = _loc1_.§70§();
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                §§push(Boolean(_loc1_.§3! § & b2Contact.§%4§));
                                                if(_loc11_)
                                                {
                                                   §§goto(addr180);
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr238);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr106);
               }
               §§goto(addr117);
            }
            §§goto(addr242);
         }
      }
   }
}
