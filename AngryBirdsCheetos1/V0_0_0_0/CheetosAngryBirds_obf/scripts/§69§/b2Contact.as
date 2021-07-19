package §69§
{
   import § G§.b2ContactID;
   import § G§.b2Manifold;
   import § G§.b2ManifoldPoint;
   import § G§.b2TOIInput;
   import § G§.b2TimeOfImpact;
   import § G§.b2WorldManifold;
   import §&!"§.b2Body;
   import §&!"§.b2ContactListener;
   import §&!"§.b2Fixture;
   import §-!C§.b2Shape;
   import §9"§.b2Sweep;
   import §9"§.b2Transform;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §4!$§:uint = 1;
      
      b2internal static var §<?§:uint = 2;
      
      b2internal static var §"!X§:uint = 4;
      
      b2internal static var §0N§:uint = 8;
      
      b2internal static var §%!J§:uint = 16;
      
      b2internal static var §5A§:uint = 32;
      
      b2internal static var §62§:uint = 64;
      
      private static var §-u§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §4!$§ = 1;
            loop0:
            while(true)
            {
               §<?§ = 2;
               addr113:
               while(true)
               {
                  §"!X§ = 4;
                  addr108:
                  while(true)
                  {
                     §0N§ = 8;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      b2internal var §?z§:uint;
      
      b2internal var §3U§:b2Contact;
      
      b2internal var §0]§:b2Contact;
      
      b2internal var § !D§:b2ContactEdge;
      
      b2internal var §@s§:b2ContactEdge;
      
      b2internal var §<D§:b2Fixture;
      
      b2internal var §+p§:b2Fixture;
      
      b2internal var §'&§:b2Manifold;
      
      b2internal var §2!M§:b2Manifold;
      
      b2internal var §3!8§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§ !D§ = new b2ContactEdge();
            while(true)
            {
               this.§@s§ = new b2ContactEdge();
               loop1:
               while(true)
               {
                  this.§'&§ = new b2Manifold();
                  while(true)
                  {
                     this.§2!M§ = new b2Manifold();
                     loop3:
                     while(!(_loc1_ && this))
                     {
                        while(true)
                        {
                           super();
                           if(_loc2_ || _loc2_)
                           {
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §7!B§() : b2Manifold
      {
         return this.§'&§;
      }
      
      public function §;=§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = this.§<D§.GetBody();
         var _loc3_:b2Body = this.§+p§.GetBody();
         var _loc4_:b2Shape = this.§<D§.GetShape();
         var _loc5_:b2Shape = this.§+p§.GetShape();
         if(_loc6_ || _loc2_)
         {
            param1.§1D§(this.§'&§,_loc2_.§>B§(),_loc4_.§=!W§,_loc3_.§>B§(),_loc5_.§=!W§);
         }
      }
      
      public function § !I§() : Boolean
      {
         return (this.§?z§ & b2internal::%!J) == b2internal::%!J;
      }
      
      public function §[!X§() : Boolean
      {
         return (this.§?z§ & b2internal::<?) == b2internal::<?;
      }
      
      public function §4!N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§?z§ &= ~b2internal::4!$;
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc2_ && this)
                  {
                     addr71:
                     this.§?z§ |= b2internal::4!$;
                     addr77:
                  }
                  else
                  {
                     addr58:
                  }
                  return;
               }
               §§goto(addr77);
            }
            §§goto(addr71);
         }
         §§goto(addr58);
      }
      
      public function §2'§() : Boolean
      {
         return (this.§?z§ & b2internal::4!$) == b2internal::4!$;
      }
      
      public function §^3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(!param1)
            {
               this.§?z§ &= ~b2internal::5A;
               if(!(_loc3_ && _loc2_))
               {
                  addr55:
               }
               else
               {
                  addr81:
               }
               return;
            }
            if(_loc2_ || _loc3_)
            {
               this.§?z§ |= b2internal::5A;
            }
            §§goto(addr81);
         }
         §§goto(addr55);
      }
      
      public function §!C§() : Boolean
      {
         return (this.§?z§ & b2internal::5A) == b2internal::5A;
      }
      
      public function §`!R§() : b2Contact
      {
         return this.§0]§;
      }
      
      public function §"&§() : b2Fixture
      {
         return this.§<D§;
      }
      
      public function §7!Z§() : b2Fixture
      {
         return this.§+p§;
      }
      
      public function §>!A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?z§ |= b2internal::62;
         }
      }
      
      b2internal function §"o§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§?z§ = b2internal::5A;
            while(true)
            {
               §§push(!param1);
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr151:
                           while(true)
                           {
                              §§push(!param2);
                           }
                        }
                        addr150:
                     }
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr134:
                              this.§<D§ = null;
                              while(!(_loc5_ || this))
                              {
                                 §§goto(addr151);
                              }
                              addr137:
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(param1.§2'§());
                                 continue loop6;
                              }
                              addr91:
                           }
                        }
                     }
                  }
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  §§goto(addr55);
               }
            }
         }
         while(true)
         {
            this.§+p§ = null;
            §§goto(addr121);
            §§goto(addr134);
         }
      }
      
      b2internal function §8!C§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§2!M§;
         if(!_loc17_)
         {
            this.§2!M§ = this.§'&§;
            loop0:
            while(true)
            {
               addr60:
               while(true)
               {
                  this.§'&§ = _loc2_;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§?z§ |= b2internal::5A;
            if(!_loc17_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr60);
            }
            §§goto(addr64);
         }
         var _loc3_:* = false;
         var _loc4_:* = (this.§?z§ & b2internal::%!J) == b2internal::%!J;
         var _loc5_:b2Body = this.§<D§.m_body;
         var _loc6_:b2Body = this.§+p§.m_body;
         §§push(this.§<D§.§-!B§.§;!4§(this.§+p§.§-!B§));
         if(_loc18_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc18_ || this)
         {
            §§push(this.§?z§);
            if(_loc18_)
            {
               §§push(b2internal::4!$);
               if(!(_loc17_ && param1))
               {
                  §§push(§§pop() & §§pop());
                  if(!_loc17_)
                  {
                     if(§§pop())
                     {
                        if(_loc18_)
                        {
                           §§push(_loc7_);
                           if(_loc18_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc17_ && param1))
                                 {
                                    _loc8_ = this.§<D§.GetShape();
                                    _loc9_ = this.§+p§.GetShape();
                                    _loc10_ = _loc5_.§>B§();
                                    _loc11_ = _loc6_.§>B§();
                                    if(_loc18_ || _loc3_)
                                    {
                                       §§push(b2Shape.§;!4§(_loc8_,_loc10_,_loc9_,_loc11_));
                                       if(_loc18_ || param1)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       addr183:
                                       §§push(this.§'&§);
                                       if(!(_loc17_ && _loc3_))
                                       {
                                          §§pop().§in § = 0;
                                          if(!_loc17_)
                                          {
                                             loop22:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop23:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§?z§ &= ~b2internal::%!J;
                                                      loop24:
                                                      while(true)
                                                      {
                                                         loop25:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            loop26:
                                                            while(!_loc17_)
                                                            {
                                                               §§push(false);
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 loop31:
                                                                                 while(_loc18_)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             continue loop29;
                                                                                          }
                                                                                          if(!(_loc17_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(_loc18_)
                                                                                                      {
                                                                                                         param1.BeginContact(this);
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr770:
                                                                                                      _loc5_.SetAwake(true);
                                                                                                      addr773:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc6_.SetAwake(true);
                                                                                                         addr766:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            break loop33;
                                                                                                         }
                                                                                                      }
                                                                                                      addr773:
                                                                                                      addr704:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      loop39:
                                                                                                      for(; _loc18_ || param1; if(!(_loc18_ || _loc3_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      },§§goto(addr630))
                                                                                                      {
                                                                                                         §§push(true);
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            if(!(_loc18_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop33;
                                                                                                            }
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               addr584:
                                                                                                               if(_loc18_ || this)
                                                                                                               {
                                                                                                                  continue loop35;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop45:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc18_ || param1))
                                                                                                                        {
                                                                                                                           loop43:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    addr616:
                                                                                                                                    if(_loc18_ || this)
                                                                                                                                    {
                                                                                                                                       continue loop39;
                                                                                                                                    }
                                                                                                                                    addr676:
                                                                                                                                    while(!_loc17_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       continue loop43;
                                                                                                                                    }
                                                                                                                                    continue loop28;
                                                                                                                                 }
                                                                                                                                 §§goto(addr584);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop31;
                                                                                                                        }
                                                                                                                        if(!(_loc17_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr646:
                                                                                                                           param1.EndContact(this);
                                                                                                                           loop46:
                                                                                                                           while(_loc18_)
                                                                                                                           {
                                                                                                                              loop47:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§?z§ & b2internal::4!$);
                                                                                                                                 addr552:
                                                                                                                                 while(§§pop() == 0)
                                                                                                                                 {
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          continue loop46;
                                                                                                                                       }
                                                                                                                                       param1.PreSolve(this,this.§2!M§);
                                                                                                                                    }
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       continue loop45;
                                                                                                                                    }
                                                                                                                                    if(!(_loc17_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!(_loc17_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          break loop47;
                                                                                                                                       }
                                                                                                                                       §§goto(addr773);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          this.§?z§ |= b2internal::%!J;
                                                                                                                                          break loop46;
                                                                                                                                       }
                                                                                                                                       addr738:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           while(!(_loc17_ && _loc2_))
                                                                                                                           {
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                           §§goto(addr766);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr704);
                                                                                                                        }
                                                                                                                        §§goto(addr709);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr547);
                                                                                                               }
                                                                                                               addr630:
                                                                                                            }
                                                                                                            §§goto(addr676);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr702:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr769:
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr770);
                                                                                       }
                                                                                       continue loop22;
                                                                                    }
                                                                                 }
                                                                                 continue loop24;
                                                                              }
                                                                           }
                                                                           §§goto(addr702);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr768:
                                                                        §§push(_loc4_);
                                                                     }
                                                                     §§goto(addr769);
                                                                  }
                                                               }
                                                            }
                                                            continue loop23;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr738);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             loop21:
                                             while(true)
                                             {
                                                §§push(_loc5_.§&_§());
                                                addr397:
                                                loop54:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop17:
                                                   while(true)
                                                   {
                                                      addr399:
                                                      addr400:
                                                      §§push(§§pop());
                                                      loop18:
                                                      while(!§§pop())
                                                      {
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr402:
                                                            while(true)
                                                            {
                                                               §§push(_loc6_.§0!$§());
                                                               if(!(_loc17_ && _loc3_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(b2Body.b2_dynamicBody);
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        while(true)
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           if(!(_loc18_ || _loc3_))
                                                                           {
                                                                              continue loop54;
                                                                           }
                                                                           §§push(!§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc17_ && _loc3_))
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr351:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr408:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                        }
                                                                        addr408:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        addr410:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           addr411:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr412:
                                                                                 §§pop();
                                                                                 continue loop21;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr346:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr408);
                                                                  }
                                                                  addr406:
                                                               }
                                                               §§goto(addr408);
                                                               continue loop19;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc18_ || _loc3_)
                                                         {
                                                            if(!_loc17_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop14:
                                                                  while(_loc18_)
                                                                  {
                                                                     §§pop();
                                                                     loop55:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_.§&_§());
                                                                        loop56:
                                                                        while(true)
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           addr310:
                                                                           §§push(Boolean(§§pop()));
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              if(_loc18_ || _loc2_)
                                                                              {
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       this.§?z§ &= ~b2internal::<?;
                                                                                       loop66:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc17_ && this))
                                                                                          {
                                                                                             break loop10;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc17_ && _loc2_)
                                                                                             {
                                                                                                continue loop55;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc18_ || param1))
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   if(_loc17_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop56;
                                                                                                   }
                                                                                                   if(_loc18_ || this)
                                                                                                   {
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         if(_loc18_ || param1)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  this.Evaluate();
                                                                                                               }
                                                                                                               loop7:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§'&§);
                                                                                                                     addr221:
                                                                                                                     loop53:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().§in §);
                                                                                                                        addr222:
                                                                                                                        loop58:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > 0);
                                                                                                                           if(!(_loc17_ && this))
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                           addr248:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 addr201:
                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                 if(!(_loc17_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc18_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          addr509:
                                                                                                                                          §§push(_loc12_);
                                                                                                                                       }
                                                                                                                                       continue loop53;
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§'&§.§in §);
                                                                                                                                          if(!(_loc17_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(§§pop() < §§pop())
                                                                                                                                             {
                                                                                                                                                §§push(this.§'&§);
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   (_loc13_ = §§pop().§+!S§[_loc12_]).§+7§ = 0;
                                                                                                                                                   if(!_loc17_)
                                                                                                                                                   {
                                                                                                                                                      _loc13_.§?!M§ = 0;
                                                                                                                                                   }
                                                                                                                                                   _loc14_ = _loc13_.m_id;
                                                                                                                                                   if(!(_loc17_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(!(_loc17_ && this))
                                                                                                                                                      {
                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                         if(_loc18_ || param1)
                                                                                                                                                         {
                                                                                                                                                            addr503:
                                                                                                                                                            addr504:
                                                                                                                                                            if(_loc15_ >= this.§2!M§.§in §)
                                                                                                                                                            {
                                                                                                                                                               addr508:
                                                                                                                                                               _loc12_++;
                                                                                                                                                               §§goto(addr509);
                                                                                                                                                            }
                                                                                                                                                            if((_loc16_ = this.§2!M§.§+!S§[_loc15_]).m_id.key == _loc14_.key)
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  _loc13_.§+7§ = _loc16_.§+7§;
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc13_.§?!M§ = _loc16_.§?!M§;
                                                                                                                                                                     if(_loc18_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr508);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr509);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr503);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr509);
                                                                                                                                                            }
                                                                                                                                                            _loc15_++;
                                                                                                                                                            if(_loc18_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr503);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr509);
                                                                                                                                                            addr460:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr508);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr504);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr460);
                                                                                                                                                }
                                                                                                                                                addr533:
                                                                                                                                                §§pop().§in § = 0;
                                                                                                                                                if(!(_loc17_ && this))
                                                                                                                                                {
                                                                                                                                                   addr767:
                                                                                                                                                   §§goto(addr768);
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                }
                                                                                                                                                §§goto(addr770);
                                                                                                                                             }
                                                                                                                                             if(_loc18_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr767);
                                                                                                                                             }
                                                                                                                                             §§goto(addr646);
                                                                                                                                          }
                                                                                                                                          §§goto(addr553);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop66;
                                                                                                                                 }
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                              continue loop58;
                                                                                                                           }
                                                                                                                           §§goto(addr552);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this.§'&§);
                                                                                                            }
                                                                                                            §§goto(addr533);
                                                                                                         }
                                                                                                         §§goto(addr412);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr399);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr297:
                                                                                    }
                                                                                    §§goto(addr320);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr249);
                                                                                    §§goto(addr297);
                                                                                 }
                                                                                 addr318:
                                                                                 addr304:
                                                                              }
                                                                              §§goto(addr361);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr410);
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                            §§goto(addr411);
                                                         }
                                                         §§goto(addr400);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr770);
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr304);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr397);
                        }
                        §§goto(addr393);
                     }
                     else
                     {
                        §§push(_loc5_.§0!$§());
                     }
                     §§goto(addr406);
                  }
                  §§goto(addr222);
               }
               §§goto(addr408);
            }
            §§goto(addr346);
         }
         §§goto(addr248);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §,"§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§-u§);
            while(true)
            {
               §§pop().§;!?§.Set(this.§<D§.GetShape());
               addr123:
               addr75:
               while(true)
               {
                  §§push(§-u§);
                  addr101:
                  while(true)
                  {
                     §§pop().§&z§.Set(this.§+p§.GetShape());
                  }
               }
               if(_loc3_ && param1)
               {
                  continue;
               }
               §§pop().§^Y§ = param2;
               while(true)
               {
                  §§push(§-u§);
                  if(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr101);
                  }
                  break;
               }
               while(!(_loc3_ && param1))
               {
                  §§goto(addr75);
                  §§goto(addr84);
               }
               addr84:
               §§goto(addr87);
            }
         }
         §§goto(addr116);
      }
   }
}
