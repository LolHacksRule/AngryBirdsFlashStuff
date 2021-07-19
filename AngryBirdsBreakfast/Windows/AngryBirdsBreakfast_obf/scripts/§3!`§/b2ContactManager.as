package §3!`§
{
   import §'F§.b2internal;
   import §-"&§.b2Contact;
   import §-"&§.b2ContactEdge;
   import §-"&§.b2ContactFactory;
   import §^9§.§`c§;
   import §^9§.b2ContactPoint;
   import §^9§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §]" §:b2ContactPoint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §]" § = new b2ContactPoint();
         }
      }
      
      b2internal var m_world:b2World;
      
      b2internal var §9!V§:§`c§;
      
      b2internal var §]J§:b2Contact;
      
      b2internal var §<$§:int;
      
      b2internal var §<"$§:b2ContactFilter;
      
      b2internal var §&6§:b2ContactListener;
      
      b2internal var §9!m§:b2ContactFactory;
      
      b2internal var §]"#§;
      
      public function b2ContactManager()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         while(true)
         {
            this.m_world = null;
            while(_loc2_ || _loc2_)
            {
               this.§<$§ = 0;
               loop2:
               for(; _loc2_ || this; if(!(_loc2_ || this))
               {
                  continue;
               },this.§9!m§ = new b2ContactFactory(this.§]"#§),while(_loc2_)
               {
                  this.§9!V§ = new b2DynamicTreeBroadPhase();
                  if(!_loc1_)
                  {
                     return;
                  }
               },§§goto(addr62))
               {
                  this.§<"$§ = b2ContactFilter.§ !G§;
                  loop3:
                  while(true)
                  {
                     this.§&6§ = b2ContactListener.§^"%§;
                     addr62:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           continue loop2;
                        }
                        continue loop3;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public function §[[§(param1:*, param2:*) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(_loc14_)
         {
            if(_loc5_ == _loc6_)
            {
               if(_loc14_ || this)
               {
                  §§goto(addr53);
               }
            }
            var _loc7_:b2ContactEdge = _loc6_.§9'§();
            while(true)
            {
               if(!_loc7_)
               {
                  if(_loc14_ || param2)
                  {
                     §§push(_loc6_.§%g§(_loc5_));
                     if(_loc14_)
                     {
                        §§push(false);
                        if(_loc14_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc14_ || param2)
                              {
                                 return;
                              }
                              break;
                           }
                           break;
                        }
                        addr211:
                        if(§§pop() == §§pop())
                        {
                           if(_loc14_)
                           {
                              return;
                           }
                        }
                        var _loc8_:b2Contact;
                        _loc3_ = (_loc8_ = this.§9!m§.§2#§(_loc3_,_loc4_)).§&R§();
                        _loc4_ = _loc8_.§@!,§();
                        _loc5_ = _loc3_.m_body;
                        _loc6_ = _loc4_.m_body;
                        if(!(_loc13_ && param2))
                        {
                           _loc8_.§0!^§ = null;
                           loop11:
                           while(true)
                           {
                              _loc8_.§0!>§ = this.m_world.§]J§;
                              while(true)
                              {
                                 §§push(this.m_world);
                                 if(!_loc13_)
                                 {
                                    §§push(§§pop().§]J§);
                                    if(_loc14_)
                                    {
                                       if(§§pop() != null)
                                       {
                                          addr487:
                                          while(true)
                                          {
                                             §§push(this.m_world);
                                             addr489:
                                             while(true)
                                             {
                                                §§push(§§pop().§]J§);
                                                addr490:
                                                while(true)
                                                {
                                                   §§pop().§0!^§ = _loc8_;
                                                   addr492:
                                                   while(_loc14_)
                                                   {
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                          }
                                          addr487:
                                       }
                                       while(true)
                                       {
                                          §§push(this.m_world);
                                          if(_loc13_ && this)
                                          {
                                             break;
                                          }
                                          if(!_loc13_)
                                          {
                                             §§pop().§]J§ = _loc8_;
                                             while(true)
                                             {
                                                §§push(_loc8_.§`!i§);
                                                loop15:
                                                while(true)
                                                {
                                                   §§pop().§;%§ = _loc8_;
                                                   if(_loc13_)
                                                   {
                                                      §§goto(addr537);
                                                   }
                                                   §§push(_loc8_.§`!i§);
                                                   while(true)
                                                   {
                                                      §§pop().§-!3§ = _loc6_;
                                                      addr453:
                                                      while(true)
                                                      {
                                                         §§push(_loc8_.§`!i§);
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                                if(!(_loc14_ || param2))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr413);
                                                §§push(_loc5_.§]J§);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr489);
                                          }
                                          §§goto(addr494);
                                       }
                                       §§goto(addr508);
                                    }
                                    §§goto(addr490);
                                 }
                                 addr508:
                                 var _loc11_:*;
                                 §§push((_loc11_ = §§pop()).§<$§);
                                 if(_loc14_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc12_:* = §§pop();
                                 if(!(_loc13_ && param1))
                                 {
                                    _loc11_.§<$§ = _loc12_;
                                 }
                                 addr537:
                                 return;
                                 while(_loc14_ || _loc3_)
                                 {
                                    §§goto(addr447);
                                    §§goto(addr397);
                                 }
                              }
                           }
                        }
                        §§goto(addr487);
                     }
                     addr210:
                     §§goto(addr211);
                     §§push(false);
                  }
                  break;
               }
               if(_loc7_.§-!3§ == _loc5_)
               {
                  if(!(_loc14_ || this))
                  {
                     break;
                  }
                  _loc9_ = _loc7_.§;%§.§&R§();
                  _loc10_ = _loc7_.§;%§.§@!,§();
               }
               continue;
               if(!(_loc13_ && param1))
               {
                  §§push(_loc9_ == _loc3_);
                  if(_loc14_ || _loc3_)
                  {
                     §§push(§§pop());
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr166:
                           while(true)
                           {
                              §§pop();
                              addr167:
                              while(true)
                              {
                                 §§push(_loc10_ == _loc4_);
                              }
                           }
                           addr166:
                        }
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr150:
                                 if(!_loc13_)
                                 {
                                    §§goto(addr152);
                                 }
                              }
                              else
                              {
                                 addr116:
                                 while(true)
                                 {
                                    §§push(_loc9_ == _loc4_);
                                    addr120:
                                    while(true)
                                    {
                                       if(!_loc14_)
                                       {
                                          continue loop3;
                                       }
                                       if(!(_loc13_ && _loc3_))
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr166);
                                    }
                                 }
                                 addr116:
                              }
                              §§goto(addr167);
                           }
                        }
                     }
                  }
                  §§goto(addr166);
               }
               addr152:
               return;
            }
            §§goto(addr210);
            §§push(this.§<"$§.§%g§(_loc3_,_loc4_));
         }
         addr53:
      }
      
      public function §>"+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9!V§.§,b§(this.§[[§);
         }
      }
      
      public function §5f§(param1:b2Contact) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:b2Fixture = param1.§&R§();
         var _loc3_:b2Fixture = param1.§@!,§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(!(_loc9_ && _loc3_))
         {
            if(param1.§0&§())
            {
               while(true)
               {
                  this.§&6§.EndContact(param1);
                  addr320:
                  while(true)
                  {
                  }
                  addr128:
                  if(!(_loc8_ || _loc2_))
                  {
                     continue;
                  }
                  loop32:
                  while(true)
                  {
                     this.§9!m§.§5f§(param1);
                     if(_loc8_)
                     {
                        if(!_loc9_)
                        {
                           addr49:
                           if(_loc8_ || _loc3_)
                           {
                              if(!_loc9_)
                              {
                                 if(_loc8_)
                                 {
                                    if(false)
                                    {
                                       loop30:
                                       while(true)
                                       {
                                          §§push(param1.§5!A§);
                                          if(!(_loc9_ && param1))
                                          {
                                             if(_loc8_ || param1)
                                             {
                                                addr79:
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   if(§§pop() != _loc5_.§]J§)
                                                   {
                                                      continue loop32;
                                                   }
                                                   if(!(_loc9_ && this))
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            addr100:
                                                            if(_loc8_ || this)
                                                            {
                                                               if(_loc8_ || param1)
                                                               {
                                                                  _loc5_.§]J§ = param1.§5!A§.next;
                                                                  addr119:
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(_loc9_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr128);
                                                                     }
                                                                     loop34:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           continue loop30;
                                                                        }
                                                                        loop14:
                                                                        while(_loc8_)
                                                                        {
                                                                           §§push(param1.§`!i§);
                                                                           loop15:
                                                                           while(_loc8_)
                                                                           {
                                                                              §§push(§§pop().next);
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.§`!i§.§9!b§);
                                                                                 addr244:
                                                                                 addr149:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§9!b§ = §§pop();
                                                                                    break loop31;
                                                                                 }
                                                                                 if(!(_loc8_ || param1))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop30;
                                                                                    }
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(param1.§5!A§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().next);
                                                                                             addr174:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1.§5!A§.§9!b§);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§pop().§9!b§ = §§pop();
                                                                                                continue loop34;
                                                                                             }
                                                                                             §§goto(addr244);
                                                                                             continue loop30;
                                                                                          }
                                                                                          addr173:
                                                                                       }
                                                                                       addr288:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.§0!>§);
                                                                                          addr290:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().§0!^§ = param1.§0!^§;
                                                                                             break loop28;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          if(param1 == this.m_world.§]J§)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.m_world.§]J§ = param1.§0!>§;
                                                                                                addr281:
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             addr276:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.§`!i§);
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(§§pop().§9!b§);
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1.§`!i§);
                                                                                                         break loop15;
                                                                                                      }
                                                                                                      addr262:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.§`!i§);
                                                                                                      loop12:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().next);
                                                                                                         addr233:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            addr213:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param1.§`!i§);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(§§pop() == _loc4_.§]J§)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc4_.§]J§ = param1.§`!i§.next;
                                                                                                                     addr228:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr49);
                                                                                                                  }
                                                                                                                  addr223:
                                                                                                               }
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1.§5!A§);
                                                                                                                  addr186:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§9!b§);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           loop24:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc8_ || this)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§5!A§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().§9!b§);
                                                                                                                                       addr202:
                                                                                                                                       addr265:
                                                                                                                                       while(!_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§5!A§.next);
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             §§pop().next = §§pop();
                                                                                                                                             while(!_loc9_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr136:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§5!A§);
                                                                                                                                                      break loop30;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop22;
                                                                                                                                             addr210:
                                                                                                                                          }
                                                                                                                                          addr268:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().next = §§pop();
                                                                                                                                             break loop14;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr268);
                                                                                                                                       }
                                                                                                                                       break loop30;
                                                                                                                                    }
                                                                                                                                    addr201:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(param1.§0!^§);
                                                                                                                                    addr302:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().§0!>§ = param1.§0!>§;
                                                                                                                                       if(_loc9_ && this)
                                                                                                                                       {
                                                                                                                                          break loop24;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1.§0!>§);
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop6;
                                                                                                                                             }
                                                                                                                                             §§goto(addr288);
                                                                                                                                          }
                                                                                                                                          §§goto(addr290);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr300:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr281);
                                                                                                                              }
                                                                                                                              §§goto(addr100);
                                                                                                                           }
                                                                                                                           addr346:
                                                                                                                           return;
                                                                                                                           addr190:
                                                                                                                        }
                                                                                                                        §§goto(addr136);
                                                                                                                     }
                                                                                                                     §§goto(addr202);
                                                                                                                     §§goto(addr79);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                      }
                                                                                                      break loop14;
                                                                                                   }
                                                                                                   addr229:
                                                                                                }
                                                                                                §§goto(addr265);
                                                                                             }
                                                                                             break loop15;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr233);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr265);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr229);
                                                                        }
                                                                     }
                                                                  }
                                                                  while(_loc8_)
                                                                  {
                                                                     §§goto(addr213);
                                                                  }
                                                                  §§goto(addr320);
                                                                  addr119:
                                                               }
                                                               §§goto(addr276);
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr119);
                                                }
                                                §§goto(addr186);
                                             }
                                             break;
                                          }
                                          §§goto(addr173);
                                       }
                                       while(_loc8_ || _loc3_)
                                       {
                                          §§push(§§pop().next);
                                          if(!_loc9_)
                                          {
                                             §§goto(addr149);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr201);
                                    }
                                    else
                                    {
                                       var _loc6_:*;
                                       §§push((_loc6_ = this).§<$§);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc7_:* = §§pop();
                                       if(!_loc9_)
                                       {
                                          _loc6_.§<$§ = _loc7_;
                                       }
                                       §§goto(addr346);
                                    }
                                 }
                                 §§goto(addr293);
                              }
                              §§goto(addr262);
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr346);
                  }
               }
            }
            while(true)
            {
               §§push(param1.§0!^§);
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     §§goto(addr300);
                  }
                  §§goto(addr282);
               }
               §§goto(addr302);
               §§goto(addr320);
            }
         }
         §§goto(addr212);
      }
      
      public function §-"%§() : void
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
         var _loc1_:b2Contact = this.m_world.§]J§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§&R§();
            _loc3_ = _loc1_.§@!,§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc11_)
            {
               §§push(_loc4_.IsAwake());
               if(_loc11_ || _loc3_)
               {
                  §§push(false);
                  if(_loc11_)
                  {
                     §§push(§§pop() == §§pop());
                     if(!_loc10_)
                     {
                        addr80:
                        §§push(§§pop());
                        if(_loc11_ || this)
                        {
                           if(§§pop())
                           {
                              if(_loc11_ || _loc3_)
                              {
                                 §§pop();
                                 if(!_loc10_)
                                 {
                                    addr99:
                                    §§push(_loc5_.IsAwake());
                                    if(!_loc10_)
                                    {
                                       addr103:
                                       §§push(false);
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc10_ && this))
                                          {
                                             addr114:
                                             if(§§pop())
                                             {
                                                if(_loc11_ || _loc2_)
                                                {
                                                   addr122:
                                                   _loc1_ = _loc1_.§>X§();
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                if(_loc1_.§,[§ & b2Contact.§"8§)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      §§push(_loc5_.§%g§(_loc4_));
                                                      if(!_loc10_)
                                                      {
                                                         addr150:
                                                         §§push(false);
                                                         if(!_loc10_)
                                                         {
                                                            addr153:
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  addr161:
                                                                  _loc1_ = (_loc9_ = _loc1_).§>X§();
                                                                  if(_loc11_)
                                                                  {
                                                                     this.§5f§(_loc9_);
                                                                  }
                                                                  continue;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr180:
                                                               if(this.§<"$§.§%g§(_loc2_,_loc3_) == false)
                                                               {
                                                                  if(!(_loc11_ || this))
                                                                  {
                                                                     addr209:
                                                                     _loc6_ = _loc2_.§1! §;
                                                                     _loc7_ = _loc3_.§1! §;
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        §§push(this.§9!V§.§]",§(_loc6_,_loc7_));
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc11_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc11_ || this)
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 addr248:
                                                                                 §§push(false);
                                                                              }
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(!(_loc10_ && _loc2_))
                                                                                 {
                                                                                    _loc1_ = (_loc9_ = _loc1_).§>X§();
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       this.§5f§(_loc9_);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr284:
                                                                                    _loc1_ = _loc1_.§>X§();
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              _loc1_.§3v§(this.§&6§);
                                                                              §§goto(addr284);
                                                                              §§goto(addr284);
                                                                           }
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc1_.§,[§ &= ~b2Contact.§"8§;
                                                                  §§goto(addr209);
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                            _loc1_ = (_loc9_ = _loc1_).§>X§();
                                                            if(_loc11_)
                                                            {
                                                               this.§5f§(_loc9_);
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr161);
                                          }
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr153);
               }
               §§goto(addr80);
            }
            §§goto(addr99);
         }
      }
   }
}
