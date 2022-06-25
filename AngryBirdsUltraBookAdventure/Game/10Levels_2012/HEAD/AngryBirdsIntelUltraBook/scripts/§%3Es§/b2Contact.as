package §>s§
{
   import §,X§.b2Shape;
   import §1%§.b2Body;
   import §1%§.b2ContactListener;
   import §1%§.b2Fixture;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §?!&§.b2Sweep;
   import §?!&§.b2Transform;
   import §`!H§.b2ContactID;
   import §`!H§.b2Manifold;
   import §`!H§.b2ManifoldPoint;
   import §`!H§.b2TOIInput;
   import §`!H§.b2TimeOfImpact;
   import §`!H§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §-!T§:uint = 1;
      
      b2internal static var §%!9§:uint = 2;
      
      b2internal static var §8s§:uint = 4;
      
      b2internal static var §'!=§:uint = 8;
      
      b2internal static var §5q§:uint = 16;
      
      b2internal static var §=S§:uint = 32;
      
      b2internal static var §;S§:uint = 64;
      
      private static var §7!E§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-!T§ = 1;
         }
         loop0:
         while(true)
         {
            §%!9§ = 2;
            loop1:
            while(true)
            {
               §8s§ = 4;
               loop2:
               do
               {
                  §'!=§ = 8;
                  while(!_loc1_)
                  {
                     §5q§ = 16;
                     while(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           §=S§ = 32;
                           while(!_loc1_)
                           {
                              §;S§ = 64;
                              while(_loc2_)
                              {
                                 §7!E§ = new b2TOIInput();
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                              }
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
                  continue loop1;
               }
               while(_loc1_ && _loc2_);
               
               return;
            }
         }
      }
      
      b2internal var §8A§:uint;
      
      b2internal var §4!0§:b2Contact;
      
      b2internal var §!J§:b2Contact;
      
      b2internal var §`P§:b2ContactEdge;
      
      b2internal var §%'§:b2ContactEdge;
      
      b2internal var §]r§:b2Fixture;
      
      b2internal var §"!F§:b2Fixture;
      
      b2internal var §]0§:b2Manifold;
      
      b2internal var §7!3§:b2Manifold;
      
      b2internal var §?G§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`P§ = new b2ContactEdge();
            while(true)
            {
               this.§%'§ = new b2ContactEdge();
               addr82:
               while(true)
               {
                  this.§]0§ = new b2Manifold();
               }
               addr43:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               return;
               addr60:
            }
         }
         loop2:
         while(true)
         {
            this.§7!3§ = new b2Manifold();
            while(true)
            {
               if(_loc1_)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  continue;
               }
               continue loop2;
            }
            §§goto(addr82);
         }
         §§goto(addr60);
      }
      
      public function §%8§() : b2Manifold
      {
         return this.§]0§;
      }
      
      public function §]!j§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§]r§.GetBody();
         var _loc3_:b2Body = this.§"!F§.GetBody();
         var _loc4_:b2Shape = this.§]r§.GetShape();
         var _loc5_:b2Shape = this.§"!F§.GetShape();
         if(!(_loc6_ && _loc2_))
         {
            param1.§3!a§(this.§]0§,_loc2_.§?Q§(),_loc4_.§&!N§,_loc3_.§?Q§(),_loc5_.§&!N§);
         }
      }
      
      public function §%!T§() : Boolean
      {
         return (this.§8A§ & §5q§) == §5q§;
      }
      
      public function §[!Q§() : Boolean
      {
         return (this.§8A§ & §%!9§) == §%!9§;
      }
      
      public function §1[§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§8A§ &= ~§-!T§;
               if(!_loc3_)
               {
                  if(_loc3_ && _loc3_)
                  {
                     addr66:
                     this.§8A§ |= §-!T§;
                     addr73:
                  }
                  return;
               }
               §§goto(addr73);
            }
         }
         §§goto(addr66);
      }
      
      public function §@!L§() : Boolean
      {
         return (this.§8A§ & §-!T§) == §-!T§;
      }
      
      public function §^!3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!param1)
            {
               this.§8A§ &= ~§=S§;
               if(!_loc2_)
               {
                  addr73:
               }
               return;
            }
            if(_loc2_)
            {
               this.§8A§ |= §=S§;
            }
         }
         §§goto(addr73);
      }
      
      public function §@f§() : Boolean
      {
         return (this.§8A§ & §=S§) == §=S§;
      }
      
      public function §5<§() : b2Contact
      {
         return this.§!J§;
      }
      
      public function §%! §() : b2Fixture
      {
         return this.§]r§;
      }
      
      public function §4#§() : b2Fixture
      {
         return this.§"!F§;
      }
      
      public function §+! §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§8A§ |= §;S§;
         }
      }
      
      b2internal function §`!B§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.§8A§ = §=S§;
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
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr174:
                                 while(true)
                                 {
                                    §§push(!param2);
                                    addr148:
                                    while(true)
                                    {
                                       if(!(_loc5_ || this))
                                       {
                                          continue loop5;
                                       }
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           while(true)
                           {
                              loop9:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push(param1.§@!L§());
                                       if(_loc5_ || this)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc5_ || param1)
                                          {
                                             addr96:
                                             if(!_loc5_)
                                             {
                                                continue loop9;
                                             }
                                             if(!_loc6_)
                                             {
                                                if(_loc6_ && param1)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(§§pop());
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!(_loc5_ || this))
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc6_ && param1)
                                                {
                                                   continue loop3;
                                                }
                                                if(!§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(param2.§@!L§());
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!(_loc5_ || param1))
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc6_ && param1)
                                                                     {
                                                                        addr160:
                                                                        if(_loc5_)
                                                                        {
                                                                           addr162:
                                                                           this.§]r§ = null;
                                                                           while(true)
                                                                           {
                                                                              this.§"!F§ = null;
                                                                              break loop10;
                                                                           }
                                                                           return;
                                                                           addr165:
                                                                           addr144:
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                     this.§8A§ |= §-!T§;
                                                                  }
                                                                  if(_loc6_ && _loc3_)
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop12;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  §§goto(addr174);
                                                               }
                                                               break;
                                                            }
                                                            addr43:
                                                            continue loop11;
                                                         }
                                                         continue loop10;
                                                      }
                                                      var _loc3_:b2Body = param1.GetBody();
                                                      var _loc4_:b2Body = param2.GetBody();
                                                      if(!_loc6_)
                                                      {
                                                         addr530:
                                                         §§push(_loc3_.§3r§() != b2Body.b2_dynamicBody || _loc3_.§"#§());
                                                         §§push(_loc3_.§3r§() != b2Body.b2_dynamicBody || _loc3_.§"#§());
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            addr521:
                                                            if(!§§pop())
                                                            {
                                                               addr522:
                                                               §§pop();
                                                               addr523:
                                                               §§push(_loc4_.§3r§());
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(b2Body.b2_dynamicBody);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr443:
                                                                           §§push(!§§pop());
                                                                           if(_loc5_ || param2)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc5_ || param2)
                                                                                    {
                                                                                       addr468:
                                                                                       §§push(§§pop());
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   addr489:
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr494:
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(_loc4_.§"#§());
                                                                                                            if(_loc5_ || param2)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr408:
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr410:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              this.§8A§ |= §%!9§;
                                                                                                                           }
                                                                                                                           addr421:
                                                                                                                        }
                                                                                                                        this.§]r§ = param1;
                                                                                                                        this.§"!F§ = param2;
                                                                                                                        addr392:
                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                        {
                                                                                                                           this.§]0§.§7I§ = 0;
                                                                                                                           this.§4!0§ = null;
                                                                                                                           this.§!J§ = null;
                                                                                                                           addr351:
                                                                                                                           this.§`P§.§#!#§ = null;
                                                                                                                           addr375:
                                                                                                                           addr369:
                                                                                                                           addr364:
                                                                                                                           addr350:
                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr345:
                                                                                                                              this.§`P§.§9§ = null;
                                                                                                                              addr346:
                                                                                                                              §§push(this.§`P§);
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ && param2))
                                                                                                                                 {
                                                                                                                                    addr337:
                                                                                                                                    §§push(null);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       §§pop().§86§ = §§pop();
                                                                                                                                       addr340:
                                                                                                                                       §§push(this.§`P§);
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          §§push(null);
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§pop().§;-§ = §§pop();
                                                                                                                                                addr316:
                                                                                                                                                if(_loc5_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr299:
                                                                                                                                                   this.§%'§.§#!#§ = null;
                                                                                                                                                   addr300:
                                                                                                                                                   addr298:
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr284:
                                                                                                                                                         this.§%'§.§9§ = null;
                                                                                                                                                         addr285:
                                                                                                                                                         addr283:
                                                                                                                                                         if(_loc5_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               addr240:
                                                                                                                                                               §§push(this.§%'§);
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr250:
                                                                                                                                                                     §§push(null);
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().§86§ = §§pop();
                                                                                                                                                                           addr270:
                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§%'§);
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(null);
                                                                                                                                                                                    if(!(_loc6_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().§;-§ = §§pop();
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc5_ || _loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc6_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr523);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      return;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr375);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr369);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr316);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr285);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr270);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr250);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr240);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr375);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr300);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr299);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr284);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr298);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr283);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr421);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr392);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr364);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr346);
                                                                                                                                                }
                                                                                                                                                §§goto(addr340);
                                                                                                                                             }
                                                                                                                                             §§goto(addr351);
                                                                                                                                          }
                                                                                                                                          §§goto(addr337);
                                                                                                                                       }
                                                                                                                                       §§goto(addr346);
                                                                                                                                    }
                                                                                                                                    §§goto(addr345);
                                                                                                                                 }
                                                                                                                                 §§goto(addr350);
                                                                                                                              }
                                                                                                                              addr344:
                                                                                                                              §§goto(addr344);
                                                                                                                              addr359:
                                                                                                                           }
                                                                                                                           §§goto(addr392);
                                                                                                                        }
                                                                                                                        §§goto(addr494);
                                                                                                                     }
                                                                                                                     §§goto(addr530);
                                                                                                                  }
                                                                                                                  §§goto(addr443);
                                                                                                               }
                                                                                                               §§goto(addr489);
                                                                                                            }
                                                                                                            §§goto(addr408);
                                                                                                         }
                                                                                                         §§goto(addr536);
                                                                                                      }
                                                                                                      §§goto(addr510);
                                                                                                   }
                                                                                                   §§goto(addr530);
                                                                                                }
                                                                                                §§goto(addr410);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr530);
                                                                                       }
                                                                                       §§goto(addr521);
                                                                                       addr467:
                                                                                    }
                                                                                    §§goto(addr489);
                                                                                 }
                                                                              }
                                                                              §§goto(addr530);
                                                                           }
                                                                           §§goto(addr522);
                                                                        }
                                                                        §§goto(addr535);
                                                                     }
                                                                     §§goto(addr468);
                                                                  }
                                                               }
                                                               §§goto(addr530);
                                                            }
                                                            §§goto(addr467);
                                                         }
                                                         §§goto(addr530);
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                   addr131:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr43);
                                                }
                                                §§goto(addr67);
                                             }
                                             §§goto(addr148);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr96);
                                    }
                                    if(_loc6_)
                                    {
                                       §§goto(addr165);
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr160);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      b2internal function §&7§(param1:b2ContactListener) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:* = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:* = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§7!3§;
         if(_loc17_)
         {
            this.§7!3§ = this.§]0§;
            loop0:
            while(true)
            {
               addr60:
               while(true)
               {
                  this.§]0§ = _loc2_;
                  addr64:
                  while(_loc17_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§8A§ |= §=S§;
            if(_loc17_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr60);
            }
            §§goto(addr64);
         }
         §§push(false);
         if(_loc17_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push((this.§8A§ & §5q§) == §5q§);
         if(_loc17_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:b2Body = this.§]r§.m_body;
         var _loc6_:b2Body = this.§"!F§.m_body;
         §§push(this.§]r§.§,L§.§>!N§(this.§"!F§.§,L§));
         if(!_loc18_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc17_ || _loc3_)
         {
            §§push(this.§8A§);
            if(!_loc18_)
            {
               §§push(§-!T§);
               if(!(_loc18_ && this))
               {
                  §§push(§§pop() & §§pop());
                  if(_loc17_ || param1)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc17_ || param1)
                     {
                        if(§§pop())
                        {
                           if(!(_loc18_ && param1))
                           {
                              §§push(_loc7_);
                              if(!_loc18_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc18_ && _loc2_))
                                    {
                                       _loc8_ = this.§]r§.GetShape();
                                       _loc9_ = this.§"!F§.GetShape();
                                       _loc10_ = _loc5_.§?Q§();
                                       _loc11_ = _loc6_.§?Q§();
                                       if(!(_loc18_ && _loc3_))
                                       {
                                          §§push(b2Shape.§>!N§(_loc8_,_loc10_,_loc9_,_loc11_));
                                          if(!(_loc18_ && _loc3_))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                          addr216:
                                          §§push(this.§]0§);
                                          if(_loc17_ || _loc3_)
                                          {
                                             §§pop().§7I§ = 0;
                                             if(_loc17_)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         this.§8A§ &= ~§5q§;
                                                         loop10:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(_loc17_)
                                                               {
                                                                  §§push(false);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     addr784:
                                                                     if(_loc18_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop31:
                                                                        while(_loc17_ || param1)
                                                                        {
                                                                           §§pop();
                                                                           loop32:
                                                                           while(_loc17_)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc17_ || _loc3_)
                                                                              {
                                                                                 §§push(false);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                continue loop31;
                                                                                             }
                                                                                             addr707:
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc17_)
                                                                                             {
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   addr711:
                                                                                                   if(!(_loc18_ && this))
                                                                                                   {
                                                                                                      if(!(_loc17_ || param1))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            addr837:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  loop16:
                                                                                                                  while(!(_loc18_ && param1))
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        loop17:
                                                                                                                        while(_loc17_ || this)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           while(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              while(_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(true);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    addr809:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc17_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          break loop31;
                                                                                                                                       }
                                                                                                                                       addr898:
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       break loop16;
                                                                                                                                    }
                                                                                                                                    addr775:
                                                                                                                                    continue loop8;
                                                                                                                                    addr775:
                                                                                                                                    while(_loc17_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       §§goto(addr784);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr711);
                                                                                                                              }
                                                                                                                              continue loop17;
                                                                                                                              for(; _loc17_ || _loc3_; if(_loc18_ && this)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              },param1.PreSolve(this,this.§7!3§),§§goto(addr675))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§8A§ & §-!T§);
                                                                                                                                    §§goto(addr658);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           _loc5_.SetAwake(true);
                                                                                                                           break loop32;
                                                                                                                        }
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              param1.BeginContact(this);
                                                                                                                           }
                                                                                                                           §§goto(addr827);
                                                                                                                        }
                                                                                                                        §§goto(addr757);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(§§pop() == §§pop())
                                                                                                                  {
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  §§goto(addr900);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr836:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            §§goto(addr749);
                                                                                                         }
                                                                                                         §§goto(addr652);
                                                                                                      }
                                                                                                      continue loop10;
                                                                                                      addr725:
                                                                                                   }
                                                                                                   §§goto(addr805);
                                                                                                }
                                                                                                §§goto(addr759);
                                                                                             }
                                                                                             §§goto(addr771);
                                                                                          }
                                                                                          §§goto(addr707);
                                                                                       }
                                                                                       §§goto(addr760);
                                                                                    }
                                                                                    §§goto(addr772);
                                                                                 }
                                                                                 §§goto(addr775);
                                                                              }
                                                                              §§goto(addr707);
                                                                           }
                                                                           _loc6_.SetAwake(true);
                                                                           continue loop8;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              §§goto(addr819);
                                                                           }
                                                                           break;
                                                                           §§goto(addr792);
                                                                        }
                                                                        addr792:
                                                                        §§goto(addr837);
                                                                     }
                                                                     §§goto(addr725);
                                                                  }
                                                               }
                                                               §§goto(addr836);
                                                            }
                                                         }
                                                      }
                                                      addr883:
                                                      while(true)
                                                      {
                                                         this.§8A§ |= §5q§;
                                                         §§goto(addr890);
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                loop61:
                                                while(true)
                                                {
                                                   if(false)
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(this.§]0§);
                                                         addr260:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§7I§);
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > 0);
                                                               if(!(_loc18_ && _loc2_))
                                                               {
                                                                  if(_loc17_ || this)
                                                                  {
                                                                     addr278:
                                                                     _loc3_ = Boolean(§§pop());
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        if(_loc17_ || _loc2_)
                                                                        {
                                                                           if(_loc17_ || param1)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           §§push(_loc5_.§"#§());
                                                                           loop54:
                                                                           while(true)
                                                                           {
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop55:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          loop56:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr456:
                                                                                             addr471:
                                                                                             loop49:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc17_ || _loc2_)
                                                                                                      {
                                                                                                         break loop49;
                                                                                                      }
                                                                                                      loop50:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            continue loop56;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            §§goto(addr487);
                                                                                                         }
                                                                                                         addr484:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop50;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop56;
                                                                                                   }
                                                                                                   addr464:
                                                                                                }
                                                                                                §§goto(addr484);
                                                                                                continue loop56;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                addr472:
                                                                                                §§pop();
                                                                                                loop45:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_.§3r§());
                                                                                                   if(_loc17_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(b2Body.b2_dynamicBody);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         loop46:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  loop47:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop48:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc17_ || this)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                        }
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 loop67:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr380:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             this.§8A§ |= §%!9§;
                                                                                                                                             addr390:
                                                                                                                                             loop71:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   addr296:
                                                                                                                                                   loop43:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_ && this)
                                                                                                                                                      {
                                                                                                                                                         continue loop46;
                                                                                                                                                      }
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  break loop7;
                                                                                                                                                               }
                                                                                                                                                               addr315:
                                                                                                                                                               if(_loc17_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc17_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     this.Evaluate();
                                                                                                                                                                     break loop7;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop71;
                                                                                                                                                               }
                                                                                                                                                               addr351:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc17_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop43;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop45;
                                                                                                                                                                  §§goto(addr315);
                                                                                                                                                               }
                                                                                                                                                               continue loop45;
                                                                                                                                                            }
                                                                                                                                                            addr638:
                                                                                                                                                            this.§]0§.§7I§ = 0;
                                                                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               addr897:
                                                                                                                                                               §§goto(addr898);
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr883);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr428:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  break loop47;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop54;
                                                                                                                                                               }
                                                                                                                                                               §§pop();
                                                                                                                                                               §§push(_loc6_.§"#§());
                                                                                                                                                            }
                                                                                                                                                            addr428:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      if(_loc18_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop48;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         continue loop55;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         continue loop46;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop46;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr390:
                                                                                                                                          }
                                                                                                                                          §§goto(addr390);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          this.§8A§ &= ~§%!9§;
                                                                                                                                       }
                                                                                                                                       §§goto(addr351);
                                                                                                                                       continue loop67;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr379:
                                                                                                                              }
                                                                                                                              §§goto(addr428);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr456);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr464);
                                                                                                                     §§goto(addr471);
                                                                                                                  }
                                                                                                                  continue loop45;
                                                                                                                  addr413:
                                                                                                               }
                                                                                                               §§goto(addr486);
                                                                                                            }
                                                                                                            §§goto(addr428);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr480:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            addr481:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               addr482:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  addr483:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr480:
                                                                                                      }
                                                                                                      §§goto(addr484);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr477:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr480);
                                                                                                      }
                                                                                                      addr477:
                                                                                                   }
                                                                                                   §§goto(addr480);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr413);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr481);
                                                                                    }
                                                                                    §§goto(addr482);
                                                                                 }
                                                                              }
                                                                              §§goto(addr483);
                                                                           }
                                                                           addr487:
                                                                        }
                                                                        break;
                                                                        addr247:
                                                                        while(true)
                                                                        {
                                                                           _loc12_ = §§pop();
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              continue loop61;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                     while(_loc17_ || this)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                     }
                                                                     §§goto(addr433);
                                                                  }
                                                                  §§goto(addr296);
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      loop62:
                                                      while(true)
                                                      {
                                                         §§push(_loc12_);
                                                         if(!(_loc18_ && param1))
                                                         {
                                                            §§push(this.§]0§.§7I§);
                                                            if(_loc17_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(_loc17_ || _loc2_)
                                                                  {
                                                                     §§goto(addr897);
                                                                  }
                                                                  §§goto(addr802);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§]0§);
                                                                  if(_loc17_ || _loc3_)
                                                                  {
                                                                     _loc13_ = §§pop().§ 2§[_loc12_];
                                                                     if(_loc17_)
                                                                     {
                                                                        _loc13_.§8!L§ = 0;
                                                                        if(_loc17_)
                                                                        {
                                                                           _loc13_.§-!V§ = 0;
                                                                        }
                                                                     }
                                                                     _loc14_ = _loc13_.m_id;
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(_loc17_)
                                                                           {
                                                                              addr526:
                                                                              _loc15_ = §§pop();
                                                                              if(!_loc18_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc15_);
                                                                                 }
                                                                                 addr591:
                                                                              }
                                                                              addr596:
                                                                              §§push(_loc12_);
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 addr613:
                                                                                 §§push(§§pop() + 1);
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    addr612:
                                                                                    §§push(int(§§pop()));
                                                                                 }
                                                                                 _loc12_ = §§pop();
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr612);
                                                                           }
                                                                           for(; §§pop() < this.§7!3§.§7I§; §§goto(addr591))
                                                                           {
                                                                              _loc16_ = this.§7!3§.§ 2§[_loc15_];
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 if(_loc16_.m_id.key != _loc14_.key)
                                                                                 {
                                                                                    §§push(_loc15_);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             _loc15_ = §§pop();
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                continue loop62;
                                                                                             }
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                if(_loc17_ || _loc3_)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr586:
                                                                                                   _loc13_.§8!L§ = _loc16_.§8!L§;
                                                                                                   addr590:
                                                                                                }
                                                                                                _loc13_.§-!V§ = _loc16_.§-!V§;
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop62;
                                                                                             }
                                                                                             §§goto(addr590);
                                                                                          }
                                                                                          §§goto(addr613);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr612);
                                                                                 }
                                                                              }
                                                                              §§goto(addr586);
                                                                           }
                                                                           §§goto(addr596);
                                                                        }
                                                                     }
                                                                     §§goto(addr526);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr638);
                                                                  }
                                                               }
                                                               §§goto(addr883);
                                                            }
                                                            §§goto(addr659);
                                                         }
                                                         break loop61;
                                                      }
                                                   }
                                                   §§goto(addr800);
                                                }
                                                addr255:
                                             }
                                             addr658:
                                             while(§§pop() == 0)
                                             {
                                                if(_loc17_)
                                                {
                                                   continue loop34;
                                                }
                                                addr675:
                                                if(!_loc17_)
                                                {
                                                   continue loop32;
                                                }
                                                addr677:
                                                if(!(_loc18_ && param1))
                                                {
                                                   break;
                                                }
                                                addr890:
                                                addr827:
                                                while(_loc17_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      addr759:
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         addr760:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc18_)
                                                            {
                                                               if(!(_loc18_ && param1))
                                                               {
                                                                  addr771:
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr772:
                                                                     while(_loc17_)
                                                                     {
                                                                        §§goto(addr775);
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  addr771:
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr771);
                                                         }
                                                         §§goto(addr809);
                                                      }
                                                   }
                                                   §§goto(addr677);
                                                }
                                                while(true)
                                                {
                                                   continue loop11;
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr260);
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr339);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr380);
                           }
                           §§goto(addr255);
                        }
                        else
                        {
                           §§goto(addr477);
                           §§push(_loc5_.§3r§());
                        }
                        §§goto(addr477);
                     }
                     §§goto(addr371);
                  }
                  §§goto(addr247);
               }
               §§goto(addr480);
            }
            §§goto(addr477);
         }
         §§goto(addr390);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §+N§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§7!E§);
            while(true)
            {
               §§pop().§1&§.Set(this.§]r§.GetShape());
               while(true)
               {
                  §§push(§7!E§);
                  loop2:
                  while(true)
                  {
                     §§pop().§5!f§.Set(this.§"!F§.GetShape());
                     addr118:
                     while(true)
                     {
                        §§push(§7!E§);
                        continue loop2;
                     }
                  }
               }
               addr33:
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
               addr40:
               §§pop().§8!K§ = b2Settings.b2_linearSlop;
               loop8:
               for(; !(_loc4_ && param1); §§goto(addr40))
               {
                  addr83:
                  §§push(§7!E§);
                  if(!_loc4_)
                  {
                     §§goto(addr33);
                  }
                  else
                  {
                     while(!_loc4_)
                     {
                        §§pop().§^q§ = param2;
                        continue loop8;
                        §§goto(addr83);
                     }
                     §§goto(addr87);
                     addr72:
                  }
               }
               if(_loc3_ || this)
               {
                  §§goto(addr61);
               }
               §§goto(addr118);
            }
         }
         while(true)
         {
            §§goto(addr72);
         }
         §§goto(addr68);
      }
   }
}
