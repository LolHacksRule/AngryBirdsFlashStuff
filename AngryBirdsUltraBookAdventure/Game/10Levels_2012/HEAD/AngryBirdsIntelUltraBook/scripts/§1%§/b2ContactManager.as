package §1%§
{
   import §8!H§.b2internal;
   import §>s§.b2Contact;
   import §>s§.b2ContactEdge;
   import §>s§.b2ContactFactory;
   import §`!H§.§>u§;
   import §`!H§.b2ContactPoint;
   import §`!H§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §,!O§:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!O§ = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §+!2§:§>u§;
      
      b2internal var §;T§:b2Contact;
      
      b2internal var §9!?§:int;
      
      b2internal var §";§:b2ContactFilter;
      
      b2internal var §-m§:b2ContactListener;
      
      b2internal var §4I§:b2ContactFactory;
      
      b2internal var §5!X§;
      
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
                  this.§9!?§ = 0;
                  loop2:
                  while(_loc2_)
                  {
                     this.§";§ = b2ContactFilter.§+!<§;
                     loop3:
                     while(true)
                     {
                        this.§-m§ = b2ContactListener.§;W§;
                        loop4:
                        do
                        {
                           this.§4I§ = new b2ContactFactory(this.§5!X§);
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
                              this.§+!2§ = new b2DynamicTreeBroadPhase();
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
      
      public function §;L§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§"!c§();
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
                     §§push(_loc6_.§8`§(_loc5_));
                     if(_loc13_ || param1)
                     {
                        §§push(false);
                        if(!_loc14_)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(this.§";§.§8`§(_loc3_,_loc4_));
                              break;
                           }
                           if(!_loc14_)
                           {
                              return;
                           }
                           addr252:
                           var _loc8_:b2Contact = this.§4I§.§;!]§(_loc3_,_loc4_);
                           _loc3_ = _loc8_.§%! §();
                           _loc4_ = _loc8_.§4#§();
                           _loc5_ = _loc3_.m_body;
                           _loc6_ = _loc4_.m_body;
                           if(_loc13_ || this)
                           {
                              _loc8_.§4!0§ = null;
                              loop16:
                              while(true)
                              {
                                 _loc8_.§!J§ = this.m_world.§;T§;
                                 while(true)
                                 {
                                    §§push(this.m_world);
                                    if(_loc13_ || param2)
                                    {
                                       §§push(§§pop().§;T§);
                                       if(_loc13_)
                                       {
                                          if(§§pop() != null)
                                          {
                                             if(_loc13_ || this)
                                             {
                                                §§push(this.m_world);
                                                while(true)
                                                {
                                                   §§push(§§pop().§;T§);
                                                   addr539:
                                                   while(true)
                                                   {
                                                      §§pop().§4!0§ = _loc8_;
                                                   }
                                                   addr504:
                                                   if(!(_loc13_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   §§pop().§;T§ = _loc8_;
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(_loc8_.§`P§);
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§pop().§#!#§ = _loc8_;
                                                         loop23:
                                                         while(!_loc14_)
                                                         {
                                                            §§push(_loc8_.§`P§);
                                                            loop24:
                                                            while(_loc13_)
                                                            {
                                                               §§pop().§;-§ = _loc6_;
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  if(_loc13_)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        §§push(_loc8_.§`P§);
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§9§ = null;
                                                                           if(!(_loc13_ || param2))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(_loc8_.§`P§);
                                                                           if(_loc14_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc14_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           §§pop().§86§ = _loc5_.§;T§;
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_.§;T§);
                                                                              if(!(_loc14_ && param2))
                                                                              {
                                                                                 §§push(null);
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() != §§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_.§;T§);
                                                                                          addr451:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§9§ = _loc8_.§`P§;
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
                                                                                       _loc5_.§;T§ = _loc8_.§`P§;
                                                                                       addr436:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_.§%'§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§#!#§ = _loc8_;
                                                                                             addr430:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_.§%'§);
                                                                                                loop34:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().§;-§ = _loc5_;
                                                                                                   addr424:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.§%'§);
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
                                                                                                §§push(_loc6_.§;T§);
                                                                                                if(!(_loc14_ && param1))
                                                                                                {
                                                                                                   §§pop().§9§ = _loc8_.§%'§;
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
                                                                                                            _loc6_.§;T§ = _loc8_.§%'§;
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
                                                                                                                           §§push((_loc11_ = this.m_world).§9!?§);
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + 1);
                                                                                                                           }
                                                                                                                           var _loc12_:* = §§pop();
                                                                                                                           if(_loc13_ || param1)
                                                                                                                           {
                                                                                                                              _loc11_.§9!?§ = _loc12_;
                                                                                                                           }
                                                                                                                           break loop26;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.§;T§);
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
               if(_loc7_.§;-§ != _loc5_)
               {
                  continue;
               }
               if(_loc13_ || param2)
               {
                  _loc9_ = _loc7_.§#!#§.§%! §();
                  _loc10_ = _loc7_.§#!#§.§4#§();
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
      
      public function § !§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§+!2§.§<!Q§(this.§;L§);
         }
      }
      
      public function §"!Q§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:b2Fixture = param1.§%! §();
         var _loc3_:b2Fixture = param1.§4#§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!_loc8_)
         {
            §§push(param1.§%!T§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§-m§.EndContact(param1);
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
                              §§push(param1.§%'§);
                              if(!_loc8_)
                              {
                                 if(_loc9_)
                                 {
                                    if(§§pop() == _loc5_.§;T§)
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
                                                   _loc5_.§;T§ = param1.§%'§.§86§;
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§4I§.§"!Q§(param1);
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
                                                                     if(param1 == this.m_world.§;T§)
                                                                     {
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              this.m_world.§;T§ = param1.§!J§;
                                                                              addr324:
                                                                              while(true)
                                                                              {
                                                                                 addr281:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§`P§);
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       §§push(§§pop().§9§);
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
                                                                                                   §§push(param1.§`P§);
                                                                                                   addr291:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§9§);
                                                                                                      addr292:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§`P§.§86§);
                                                                                                         addr295:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().§86§ = §§pop();
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
                                                                                                §§push(param1.§`P§);
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§86§);
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
                                                                                                               §§push(param1.§`P§);
                                                                                                               loop17:
                                                                                                               while(!_loc8_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§86§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param1.§`P§.§9§);
                                                                                                                     addr279:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().§9§ = §§pop();
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
                                                                                                            §§push(param1.§`P§);
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(§§pop() == _loc4_.§;T§)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc4_.§;T§ = param1.§`P§.§86§;
                                                                                                                     break loop28;
                                                                                                                  }
                                                                                                                  addr253:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§%'§);
                                                                                                                  loop23:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§9§);
                                                                                                                     if(!(_loc8_ && this))
                                                                                                                     {
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     addr210:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc9_ || param1)
                                                                                                                        {
                                                                                                                           §§push(param1.§%'§.§86§);
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              §§pop().§86§ = §§pop();
                                                                                                                              if(_loc9_ || _loc3_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§%'§);
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().§86§);
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
                                                                                                                                                   §§push(param1.§%'§);
                                                                                                                                                   while(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().§86§);
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
                                                                                                                                                            §§push(param1.§4!0§);
                                                                                                                                                            addr347:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§!J§ = param1.§!J§;
                                                                                                                                                               break loop30;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr345:
                                                                                                                                                      }
                                                                                                                                                      addr325:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.§!J§);
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            break loop16;
                                                                                                                                                         }
                                                                                                                                                         addr334:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§4!0§ = param1.§4!0§;
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
                                                                                                                                                   §§push(param1.§%'§.§9§);
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   §§pop().§9§ = §§pop();
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
                        §§push((_loc6_ = this).§9!?§);
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(§§pop() - 1);
                        }
                        var _loc7_:* = §§pop();
                        if(!_loc8_)
                        {
                           _loc6_.§9!?§ = _loc7_;
                        }
                        break;
                     }
                  }
                  §§goto(addr392);
               }
               while(true)
               {
                  §§push(param1.§4!0§);
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
      
      public function §4!C§() : void
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
         var _loc1_:b2Contact = this.m_world.§;T§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§%! §();
            _loc3_ = _loc1_.§4#§();
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
                                                      §§push(_loc5_.§8`§(_loc4_));
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
                                                                  _loc1_ = _loc9_.§5<§();
                                                                  if(_loc11_ || _loc1_)
                                                                  {
                                                                     this.§"!Q§(_loc9_);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr242:
                                                                  _loc9_ = _loc1_;
                                                                  _loc1_ = _loc9_.§5<§();
                                                                  if(!(_loc10_ && _loc1_))
                                                                  {
                                                                     this.§"!Q§(_loc9_);
                                                                  }
                                                               }
                                                               continue;
                                                            }
                                                            addr238:
                                                            §§push(this.§";§.§8`§(_loc2_,_loc3_));
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
                                                            _loc1_.§8A§ &= ~b2Contact.§;S§;
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                _loc6_ = _loc2_.§#F§;
                                                _loc7_ = _loc3_.§#F§;
                                                if(_loc11_ || _loc2_)
                                                {
                                                   §§push(this.§+!2§.§>!N§(_loc6_,_loc7_));
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
                                                         _loc1_ = _loc1_.§5<§();
                                                         continue;
                                                      }
                                                   }
                                                   if(§§pop() == false)
                                                   {
                                                      if(!(_loc10_ && this))
                                                      {
                                                         _loc9_ = _loc1_;
                                                         _loc1_ = _loc9_.§5<§();
                                                         if(_loc11_)
                                                         {
                                                            this.§"!Q§(_loc9_);
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc1_.§&7§(this.§-m§);
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
                                                   _loc1_ = _loc1_.§5<§();
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                §§push(Boolean(_loc1_.§8A§ & b2Contact.§;S§));
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
