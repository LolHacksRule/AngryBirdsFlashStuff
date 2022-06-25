package §break§
{
   import §2!+§.b2Shape;
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §72§.b2ContactID;
   import §72§.b2Manifold;
   import §72§.b2ManifoldPoint;
   import §72§.b2TOIInput;
   import §72§.b2TimeOfImpact;
   import §72§.b2WorldManifold;
   import §>H§.b2Sweep;
   import §>H§.b2Transform;
   import §`w§.b2Body;
   import §`w§.b2ContactListener;
   import §`w§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §7!a§:uint = 1;
      
      b2internal static var §?!P§:uint = 2;
      
      b2internal static var §#!`§:uint = 4;
      
      b2internal static var §;,§:uint = 8;
      
      b2internal static var §^B§:uint = 16;
      
      b2internal static var §&$§:uint = 32;
      
      b2internal static var §8,§:uint = 64;
      
      private static var §1B§:b2TOIInput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7!a§ = 1;
            loop0:
            while(true)
            {
               §?!P§ = 2;
               while(true)
               {
                  §#!`§ = 4;
                  continue loop0;
                  loop4:
                  for(; _loc1_ || _loc2_; if(!(_loc1_ || b2Contact))
                  {
                     continue;
                  },if(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        return;
                     }
                     continue loop0;
                  },addr95:,while(true)
                  {
                     §^B§ = 16;
                     continue loop4;
                  })
                  {
                     §&$§ = 32;
                     while(true)
                     {
                        §8,§ = 64;
                        while(!(_loc2_ && _loc1_))
                        {
                           §1B§ = new b2TOIInput();
                           if(_loc1_)
                           {
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      b2internal var §;!R§:uint;
      
      b2internal var §-!I§:b2Contact;
      
      b2internal var §3=§:b2Contact;
      
      b2internal var §6X§:b2ContactEdge;
      
      b2internal var §#!T§:b2ContactEdge;
      
      b2internal var §50§:b2Fixture;
      
      b2internal var §'z§:b2Fixture;
      
      b2internal var §"!m§:b2Manifold;
      
      b2internal var §07§:b2Manifold;
      
      b2internal var §7!W§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§6X§ = new b2ContactEdge();
            while(true)
            {
               this.§#!T§ = new b2ContactEdge();
            }
            addr82:
         }
         loop1:
         do
         {
            this.§"!m§ = new b2Manifold();
            while(true)
            {
               this.§07§ = new b2Manifold();
               for(; _loc1_; super(),if(!_loc2_)
               {
                  continue loop1;
               })
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr82);
               }
            }
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §=!0§() : b2Manifold
      {
         return this.§"!m§;
      }
      
      public function §0n§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§50§.GetBody();
         var _loc3_:b2Body = this.§'z§.GetBody();
         var _loc4_:b2Shape = this.§50§.GetShape();
         var _loc5_:b2Shape = this.§'z§.GetShape();
         if(_loc7_)
         {
            param1.§%%§(this.§"!m§,_loc2_.§2!0§(),_loc4_.§9!A§,_loc3_.§2!0§(),_loc5_.§9!A§);
         }
      }
      
      public function §!u§() : Boolean
      {
         return (this.§;!R§ & b2internal::^B) == b2internal::^B;
      }
      
      public function §else§() : Boolean
      {
         return (this.§;!R§ & b2internal::?!P) == b2internal::?!P;
      }
      
      public function §[!G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!param1)
            {
               this.§;!R§ &= ~b2internal::7!a;
               if(!(_loc2_ || this))
               {
                  addr76:
               }
               return;
            }
            if(!_loc3_)
            {
               addr70:
               this.§;!R§ |= b2internal::7!a;
            }
            §§goto(addr76);
         }
         §§goto(addr70);
      }
      
      public function §2r§() : Boolean
      {
         return (this.§;!R§ & b2internal::7!a) == b2internal::7!a;
      }
      
      public function §8K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§;!R§ &= ~b2internal::&$;
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     addr66:
                     this.§;!R§ |= b2internal::&$;
                     addr72:
                  }
                  return;
               }
               §§goto(addr72);
            }
         }
         §§goto(addr66);
      }
      
      public function §&Y§() : Boolean
      {
         return (this.§;!R§ & b2internal::&$) == b2internal::&$;
      }
      
      public function §+!N§() : b2Contact
      {
         return this.§3=§;
      }
      
      public function §?!l§() : b2Fixture
      {
         return this.§50§;
      }
      
      public function §0+§() : b2Fixture
      {
         return this.§'z§;
      }
      
      public function §=!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§;!R§ |= b2internal::8,;
         }
      }
      
      b2internal function §<!e§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.§;!R§ = b2internal::&$;
            loop0:
            while(true)
            {
               §§push(!param1);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(!param2);
                              loop5:
                              while(_loc6_)
                              {
                                 loop12:
                                 while(true)
                                 {
                                    if(!(_loc6_ || param2))
                                    {
                                       continue loop5;
                                    }
                                    if(_loc5_ && param1)
                                    {
                                       continue loop3;
                                    }
                                    addr99:
                                    loop11:
                                    for(; !_loc5_; §§goto(addr99))
                                    {
                                       if(_loc5_)
                                       {
                                          addr127:
                                          this.§50§ = null;
                                          while(true)
                                          {
                                             this.§'z§ = null;
                                             break loop11;
                                          }
                                          return;
                                          addr130:
                                          addr119:
                                       }
                                       §§push(param2.§2r§());
                                       if(!_loc5_)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             addr37:
                                             if(!(_loc5_ && param2))
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop9:
                                                while(true)
                                                {
                                                   addr46:
                                                   while(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc6_ || param2))
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            this.§;!R§ |= b2internal::7!a;
                                                            addr64:
                                                            if(!_loc6_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(param1.§2r§());
                                                            break loop9;
                                                         }
                                                      }
                                                      §§goto(addr64);
                                                   }
                                                   var _loc3_:b2Body = param1.GetBody();
                                                   var _loc4_:b2Body = param2.GetBody();
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      addr506:
                                                      §§push(_loc3_.§2!r§() != b2Body.b2_dynamicBody);
                                                      if(!(_loc3_.§2!r§() != b2Body.b2_dynamicBody))
                                                      {
                                                         addr509:
                                                         §§pop();
                                                         addr510:
                                                         §§push(_loc3_.§<!l§());
                                                         if(!_loc5_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               addr496:
                                                               §§push(§§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     addr499:
                                                                     §§pop();
                                                                     addr500:
                                                                     §§push(_loc4_.§2!r§());
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        §§push(b2Body.b2_dynamicBody);
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr451:
                                                                           §§push(§§pop() == §§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              addr450:
                                                                              §§push(!§§pop());
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr455:
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    if(_loc6_ || param2)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr480:
                                                                                       §§push(_loc4_.§<!l§());
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr416:
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!(_loc5_ && param2))
                                                                                                   {
                                                                                                      addr423:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr425:
                                                                                                         this.§;!R§ |= b2internal::?!P;
                                                                                                      }
                                                                                                      this.§50§ = param1;
                                                                                                      this.§'z§ = param2;
                                                                                                      this.§"!m§.§63§ = 0;
                                                                                                      addr381:
                                                                                                      addr393:
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         this.§-!I§ = null;
                                                                                                         addr368:
                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                         {
                                                                                                            this.§3=§ = null;
                                                                                                            addr357:
                                                                                                            this.§6X§.§+2§ = null;
                                                                                                            addr339:
                                                                                                            addr363:
                                                                                                            addr358:
                                                                                                            §§push(this.§6X§);
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               addr342:
                                                                                                               §§push(null);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§pop().§;+§ = §§pop();
                                                                                                                  addr345:
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr318:
                                                                                                                     §§push(this.§6X§);
                                                                                                                     §§push(null);
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        §§pop().§-!3§ = §§pop();
                                                                                                                        addr326:
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(this.§6X§);
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(null);
                                                                                                                                    if(_loc6_ || this)
                                                                                                                                    {
                                                                                                                                       §§pop().§,H§ = §§pop();
                                                                                                                                       addr290:
                                                                                                                                       this.§#!T§.§+2§ = null;
                                                                                                                                       addr236:
                                                                                                                                       addr313:
                                                                                                                                       addr291:
                                                                                                                                       §§push(this.§#!T§);
                                                                                                                                       if(_loc6_ || param2)
                                                                                                                                       {
                                                                                                                                          addr254:
                                                                                                                                          §§push(null);
                                                                                                                                          if(_loc6_ || param2)
                                                                                                                                          {
                                                                                                                                             §§pop().§;+§ = §§pop();
                                                                                                                                             addr262:
                                                                                                                                             if(_loc6_ || param1)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && this))
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr208:
                                                                                                                                                         §§push(this.§#!T§);
                                                                                                                                                         §§push(null);
                                                                                                                                                         if(_loc6_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§pop().§-!3§ = §§pop();
                                                                                                                                                            addr216:
                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§#!T§);
                                                                                                                                                                     if(_loc6_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(null);
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§,H§ = §§pop();
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc5_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc5_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr500);
                                                                                                                                                                                          }
                                                                                                                                                                                          return;
                                                                                                                                                                                          addr203:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr425);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr368);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr345);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr216);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr208);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr236);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr208);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr510);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr480);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr262);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr254);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr425);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr326);
                                                                                                                                                }
                                                                                                                                                §§goto(addr313);
                                                                                                                                             }
                                                                                                                                             §§goto(addr291);
                                                                                                                                          }
                                                                                                                                          §§goto(addr290);
                                                                                                                                       }
                                                                                                                                       addr289:
                                                                                                                                       §§goto(addr289);
                                                                                                                                    }
                                                                                                                                    §§goto(addr318);
                                                                                                                                 }
                                                                                                                                 §§goto(addr339);
                                                                                                                              }
                                                                                                                              §§goto(addr318);
                                                                                                                           }
                                                                                                                           §§goto(addr363);
                                                                                                                        }
                                                                                                                        §§goto(addr358);
                                                                                                                     }
                                                                                                                     §§goto(addr342);
                                                                                                                  }
                                                                                                                  §§goto(addr381);
                                                                                                               }
                                                                                                               §§goto(addr357);
                                                                                                            }
                                                                                                            addr356:
                                                                                                            §§goto(addr356);
                                                                                                         }
                                                                                                         §§goto(addr393);
                                                                                                      }
                                                                                                      addr388:
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                   §§goto(addr451);
                                                                                                }
                                                                                                §§goto(addr509);
                                                                                             }
                                                                                             §§goto(addr499);
                                                                                          }
                                                                                          §§goto(addr455);
                                                                                       }
                                                                                       §§goto(addr416);
                                                                                    }
                                                                                    §§goto(addr506);
                                                                                 }
                                                                                 §§goto(addr509);
                                                                              }
                                                                              §§goto(addr423);
                                                                           }
                                                                           §§goto(addr496);
                                                                        }
                                                                     }
                                                                     §§goto(addr506);
                                                                  }
                                                                  §§goto(addr450);
                                                               }
                                                               §§goto(addr506);
                                                            }
                                                            §§goto(addr499);
                                                         }
                                                         §§goto(addr506);
                                                      }
                                                      §§goto(addr496);
                                                   }
                                                   §§goto(addr203);
                                                   §§goto(addr37);
                                                }
                                                addr45:
                                             }
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc5_)
                                                {
                                                   continue loop12;
                                                }
                                                §§push(§§pop());
                                                if(!(_loc6_ || param1))
                                                {
                                                   break;
                                                }
                                                if(!§§pop())
                                                {
                                                   continue loop12;
                                                }
                                                §§goto(addr45);
                                             }
                                             continue loop2;
                                          }
                                          continue loop12;
                                       }
                                       §§goto(addr46);
                                    }
                                    §§pop();
                                    if(!(_loc6_ || param1))
                                    {
                                       §§goto(addr130);
                                    }
                                    §§goto(addr119);
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr70);
                        }
                        §§goto(addr127);
                     }
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      b2internal function §6!^§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§07§;
         if(!(_loc17_ && _loc3_))
         {
            this.§07§ = this.§"!m§;
            loop0:
            while(true)
            {
               addr65:
               while(true)
               {
                  this.§"!m§ = _loc2_;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§;!R§ |= b2internal::&$;
            if(!_loc17_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr65);
            }
            §§goto(addr69);
         }
         var _loc3_:* = false;
         var _loc4_:* = (this.§;!R§ & b2internal::^B) == b2internal::^B;
         var _loc5_:b2Body = this.§50§.m_body;
         var _loc6_:b2Body = this.§'z§.m_body;
         §§push(this.§50§.§^!5§.§7l§(this.§'z§.§^!5§));
         if(_loc18_ || this)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!(_loc17_ && _loc3_))
         {
            §§push(this.§;!R§);
            if(_loc18_ || this)
            {
               §§push(b2internal::7!a);
               if(!_loc17_)
               {
                  §§push(§§pop() & §§pop());
                  if(!(_loc17_ && this))
                  {
                     if(§§pop())
                     {
                        if(!_loc17_)
                        {
                           §§push(_loc7_);
                           if(!_loc17_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc17_ && this))
                                 {
                                    _loc8_ = this.§50§.GetShape();
                                    _loc9_ = this.§'z§.GetShape();
                                    _loc10_ = _loc5_.§2!0§();
                                    _loc11_ = _loc6_.§2!0§();
                                    if(_loc18_)
                                    {
                                       §§push(b2Shape.§7l§(_loc8_,_loc10_,_loc9_,_loc11_));
                                       if(_loc18_ || this)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       addr193:
                                       §§push(this.§"!m§);
                                       if(_loc18_)
                                       {
                                          §§pop().§63§ = 0;
                                          if(!_loc17_)
                                          {
                                             loop27:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop28:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§;!R§ &= ~b2internal::^B;
                                                      loop29:
                                                      while(true)
                                                      {
                                                         if(_loc18_ || param1)
                                                         {
                                                            addr707:
                                                            while(true)
                                                            {
                                                               loop54:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  loop31:
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     loop32:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!(_loc17_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop33:
                                                                           for(; !(_loc17_ && param1); while(true)
                                                                           {
                                                                              if(_loc17_ && this)
                                                                              {
                                                                                 continue loop33;
                                                                              }
                                                                              §§goto(addr661);
                                                                           })
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    loop35:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             param1.BeginContact(this);
                                                                                             addr667:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          addr664:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          loop39:
                                                                                          while(!_loc17_)
                                                                                          {
                                                                                             §§push(true);
                                                                                             if(!(_loc17_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                loop40:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr688:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         break loop40;
                                                                                                      }
                                                                                                      addr688:
                                                                                                   }
                                                                                                   addr588:
                                                                                                   if(!(_loc17_ && this))
                                                                                                   {
                                                                                                      if(!(_loc18_ || this))
                                                                                                      {
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                      §§goto(addr602);
                                                                                                      continue loop39;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   addr653:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                }
                                                                                                addr689:
                                                                                             }
                                                                                             loop41:
                                                                                             while(!_loc17_)
                                                                                             {
                                                                                                if(!(_loc18_ || _loc2_))
                                                                                                {
                                                                                                   continue loop32;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               loop43:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              continue loop31;
                                                                                                                           }
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(false);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 continue loop41;
                                                                                                                              }
                                                                                                                              §§goto(addr588);
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 break loop33;
                                                                                                                              }
                                                                                                                              addr743:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(_loc18_)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              continue loop43;
                                                                                                                           }
                                                                                                                           addr645:
                                                                                                                        }
                                                                                                                        §§goto(addr653);
                                                                                                                     }
                                                                                                                     §§goto(addr588);
                                                                                                                  }
                                                                                                                  §§goto(addr689);
                                                                                                               }
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            if(_loc17_ && param1)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            param1.EndContact(this);
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§;!R§ |= b2internal::^B;
                                                                                                            addr727:
                                                                                                            while(!(_loc17_ && _loc3_))
                                                                                                            {
                                                                                                               continue loop54;
                                                                                                            }
                                                                                                            addr739:
                                                                                                            addr745:
                                                                                                            while(_loc18_)
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            loop65:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc5_.SetAwake(true);
                                                                                                               addr748:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc6_.SetAwake(true);
                                                                                                                  §§goto(addr739);
                                                                                                                  continue loop65;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr604:
                                                                                                         addr721:
                                                                                                      }
                                                                                                      loop47:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§;!R§ & b2internal::7!a);
                                                                                                         addr547:
                                                                                                         while(§§pop() == 0)
                                                                                                         {
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  continue loop47;
                                                                                                               }
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     if(_loc18_ || this)
                                                                                                                     {
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           continue loop29;
                                                                                                                        }
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           param1.PreSolve(this,this.§07§);
                                                                                                                           addr573:
                                                                                                                           break loop47;
                                                                                                                        }
                                                                                                                        §§goto(addr748);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr664);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr667);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr604);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr573);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   addr602:
                                                                                                }
                                                                                                §§goto(addr645);
                                                                                             }
                                                                                             continue loop33;
                                                                                          }
                                                                                          continue loop35;
                                                                                       }
                                                                                    }
                                                                                    addr661:
                                                                                 }
                                                                              }
                                                                              §§goto(addr688);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 continue loop27;
                                                                              }
                                                                              §§goto(addr745);
                                                                           }
                                                                        }
                                                                        §§goto(addr688);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr707:
                                                         }
                                                         §§goto(addr727);
                                                      }
                                                   }
                                                   §§goto(addr721);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc6_.§2!r§());
                                                if(_loc18_)
                                                {
                                                   §§push(b2Body.b2_dynamicBody);
                                                   if(!(_loc17_ && _loc3_))
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(!(_loc17_ && param1))
                                                         {
                                                            if(!(_loc17_ && _loc3_))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  loop57:
                                                                  while(true)
                                                                  {
                                                                     if(_loc18_)
                                                                     {
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc18_ || _loc3_)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       loop20:
                                                                                       while(!(_loc17_ && this))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_.§<!l§());
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   continue loop57;
                                                                                                }
                                                                                                if(!(_loc17_ && this))
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   loop59:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc17_ && this))
                                                                                                      {
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  this.§;!R§ &= ~b2internal::?!P;
                                                                                                                  loop4:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                        loop6:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc17_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop59;
                                                                                                                           }
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§push(this.§"!m§);
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           loop7:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.Evaluate();
                                                                                                                              loop8:
                                                                                                                              while(!(_loc17_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(_loc18_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    if(!(_loc17_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§"!m§);
                                                                                                                                          addr219:
                                                                                                                                          loop55:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().§63§);
                                                                                                                                             addr220:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() > 0);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         _loc3_ = §§pop();
                                                                                                                                                         while(!_loc17_)
                                                                                                                                                         {
                                                                                                                                                            continue loop7;
                                                                                                                                                         }
                                                                                                                                                         continue loop8;
                                                                                                                                                         addr234:
                                                                                                                                                      }
                                                                                                                                                      continue loop11;
                                                                                                                                                   }
                                                                                                                                                   continue loop19;
                                                                                                                                                }
                                                                                                                                                §§push(0);
                                                                                                                                                addr250:
                                                                                                                                                continue loop6;
                                                                                                                                                if(!(_loc18_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                _loc12_ = §§pop();
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   loop71:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         continue loop55;
                                                                                                                                                      }
                                                                                                                                                      loop72:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§"!m§.§63§);
                                                                                                                                                            if(!(_loc17_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() >= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     addr742:
                                                                                                                                                                     §§goto(addr743);
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr573);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§"!m§);
                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     break loop6;
                                                                                                                                                                  }
                                                                                                                                                                  (_loc13_ = §§pop().§,!f§[_loc12_]).§`!k§ = 0;
                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc13_.§?!+§ = 0;
                                                                                                                                                                  }
                                                                                                                                                                  _loc14_ = _loc13_.m_id;
                                                                                                                                                                  if(!(_loc17_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(0);
                                                                                                                                                                     if(!(_loc17_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        _loc15_ = §§pop();
                                                                                                                                                                        if(!(_loc17_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr465:
                                                                                                                                                                           loop74:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              addr504:
                                                                                                                                                                              while(§§pop() < this.§07§.§63§)
                                                                                                                                                                              {
                                                                                                                                                                                 if((_loc16_ = this.§07§.§,!f§[_loc15_]).m_id.key == _loc14_.key)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc13_.§`!k§ = _loc16_.§`!k§;
                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc13_.§?!+§ = _loc16_.§?!+§;
                                                                                                                                                                                          if(!(_loc18_ || _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop72;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 _loc15_++;
                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop74;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop72;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        _loc12_++;
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr504);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr465);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr548);
                                                                                                                                                         }
                                                                                                                                                         break loop71;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr547);
                                                                                                                                                   addr214:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr234);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       loop13:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_.§<!l§());
                                                                                                                                          addr397:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             addr398:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr399:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   addr400:
                                                                                                                                                   while(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop18;
                                                                                                                                                   }
                                                                                                                                                   addr401:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      break loop20;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr412:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             continue loop13;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§pop().§63§ = 0;
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           §§goto(addr742);
                                                                                                                        }
                                                                                                                        §§goto(addr707);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr297:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§;!R§ |= b2internal::?!P;
                                                                                                                  §§goto(addr330);
                                                                                                               }
                                                                                                            }
                                                                                                            addr322:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               addr410:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  break loop18;
                                                                                                               }
                                                                                                            }
                                                                                                            addr409:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr401);
                                                                                                   }
                                                                                                   addr313:
                                                                                                }
                                                                                                §§goto(addr399);
                                                                                             }
                                                                                             §§goto(addr313);
                                                                                          }
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr400);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              §§goto(addr412);
                                                                           }
                                                                           §§goto(addr398);
                                                                        }
                                                                     }
                                                                     §§goto(addr410);
                                                                  }
                                                               }
                                                               addr370:
                                                            }
                                                            §§goto(addr412);
                                                         }
                                                         §§goto(addr397);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr408:
                                                      while(true)
                                                      {
                                                      }
                                                      addr408:
                                                   }
                                                   §§goto(addr409);
                                                }
                                                else
                                                {
                                                   addr406:
                                                   while(true)
                                                   {
                                                      §§goto(addr408);
                                                   }
                                                   addr406:
                                                }
                                                §§goto(addr408);
                                             }
                                          }
                                          §§goto(addr707);
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr297);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr370);
                        }
                        §§goto(addr393);
                     }
                     else
                     {
                        §§goto(addr406);
                        §§push(_loc5_.§2!r§());
                     }
                     §§goto(addr406);
                  }
                  §§goto(addr220);
               }
               §§goto(addr408);
            }
            §§goto(addr406);
         }
         §§goto(addr214);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §0_§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§1B§);
            loop0:
            while(true)
            {
               §§pop().§]!O§.Set(this.§50§.GetShape());
               addr127:
               while(true)
               {
                  §§push(§1B§);
                  continue loop0;
               }
            }
         }
         §§goto(addr120);
      }
   }
}
