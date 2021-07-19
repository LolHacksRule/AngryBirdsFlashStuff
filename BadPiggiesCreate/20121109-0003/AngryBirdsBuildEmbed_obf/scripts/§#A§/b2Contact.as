package §#A§
{
   import § !t§.b2Body;
   import § !t§.b2ContactListener;
   import § !t§.b2Fixture;
   import §#b§.b2Shape;
   import §'!;§.b2ContactID;
   import §'!;§.b2Manifold;
   import §'!;§.b2ManifoldPoint;
   import §'!;§.b2TOIInput;
   import §'!;§.b2TimeOfImpact;
   import §'!;§.b2WorldManifold;
   import §<!B§.b2Sweep;
   import §<!B§.b2Transform;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §0!7§:uint = 1;
      
      b2internal static var §5!5§:uint = 2;
      
      b2internal static var §8!b§:uint = 4;
      
      b2internal static var §!!D§:uint = 8;
      
      b2internal static var §for§:uint = 16;
      
      b2internal static var §5!h§:uint = 32;
      
      b2internal static var §5!V§:uint = 64;
      
      private static var §3B§:b2TOIInput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5!5§ = 2;
            §8!b§ = 4;
            if(!_loc2_)
            {
               §!!D§ = 8;
               §for§ = 16;
               if(!(_loc2_ && _loc2_))
               {
                  §5!h§ = 32;
                  addr65:
                  §5!V§ = 64;
                  if(_loc1_ || _loc2_)
                  {
                     §3B§ = new b2TOIInput();
                  }
               }
            }
            return;
         }
         §§goto(addr65);
      }
      
      b2internal var §;!n§:uint;
      
      b2internal var §?!D§:b2Contact;
      
      b2internal var § <§:b2Contact;
      
      b2internal var §>!3§:b2ContactEdge;
      
      b2internal var §1A§:b2ContactEdge;
      
      b2internal var §4b§:b2Fixture;
      
      b2internal var §"'§:b2Fixture;
      
      b2internal var §@%§:b2Manifold;
      
      b2internal var §==§:b2Manifold;
      
      b2internal var §@J§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§>!3§ = new b2ContactEdge();
            if(_loc1_)
            {
               this.§1A§ = new b2ContactEdge();
               if(!(_loc2_ && this))
               {
                  addr55:
                  this.§@%§ = new b2Manifold();
                  if(_loc2_ && _loc2_)
                  {
                  }
                  §§goto(addr74);
               }
               this.§==§ = new b2Manifold();
               if(_loc1_)
               {
                  super();
                  §§goto(addr74);
               }
               addr74:
               return;
            }
         }
         §§goto(addr55);
      }
      
      public function §;I§() : b2Manifold
      {
         return this.§@%§;
      }
      
      public function §-!u§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§4b§.GetBody();
         var _loc3_:b2Body = this.§"'§.GetBody();
         var _loc4_:b2Shape = this.§4b§.GetShape();
         var _loc5_:b2Shape = this.§"'§.GetShape();
         if(!(_loc6_ && _loc2_))
         {
            param1.§6!V§(this.§@%§,_loc2_.§>!H§(),_loc4_.§%+§,_loc3_.§>!H§(),_loc5_.§%+§);
         }
      }
      
      public function §`!§() : Boolean
      {
         return (this.§;!n§ & b2internal::for) == b2internal::for;
      }
      
      public function §<!!§() : Boolean
      {
         return (this.§;!n§ & b2internal::5!5) == b2internal::5!5;
      }
      
      public function §1!C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1)
            {
               if(_loc3_)
               {
                  addr33:
                  this.§;!n§ |= b2internal::0!7;
                  if(_loc3_ || this)
                  {
                  }
                  §§goto(addr54);
               }
            }
            else
            {
               this.§;!n§ &= ~b2internal::0!7;
            }
            addr54:
            return;
         }
         §§goto(addr33);
      }
      
      public function §-!]§() : Boolean
      {
         return (this.§;!n§ & b2internal::0!7) == b2internal::0!7;
      }
      
      public function §!R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§;!n§ |= b2internal::5!h;
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr53);
               }
            }
            else
            {
               this.§;!n§ &= ~b2internal::5!h;
            }
         }
         addr53:
      }
      
      public function §,+§() : Boolean
      {
         return (this.§;!n§ & b2internal::5!h) == b2internal::5!h;
      }
      
      public function §4!j§() : b2Contact
      {
         return this.§ <§;
      }
      
      public function §,^§() : b2Fixture
      {
         return this.§4b§;
      }
      
      public function §'!+§() : b2Fixture
      {
         return this.§"'§;
      }
      
      public function §%!h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§;!n§ |= b2internal::5!V;
         }
      }
      
      b2internal function §^!]§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§;!n§ = b2internal::5!h;
            §§push(!param1);
            if(_loc6_)
            {
               §§push(§§pop());
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     §§push(!param2);
                     if(!_loc5_)
                     {
                        addr40:
                        if(§§pop())
                        {
                           if(_loc6_)
                           {
                              this.§4b§ = null;
                              this.§"'§ = null;
                              if(!_loc5_)
                              {
                                 return;
                              }
                           }
                           else
                           {
                              addr54:
                              §§push(param1.§-!]§());
                              if(_loc6_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc5_)
                                 {
                                    addr61:
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       addr64:
                                       §§push(param2.§-!]§());
                                       if(!_loc5_)
                                       {
                                          addr68:
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 this.§;!n§ |= b2internal::0!7;
                              }
                           }
                           var _loc3_:b2Body = param1.GetBody();
                           var _loc4_:b2Body = param2.GetBody();
                           §§push(_loc3_.§"!j§());
                           if(!(_loc5_ && this))
                           {
                              §§push(b2Body.b2_dynamicBody);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() != §§pop());
                                 §§push(§§pop() != §§pop());
                                 if(!_loc5_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       §§push(Boolean(_loc3_.§ v§()));
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr114:
                                          §§push(§§pop());
                                          if(_loc6_)
                                          {
                                             if(!§§pop())
                                             {
                                                §§pop();
                                                if(!_loc5_)
                                                {
                                                   addr126:
                                                   §§push(_loc4_.§"!j§() != b2Body.b2_dynamicBody);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      addr134:
                                                      if(!§§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§pop();
                                                            §§push(_loc4_.§ v§());
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                         }
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         this.§;!n§ |= b2internal::5!5;
                                                         if(_loc6_)
                                                         {
                                                            addr170:
                                                            this.§4b§ = param1;
                                                            if(_loc6_ || param1)
                                                            {
                                                               this.§"'§ = param2;
                                                               if(_loc6_)
                                                               {
                                                                  addr185:
                                                                  this.§@%§.§+!X§ = 0;
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr191:
                                                                     this.§?!D§ = null;
                                                                     if(_loc6_)
                                                                     {
                                                                        addr196:
                                                                        this.§ <§ = null;
                                                                        addr199:
                                                                        §§push(this.§>!3§);
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           §§push(null);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop().§12§ = §§pop();
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(this.§>!3§);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(null);
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       §§pop().§=6§ = §§pop();
                                                                                       §§push(this.§>!3§);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                       }
                                                                                       addr245:
                                                                                       §§pop().§'q§ = null;
                                                                                       addr244:
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          §§push(this.§1A§);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(null);
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                §§pop().§12§ = §§pop();
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr268:
                                                                                                   §§push(this.§1A§);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(null);
                                                                                                      if(_loc6_ || param1)
                                                                                                      {
                                                                                                         addr290:
                                                                                                         §§pop().§=6§ = §§pop();
                                                                                                         §§push(this.§1A§);
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            addr300:
                                                                                                            §§push(null);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§pop().§1!U§ = §§pop();
                                                                                                               §§goto(addr315);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr313);
                                                                                                      }
                                                                                                      §§pop().§'q§ = §§pop();
                                                                                                      §§goto(addr315);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr313);
                                                                                             }
                                                                                             §§goto(addr290);
                                                                                          }
                                                                                          §§goto(addr300);
                                                                                       }
                                                                                       §§goto(addr268);
                                                                                    }
                                                                                    addr239:
                                                                                    §§pop().§1!U§ = §§pop();
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr242:
                                                                                       §§goto(addr244);
                                                                                       §§push(this.§>!3§);
                                                                                    }
                                                                                    §§goto(addr313);
                                                                                 }
                                                                                 §§push(null);
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    §§goto(addr239);
                                                                                 }
                                                                                 §§goto(addr245);
                                                                              }
                                                                              addr315:
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 addr313:
                                                                                 §§push(this.§1A§);
                                                                                 §§push(null);
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                        §§goto(addr245);
                                                                     }
                                                                     §§goto(addr242);
                                                                  }
                                                                  §§goto(addr199);
                                                               }
                                                               §§goto(addr268);
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr191);
                                             }
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr114);
                                 }
                                 §§goto(addr134);
                              }
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr54);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr40);
               }
               §§goto(addr61);
            }
            §§goto(addr68);
         }
         §§goto(addr64);
      }
      
      b2internal function §[;§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§==§;
         if(!(_loc18_ && _loc2_))
         {
            this.§==§ = this.§@%§;
            if(_loc17_)
            {
               this.§@%§ = _loc2_;
               if(!_loc18_)
               {
                  addr63:
                  this.§;!n§ |= b2internal::5!h;
               }
               var _loc3_:* = false;
               var _loc4_:* = (this.§;!n§ & b2internal::for) == b2internal::for;
               var _loc5_:b2Body = this.§4b§.m_body;
               var _loc6_:b2Body = this.§"'§.m_body;
               §§push(this.§4b§.§&#§.§,!r§(this.§"'§.§&#§));
               if(!_loc18_)
               {
                  §§push(Boolean(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(_loc17_ || param1)
               {
                  §§push(this.§;!n§);
                  if(!(_loc18_ && this))
                  {
                     §§push(b2internal::0!7);
                     if(!_loc18_)
                     {
                        §§push(§§pop() & §§pop());
                        if(!(_loc18_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              if(_loc17_)
                              {
                                 if(_loc7_)
                                 {
                                    if(_loc17_ || _loc2_)
                                    {
                                       _loc8_ = this.§4b§.GetShape();
                                       _loc9_ = this.§"'§.GetShape();
                                       _loc10_ = _loc5_.§>!H§();
                                       _loc11_ = _loc6_.§>!H§();
                                       if(_loc17_)
                                       {
                                          §§push(b2Shape.§,!r§(_loc8_,_loc10_,_loc9_,_loc11_));
                                          if(!(_loc18_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                          §§goto(addr173);
                                       }
                                       addr173:
                                       §§push(this.§@%§);
                                       if(!_loc18_)
                                       {
                                          §§pop().§+!X§ = 0;
                                          if(!(_loc18_ && param1))
                                          {
                                             addr401:
                                             §§push(_loc3_);
                                             if(_loc17_)
                                             {
                                                if(§§pop())
                                                {
                                                   this.§;!n§ |= b2internal::for;
                                                }
                                                else
                                                {
                                                   this.§;!n§ &= ~b2internal::for;
                                                }
                                                §§push(_loc4_ == false);
                                                §§push(_loc4_ == false);
                                                if(_loc17_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         §§pop();
                                                         §§push(_loc3_);
                                                         if(!(_loc18_ && _loc3_))
                                                         {
                                                            §§push(true);
                                                            if(!_loc18_)
                                                            {
                                                               addr440:
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc18_)
                                                               {
                                                                  addr443:
                                                                  if(§§pop())
                                                                  {
                                                                     param1.BeginContact(this);
                                                                     if(_loc17_ || _loc2_)
                                                                     {
                                                                        addr454:
                                                                        §§push(_loc4_);
                                                                        §§push(true);
                                                                        if(!(_loc18_ && this))
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              addr471:
                                                                              §§push(§§pop());
                                                                              if(!_loc18_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!(_loc18_ && _loc2_))
                                                                                    {
                                                                                       addr495:
                                                                                       if(_loc3_ == false)
                                                                                       {
                                                                                          param1.EndContact(this);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr500);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr495);
                                                                  }
                                                                  §§goto(addr454);
                                                               }
                                                               §§goto(addr471);
                                                            }
                                                            §§goto(addr495);
                                                         }
                                                      }
                                                      §§goto(addr471);
                                                   }
                                                   §§goto(addr443);
                                                }
                                                §§goto(addr440);
                                             }
                                             §§goto(addr471);
                                          }
                                          else
                                          {
                                             §§goto(addr284);
                                          }
                                       }
                                       addr284:
                                       §§goto(addr282);
                                    }
                                    else
                                    {
                                       addr256:
                                       if(_loc6_.§ v§())
                                       {
                                          if(!_loc18_)
                                          {
                                             this.§;!n§ |= b2internal::5!5;
                                             addr276:
                                             if(_loc7_)
                                             {
                                                if(_loc18_)
                                                {
                                                }
                                                addr282:
                                                §§push(this.§@%§.§+!X§);
                                                if(_loc17_)
                                                {
                                                   addr287:
                                                   _loc3_ = §§pop() > 0;
                                                   §§goto(addr299);
                                                }
                                                _loc12_ = §§pop();
                                                §§goto(addr299);
                                             }
                                             else
                                             {
                                                §§goto(addr386);
                                                §§push(this.§@%§);
                                             }
                                             §§goto(addr386);
                                          }
                                          addr280:
                                          this.Evaluate();
                                          §§goto(addr284);
                                       }
                                       else
                                       {
                                          this.§;!n§ &= ~b2internal::5!5;
                                       }
                                       §§goto(addr276);
                                    }
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr284);
                           }
                           else
                           {
                              §§push(_loc5_.§"!j§());
                              if(!_loc18_)
                              {
                                 §§push(b2Body.b2_dynamicBody);
                                 if(_loc17_)
                                 {
                                    addr195:
                                    §§push(§§pop() != §§pop());
                                    if(_loc17_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc18_ && param1))
                                       {
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             if(!_loc18_)
                                             {
                                                §§push(_loc5_.§ v§());
                                                if(_loc17_ || _loc3_)
                                                {
                                                   addr221:
                                                   §§push(Boolean(§§pop()));
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc17_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            §§pop();
                                                            if(!_loc18_)
                                                            {
                                                               addr235:
                                                               §§push(_loc6_.§"!j§() != b2Body.b2_dynamicBody);
                                                               if(_loc17_ || param1)
                                                               {
                                                                  addr243:
                                                                  if(!§§pop())
                                                                  {
                                                                     addr255:
                                                                     §§pop();
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                               §§goto(addr255);
                                                            }
                                                            §§goto(addr280);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr235);
                                             }
                                             addr299:
                                             if(_loc17_ || this)
                                             {
                                                §§push(0);
                                             }
                                             loop0:
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                                if(!_loc18_)
                                                {
                                                   §§push(this.§@%§.§+!X§);
                                                   if(_loc17_)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         §§push(this.§@%§);
                                                         if(_loc17_)
                                                         {
                                                            (_loc13_ = §§pop().§`?§[_loc12_]).§,!9§ = 0;
                                                            if(_loc17_)
                                                            {
                                                               _loc13_.§?;§ = 0;
                                                            }
                                                            _loc14_ = _loc13_.m_id;
                                                            if(!_loc18_)
                                                            {
                                                               §§push(0);
                                                               if(!_loc18_)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  if(!_loc18_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc15_);
                                                                     }
                                                                     addr368:
                                                                  }
                                                                  addr373:
                                                                  _loc12_++;
                                                                  continue;
                                                               }
                                                               for(; §§pop() < this.§==§.§+!X§; §§goto(addr368))
                                                               {
                                                                  if((_loc16_ = this.§==§.§`?§[_loc15_]).m_id.key != _loc14_.key)
                                                                  {
                                                                     _loc15_++;
                                                                     if(!(_loc18_ && _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop0;
                                                                  }
                                                                  if(_loc17_)
                                                                  {
                                                                     _loc13_.§,!9§ = _loc16_.§,!9§;
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr353:
                                                                        _loc13_.§?;§ = _loc16_.§?;§;
                                                                        if(_loc18_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr353);
                                                               }
                                                            }
                                                            §§goto(addr373);
                                                         }
                                                         else
                                                         {
                                                            addr386:
                                                            §§pop().§+!X§ = 0;
                                                         }
                                                      }
                                                      §§push(_loc3_);
                                                      if(!_loc18_)
                                                      {
                                                         if(§§pop() != _loc4_)
                                                         {
                                                            _loc5_.SetAwake(true);
                                                            _loc6_.SetAwake(true);
                                                            if(!_loc18_)
                                                            {
                                                               §§goto(addr401);
                                                            }
                                                            addr500:
                                                            §§goto(addr505);
                                                         }
                                                         §§goto(addr401);
                                                      }
                                                      §§goto(addr443);
                                                   }
                                                   addr505:
                                                   §§goto(addr504);
                                                }
                                                break;
                                             }
                                             addr504:
                                             if((this.§;!n§ & b2internal::0!7) == 0)
                                             {
                                                if(!(_loc18_ && this))
                                                {
                                                   param1.PreSolve(this,this.§==§);
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr221);
                                       }
                                       §§goto(addr243);
                                    }
                                    §§goto(addr276);
                                 }
                              }
                              §§goto(addr235);
                           }
                        }
                        §§goto(addr287);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr235);
               }
               §§goto(addr287);
            }
         }
         §§goto(addr63);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §3f§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(§3B§);
            if(!(_loc3_ && param2))
            {
               §§pop().§4M§.Set(this.§4b§.GetShape());
               if(!(_loc3_ && this))
               {
                  §§push(§3B§);
                  if(_loc4_ || param2)
                  {
                     §§pop().§1!]§.Set(this.§"'§.GetShape());
                     if(!_loc3_)
                     {
                        addr69:
                        §§push(§3B§);
                        if(!_loc3_)
                        {
                           addr82:
                           §§pop().§"!&§ = param1;
                           if(!_loc3_)
                           {
                              addr86:
                              §§push(§3B§);
                              if(_loc4_ || this)
                              {
                                 addr94:
                                 §§pop().§+^§ = param2;
                                 if(_loc4_ || param2)
                                 {
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr104);
                           }
                           addr104:
                           §§pop().§>![§ = b2Settings.b2_linearSlop;
                           addr107:
                           return b2TimeOfImpact.§+O§(§3B§);
                           §§push(§3B§);
                        }
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr104);
               }
               §§goto(addr69);
            }
            §§goto(addr82);
         }
         §§goto(addr86);
      }
   }
}
