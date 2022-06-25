package §#!0§
{
   import §!m§.b2ContactID;
   import §!m§.b2Manifold;
   import §!m§.b2ManifoldPoint;
   import §!m§.b2TOIInput;
   import §!m§.b2TimeOfImpact;
   import §!m§.b2WorldManifold;
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §0!3§.b2Shape;
   import §>!8§.b2Sweep;
   import §>!8§.b2Transform;
   import §>!L§.b2Body;
   import §>!L§.b2ContactListener;
   import §>!L§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §-1§:uint = 1;
      
      b2internal static var §8'§:uint = 2;
      
      b2internal static var §%!d§:uint = 4;
      
      b2internal static var §;![§:uint = 8;
      
      b2internal static var § !'§:uint = 16;
      
      b2internal static var §15§:uint = 32;
      
      b2internal static var §'!I§:uint = 64;
      
      private static var §!!+§:b2TOIInput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-1§ = 1;
            loop0:
            while(true)
            {
               §8'§ = 2;
               loop1:
               while(true)
               {
                  §%!d§ = 4;
                  while(_loc1_)
                  {
                     §;![§ = 8;
                     if(_loc1_ || _loc1_)
                     {
                        return;
                        addr39:
                     }
                  }
                  continue loop0;
                  addr88:
                  if(!(_loc1_ || b2Contact))
                  {
                     continue;
                  }
                  §15§ = 32;
                  loop5:
                  do
                  {
                     §'!I§ = 64;
                     addr54:
                     while(_loc1_ || _loc1_)
                     {
                        §!!+§ = new b2TOIInput();
                        if(_loc1_)
                        {
                           continue loop5;
                        }
                     }
                     loop4:
                     while(true)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr88);
                        }
                        else
                        {
                           while(true)
                           {
                              § !'§ = 16;
                              continue loop4;
                           }
                           §§goto(addr39);
                           addr100:
                        }
                     }
                     continue loop1;
                  }
                  while(_loc2_);
                  
                  §§goto(addr32);
               }
            }
         }
         §§goto(addr100);
      }
      
      b2internal var §]!D§:uint;
      
      b2internal var §<!9§:b2Contact;
      
      b2internal var §,!Z§:b2Contact;
      
      b2internal var §6+§:b2ContactEdge;
      
      b2internal var §%W§:b2ContactEdge;
      
      b2internal var §7d§:b2Fixture;
      
      b2internal var §-F§:b2Fixture;
      
      b2internal var §,S§:b2Manifold;
      
      b2internal var § !1§:b2Manifold;
      
      b2internal var §+!E§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6+§ = new b2ContactEdge();
            while(true)
            {
               this.§%W§ = new b2ContactEdge();
               loop1:
               while(!(_loc2_ && _loc2_))
               {
                  this.§,S§ = new b2Manifold();
                  while(true)
                  {
                     this.§ !1§ = new b2Manifold();
                     loop3:
                     while(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              super();
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §1!4§() : b2Manifold
      {
         return this.§,S§;
      }
      
      public function §>S§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = this.§7d§.GetBody();
         var _loc3_:b2Body = this.§-F§.GetBody();
         var _loc4_:b2Shape = this.§7d§.GetShape();
         var _loc5_:b2Shape = this.§-F§.GetShape();
         if(!_loc7_)
         {
            param1.§2@§(this.§,S§,_loc2_.§1?§(),_loc4_.§!@§,_loc3_.§1?§(),_loc5_.§!@§);
         }
      }
      
      public function §%&§() : Boolean
      {
         return (this.§]!D§ & § !'§) == § !'§;
      }
      
      public function §<!P§() : Boolean
      {
         return (this.§]!D§ & §8'§) == §8'§;
      }
      
      public function §,!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§]!D§ &= ~§-1§;
               if(_loc3_ && _loc3_)
               {
                  addr73:
               }
               return;
            }
            if(_loc2_)
            {
               this.§]!D§ |= §-1§;
            }
         }
         §§goto(addr73);
      }
      
      public function §[j§() : Boolean
      {
         return (this.§]!D§ & §-1§) == §-1§;
      }
      
      public function §`U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§]!D§ &= ~§15§;
               if(!_loc3_)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     addr66:
                     this.§]!D§ |= §15§;
                     addr73:
                  }
                  return;
               }
               §§goto(addr73);
            }
         }
         §§goto(addr66);
      }
      
      public function §`-§() : Boolean
      {
         return (this.§]!D§ & §15§) == §15§;
      }
      
      public function §'!;§() : b2Contact
      {
         return this.§,!Z§;
      }
      
      public function §'$§() : b2Fixture
      {
         return this.§7d§;
      }
      
      public function §<!2§() : b2Fixture
      {
         return this.§-F§;
      }
      
      public function §"T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§]!D§ |= §'!I§;
         }
      }
      
      b2internal function §9=§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§]!D§ = §15§;
            loop0:
            while(true)
            {
               §§push(!param1);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(!param2);
                                 if(!_loc6_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                    }
                                    addr138:
                                 }
                                 loop6:
                                 while(!§§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param1.§[j§());
                                       loop8:
                                       while(!(_loc6_ && _loc3_))
                                       {
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop6;
                                             addr31:
                                             if(!(_loc5_ || param2))
                                             {
                                                continue;
                                             }
                                             addr39:
                                             §§push(Boolean(§§pop()));
                                             if(_loc6_)
                                             {
                                                continue loop8;
                                             }
                                             if(!_loc5_)
                                             {
                                                continue loop1;
                                             }
                                             while(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   addr47:
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      this.§]!D§ |= §-1§;
                                                      addr61:
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_ && param2)
                                                         {
                                                            addr124:
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               this.§-F§ = null;
                                                               addr143:
                                                               §§goto(addr124);
                                                               addr143:
                                                            }
                                                         }
                                                         continue loop7;
                                                      }
                                                      if(_loc6_ && this)
                                                      {
                                                         break loop7;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         continue loop0;
                                                         return;
                                                      }
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      continue loop7;
                                                   }
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ || _loc3_))
                                                      {
                                                         break loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param2.§[j§());
                                                         if(_loc5_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               while(!_loc6_)
                                                               {
                                                                  §§pop();
                                                                  continue loop11;
                                                               }
                                                               continue loop4;
                                                               addr99:
                                                            }
                                                            §§goto(addr31);
                                                         }
                                                         §§goto(addr39);
                                                      }
                                                   }
                                                   §§goto(addr143);
                                                }
                                                §§goto(addr61);
                                             }
                                             var _loc3_:b2Body = param1.GetBody();
                                             var _loc4_:b2Body = param2.GetBody();
                                             if(_loc5_ || this)
                                             {
                                                addr555:
                                                §§push(_loc3_.§6!-§() != b2Body.b2_dynamicBody || _loc3_.§%q§());
                                                §§push(_loc3_.§6!-§() != b2Body.b2_dynamicBody || _loc3_.§%q§());
                                                if(!_loc6_)
                                                {
                                                   addr539:
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc5_ || param2)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         addr547:
                                                         §§pop();
                                                         addr548:
                                                         §§push(_loc4_.§6!-§());
                                                         if(_loc5_)
                                                         {
                                                            §§push(b2Body.b2_dynamicBody);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr485:
                                                                              §§push(§§pop());
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    addr501:
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr504:
                                                                                          if(_loc5_ || this)
                                                                                          {
                                                                                             if(!(_loc6_ && param2))
                                                                                             {
                                                                                                §§pop();
                                                                                                addr519:
                                                                                                §§push(_loc4_.§%q§());
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(_loc5_ || param2)
                                                                                                   {
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         addr422:
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!(_loc6_ && param1))
                                                                                                            {
                                                                                                               addr431:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr433:
                                                                                                                  this.§]!D§ |= §8'§;
                                                                                                                  addr440:
                                                                                                               }
                                                                                                               this.§7d§ = param1;
                                                                                                               this.§-F§ = param2;
                                                                                                               this.§,S§.§5<§ = 0;
                                                                                                               addr391:
                                                                                                               addr396:
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     this.§<!9§ = null;
                                                                                                                     this.§,!Z§ = null;
                                                                                                                     addr376:
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc5_ || this)
                                                                                                                           {
                                                                                                                              addr354:
                                                                                                                              this.§6+§.§7![§ = null;
                                                                                                                              addr339:
                                                                                                                              this.§6+§.§3!j§ = null;
                                                                                                                              addr340:
                                                                                                                              addr355:
                                                                                                                              addr353:
                                                                                                                              addr338:
                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    addr331:
                                                                                                                                    §§push(this.§6+§);
                                                                                                                                    §§push(null);
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§pop().§<!D§ = §§pop();
                                                                                                                                       addr334:
                                                                                                                                       §§push(this.§6+§);
                                                                                                                                       if(_loc5_ || param2)
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(null);
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§@X§ = §§pop();
                                                                                                                                                      addr310:
                                                                                                                                                      if(_loc5_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr276:
                                                                                                                                                               this.§%W§.§7![§ = null;
                                                                                                                                                               addr275:
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  addr242:
                                                                                                                                                                  this.§%W§.§3!j§ = null;
                                                                                                                                                                  addr243:
                                                                                                                                                                  addr241:
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              addr236:
                                                                                                                                                                              this.§%W§.§<!D§ = null;
                                                                                                                                                                              addr237:
                                                                                                                                                                              §§push(this.§%W§);
                                                                                                                                                                              if(!(_loc6_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(null);
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc6_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc6_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().§@X§ = §§pop();
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_ && _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr243);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   return;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr237);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr276);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr242);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr236);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr275);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr241);
                                                                                                                                                                              }
                                                                                                                                                                              addr235:
                                                                                                                                                                              §§goto(addr235);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr519);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr334);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr310);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr276);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr340);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr391);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr376);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr355);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr354);
                                                                                                                                                }
                                                                                                                                                §§goto(addr331);
                                                                                                                                             }
                                                                                                                                             §§goto(addr353);
                                                                                                                                          }
                                                                                                                                          §§goto(addr338);
                                                                                                                                       }
                                                                                                                                       §§goto(addr331);
                                                                                                                                    }
                                                                                                                                    §§goto(addr339);
                                                                                                                                 }
                                                                                                                                 §§goto(addr391);
                                                                                                                              }
                                                                                                                              §§goto(addr376);
                                                                                                                           }
                                                                                                                           §§goto(addr561);
                                                                                                                        }
                                                                                                                        §§goto(addr440);
                                                                                                                     }
                                                                                                                     §§goto(addr396);
                                                                                                                  }
                                                                                                                  §§goto(addr548);
                                                                                                               }
                                                                                                               §§goto(addr433);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr555);
                                                                                                      }
                                                                                                      §§goto(addr560);
                                                                                                   }
                                                                                                   §§goto(addr504);
                                                                                                }
                                                                                                §§goto(addr422);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr555);
                                                                                       }
                                                                                       §§goto(addr431);
                                                                                    }
                                                                                    §§goto(addr539);
                                                                                 }
                                                                                 §§goto(addr555);
                                                                              }
                                                                              §§goto(addr501);
                                                                              addr484:
                                                                           }
                                                                           §§goto(addr504);
                                                                        }
                                                                        §§goto(addr560);
                                                                     }
                                                                     §§goto(addr485);
                                                                  }
                                                                  §§goto(addr547);
                                                               }
                                                               §§goto(addr485);
                                                            }
                                                         }
                                                         §§goto(addr555);
                                                      }
                                                      §§goto(addr484);
                                                   }
                                                }
                                                §§goto(addr555);
                                             }
                                             §§goto(addr519);
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                                 this.§7d§ = null;
                                 §§goto(addr143);
                              }
                           }
                        }
                        §§goto(addr138);
                     }
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      b2internal function §%!-§(param1:b2ContactListener) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:* = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:* = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§ !1§;
         if(_loc18_ || _loc2_)
         {
            this.§ !1§ = this.§,S§;
            loop0:
            while(true)
            {
               addr66:
               while(true)
               {
                  this.§,S§ = _loc2_;
                  addr70:
                  while(!_loc17_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§]!D§ |= §15§;
            if(_loc18_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr66);
            }
            §§goto(addr70);
         }
         §§push(false);
         if(!_loc17_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push((this.§]!D§ & § !'§) == § !'§);
         if(!_loc17_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2Body = this.§7d§.m_body;
         var _loc6_:b2Body = this.§-F§.m_body;
         §§push(this.§7d§.§'!Y§.§ V§(this.§-F§.§'!Y§));
         if(!(_loc17_ && this))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!_loc17_)
         {
            §§push(this.§]!D§);
            if(!_loc17_)
            {
               §§push(§-1§);
               if(_loc18_ || param1)
               {
                  §§push(§§pop() & §§pop());
                  if(!(_loc17_ && _loc3_))
                  {
                     §§push(Boolean(§§pop()));
                     if(!_loc17_)
                     {
                        if(§§pop())
                        {
                           if(_loc18_ || this)
                           {
                              §§push(_loc7_);
                              if(_loc18_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc17_ && this))
                                    {
                                       addr171:
                                       _loc8_ = this.§7d§.GetShape();
                                       _loc9_ = this.§-F§.GetShape();
                                       _loc10_ = _loc5_.§1?§();
                                       _loc11_ = _loc6_.§1?§();
                                       if(_loc18_ || _loc3_)
                                       {
                                          §§push(b2Shape.§ V§(_loc8_,_loc10_,_loc9_,_loc11_));
                                          if(_loc18_ || _loc2_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                          addr212:
                                          §§push(this.§,S§);
                                          if(_loc18_)
                                          {
                                             §§pop().§5<§ = 0;
                                             if(_loc18_ || _loc2_)
                                             {
                                                loop30:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   loop31:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         this.§]!D§ &= ~§ !'§;
                                                         loop32:
                                                         while(true)
                                                         {
                                                            loop33:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               loop34:
                                                               while(true)
                                                               {
                                                                  §§push(false);
                                                                  loop35:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     loop36:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop37:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop38:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop39:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop40:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             loop41:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc3_);
                                                                                                while(_loc18_)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      continue loop34;
                                                                                                   }
                                                                                                   §§push(true);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      addr779:
                                                                                                      addr692:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      if(!(_loc18_ || this))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                      if(_loc17_ && param1)
                                                                                                      {
                                                                                                         continue loop35;
                                                                                                      }
                                                                                                      §§push(§§pop() == §§pop());
                                                                                                      if(!(_loc17_ && _loc3_))
                                                                                                      {
                                                                                                         addr716:
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            addr718:
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               addr721:
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           addr727:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param1.EndContact(this);
                                                                                                                           }
                                                                                                                           addr727:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr731:
                                                                                                                     }
                                                                                                                     loop55:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§]!D§ & §-1§);
                                                                                                                        addr639:
                                                                                                                        while(§§pop() == 0)
                                                                                                                        {
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              if(!(_loc17_ && _loc2_))
                                                                                                                              {
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          param1.PreSolve(this,this.§ !1§);
                                                                                                                                          addr662:
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   break loop55;
                                                                                                                                                }
                                                                                                                                                continue loop32;
                                                                                                                                             }
                                                                                                                                             loop48:
                                                                                                                                             while(!_loc17_)
                                                                                                                                             {
                                                                                                                                                loop49:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   if(!(_loc17_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      §§push(true);
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         loop50:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc18_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr767:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop40;
                                                                                                                                                                     }
                                                                                                                                                                     addr769:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        if(_loc18_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop50;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr716);
                                                                                                                                                                        §§goto(addr769);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr718);
                                                                                                                                                                  }
                                                                                                                                                                  addr767:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr779);
                                                                                                                                                            }
                                                                                                                                                            addr781:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  continue loop49;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  param1.BeginContact(this);
                                                                                                                                                                  continue loop48;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop36;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         continue loop38;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr767);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                          §§goto(addr731);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§]!D§ |= § !'§;
                                                                                                                                          }
                                                                                                                                          addr818:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(_loc18_ || this)
                                                                                                                                    {
                                                                                                                                       continue loop33;
                                                                                                                                    }
                                                                                                                                    addr848:
                                                                                                                                    if(!(_loc17_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!(_loc18_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          addr866:
                                                                                                                                          _loc5_.SetAwake(true);
                                                                                                                                          _loc6_.SetAwake(true);
                                                                                                                                          §§goto(addr848);
                                                                                                                                          addr870:
                                                                                                                                       }
                                                                                                                                       break loop39;
                                                                                                                                    }
                                                                                                                                    §§goto(addr870);
                                                                                                                                 }
                                                                                                                                 §§goto(addr782);
                                                                                                                              }
                                                                                                                              §§goto(addr770);
                                                                                                                           }
                                                                                                                           §§goto(addr662);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     return;
                                                                                                                     §§goto(addr721);
                                                                                                                  }
                                                                                                                  addr723:
                                                                                                               }
                                                                                                               continue loop31;
                                                                                                            }
                                                                                                            §§goto(addr781);
                                                                                                         }
                                                                                                         §§goto(addr767);
                                                                                                      }
                                                                                                      §§goto(addr718);
                                                                                                   }
                                                                                                }
                                                                                                continue loop37;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr781);
                                                                                          §§goto(addr779);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr865:
                                                                                       if(§§pop() == §§pop())
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr866);
                                                                                 }
                                                                                 continue loop30;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr864:
                                                                              §§push(_loc4_);
                                                                           }
                                                                           §§goto(addr865);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr814:
                                                      }
                                                      §§goto(addr818);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(_loc6_.§%q§());
                                                   if(!(_loc17_ && _loc3_))
                                                   {
                                                      if(_loc18_ || _loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop5:
                                                         while(true)
                                                         {
                                                            addr360:
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  this.§]!D§ &= ~§8'§;
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        loop23:
                                                                        while(!(_loc17_ && _loc3_))
                                                                        {
                                                                           if(_loc18_ || _loc3_)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc17_ && param1))
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             this.Evaluate();
                                                                                             continue loop21;
                                                                                          }
                                                                                          addr361:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§]!D§ |= §8'§;
                                                                                             break loop24;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc18_ || _loc2_)
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                if(!(_loc17_ && this))
                                                                                                {
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            addr233:
                                                                                                            §§push(int(§§pop()));
                                                                                                            loop68:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc12_ = §§pop();
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§,S§);
                                                                                                                     addr243:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§5<§);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr240:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop69:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc12_);
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        §§push(this.§,S§.§5<§);
                                                                                                                        if(!(_loc17_ && param1))
                                                                                                                        {
                                                                                                                           if(§§pop() >= §§pop())
                                                                                                                           {
                                                                                                                              if(!(_loc17_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr863:
                                                                                                                                 §§goto(addr864);
                                                                                                                                 §§push(_loc3_);
                                                                                                                              }
                                                                                                                              §§goto(addr814);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(this.§,S§);
                                                                                                                              if(_loc18_ || param1)
                                                                                                                              {
                                                                                                                                 _loc13_ = §§pop().§&!2§[_loc12_];
                                                                                                                                 if(!(_loc17_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    _loc13_.§#!Y§ = 0;
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       _loc13_.§!B§ = 0;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 _loc14_ = _loc13_.m_id;
                                                                                                                                 if(!(_loc17_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                          if(_loc18_ || this)
                                                                                                                                          {
                                                                                                                                             addr525:
                                                                                                                                             loop74:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc15_);
                                                                                                                                                addr588:
                                                                                                                                                while(§§pop() < this.§ !1§.§5<§)
                                                                                                                                                {
                                                                                                                                                   _loc16_ = this.§ !1§.§&!2§[_loc15_];
                                                                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc16_.m_id.key != _loc14_.key)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         if(!_loc17_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + 1);
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                               if(_loc18_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  addr559:
                                                                                                                                                                  _loc15_ = §§pop();
                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop69;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        if(true)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop74;
                                                                                                                                                                        }
                                                                                                                                                                        loop71:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc13_.§!B§ = _loc16_.§!B§;
                                                                                                                                                                           addr573:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop71;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop71;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                        addr568:
                                                                                                                                                                        addr575:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr582:
                                                                                                                                                                        _loc13_.§#!Y§ = _loc16_.§#!Y§;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr568);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr573);
                                                                                                                                                               }
                                                                                                                                                               addr599:
                                                                                                                                                               _loc12_ = int(§§pop());
                                                                                                                                                               addr598:
                                                                                                                                                               continue loop69;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr559);
                                                                                                                                                         }
                                                                                                                                                         addr595:
                                                                                                                                                         §§push(§§pop() + 1);
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr598);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr599);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr582);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr575);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§push(_loc12_);
                                                                                                                                          if(!_loc17_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr595);
                                                                                                                                          }
                                                                                                                                          §§goto(addr599);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr588);
                                                                                                                                 }
                                                                                                                                 §§goto(addr525);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr624:
                                                                                                                                 §§pop().§5<§ = 0;
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr863);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr727);
                                                                                                                        }
                                                                                                                        §§goto(addr640);
                                                                                                                     }
                                                                                                                     break loop68;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr639);
                                                                                                            addr233:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() > 0);
                                                                                                            if(_loc18_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                            {
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  loop8:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr401:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc17_ && this))
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    break loop23;
                                                                                                                                 }
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr468:
                                                                                                                                       loop14:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.§%q§());
                                                                                                                                          addr439:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             continue loop14;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr467:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr441:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr466:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(_loc18_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc17_ && this))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 break loop28;
                                                                                                                              }
                                                                                                                              §§goto(addr467);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr465:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr466);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr439);
                                                                                                            }
                                                                                                            §§goto(addr446);
                                                                                                         }
                                                                                                         addr395:
                                                                                                      }
                                                                                                      §§goto(addr233);
                                                                                                   }
                                                                                                   §§goto(addr468);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop24;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_.§6!-§());
                                                                                          if(!(_loc17_ && param1))
                                                                                          {
                                                                                             §§push(b2Body.b2_dynamicBody);
                                                                                             if(!(_loc17_ && param1))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr458:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(b2Body.b2_dynamicBody);
                                                                                             }
                                                                                             addr458:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             addr462:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                addr463:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   addr464:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr465);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr389:
                                                                                       loop76:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          addr390:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§goto(addr395);
                                                                                                   §§push(!§§pop());
                                                                                                }
                                                                                                §§goto(addr462);
                                                                                             }
                                                                                             §§goto(addr463);
                                                                                             continue loop76;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop22;
                                                                                    }
                                                                                    addr368:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr624);
                                                                                    §§push(this.§,S§);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr464);
                                                                              }
                                                                           }
                                                                           §§goto(addr401);
                                                                        }
                                                                        while(!_loc17_)
                                                                        {
                                                                           §§pop();
                                                                           continue loop4;
                                                                        }
                                                                        §§goto(addr441);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr390);
                                                   }
                                                   §§goto(addr360);
                                                }
                                                addr435:
                                             }
                                             §§goto(addr727);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr435);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr441);
                           }
                           §§goto(addr368);
                        }
                        else
                        {
                           §§goto(addr458);
                           §§push(_loc5_.§6!-§());
                        }
                        §§goto(addr458);
                     }
                     §§goto(addr401);
                  }
                  §§goto(addr233);
               }
               §§goto(addr389);
            }
            §§goto(addr458);
         }
         §§goto(addr171);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §with§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(§!!+§);
            while(true)
            {
               §§pop().§'[§.Set(this.§7d§.GetShape());
               loop4:
               while(!(_loc4_ && _loc3_))
               {
                  §§pop().§=!S§ = param1;
                  loop5:
                  while(true)
                  {
                     §§push(§!!+§);
                     loop6:
                     while(_loc3_)
                     {
                        addr55:
                        if(_loc3_ || param1)
                        {
                           §§pop().§&+§ = param2;
                           continue loop5;
                        }
                        addr122:
                        while(true)
                        {
                           §§pop().§4P§.Set(this.§-F§.GetShape());
                           addr128:
                           while(true)
                           {
                              break loop6;
                           }
                           §§goto(addr55);
                        }
                        §§push(§!!+§);
                        if(_loc3_)
                        {
                           addr38:
                           §§pop().§@O§ = b2Settings.b2_linearSlop;
                           if(_loc3_ || _loc3_)
                           {
                              return b2TimeOfImpact.§@! §(§!!+§);
                           }
                           continue loop5;
                        }
                     }
                     continue loop4;
                  }
               }
            }
         }
         §§goto(addr137);
      }
   }
}
