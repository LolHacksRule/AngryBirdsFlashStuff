package §8Y§
{
   import §&U§.b2Shape;
   import §0!G§.b2Sweep;
   import §0!G§.b2Transform;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §9"§.b2ContactID;
   import §9"§.b2Manifold;
   import §9"§.b2ManifoldPoint;
   import §9"§.b2TOIInput;
   import §9"§.b2TimeOfImpact;
   import §9"§.b2WorldManifold;
   import §`j§.b2Body;
   import §`j§.b2ContactListener;
   import §`j§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §@!I§:uint = 1;
      
      b2internal static var §@S§:uint = 2;
      
      b2internal static var §finally§:uint = 4;
      
      b2internal static var §5!O§:uint = 8;
      
      b2internal static var §8§:uint = 16;
      
      b2internal static var §8!7§:uint = 32;
      
      b2internal static var §45§:uint = 64;
      
      private static var §7p§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §@!I§ = 1;
            loop0:
            while(true)
            {
               §@S§ = 2;
               loop1:
               while(true)
               {
                  §finally§ = 4;
                  while(!_loc1_)
                  {
                     §5!O§ = 8;
                     continue loop1;
                     if(!(_loc1_ && _loc1_))
                     {
                        return;
                        addr65:
                     }
                  }
                  continue loop0;
               }
            }
         }
         loop4:
         while(true)
         {
            §8!7§ = 32;
            while(true)
            {
               §45§ = 64;
               while(true)
               {
                  if(!_loc1_)
                  {
                     if(_loc1_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop4;
               }
               §§goto(addr89);
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr65);
      }
      
      b2internal var §@x§:uint;
      
      b2internal var §8`§:b2Contact;
      
      b2internal var §#!&§:b2Contact;
      
      b2internal var §!!7§:b2ContactEdge;
      
      b2internal var §7a§:b2ContactEdge;
      
      b2internal var §1!,§:b2Fixture;
      
      b2internal var §7+§:b2Fixture;
      
      b2internal var §&C§:b2Manifold;
      
      b2internal var §<!Q§:b2Manifold;
      
      b2internal var §9,§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!!7§ = new b2ContactEdge();
            loop0:
            while(true)
            {
               this.§7a§ = new b2ContactEdge();
               addr82:
               while(true)
               {
                  this.§&C§ = new b2Manifold();
                  continue loop0;
               }
            }
         }
         §§goto(addr28);
      }
      
      public function § !X§() : b2Manifold
      {
         return this.§&C§;
      }
      
      public function §![§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = this.§1!,§.GetBody();
         var _loc3_:b2Body = this.§7+§.GetBody();
         var _loc4_:b2Shape = this.§1!,§.GetShape();
         var _loc5_:b2Shape = this.§7+§.GetShape();
         if(_loc6_ || this)
         {
            param1.§>b§(this.§&C§,_loc2_.§4!P§(),_loc4_.§@s§,_loc3_.§4!P§(),_loc5_.§@s§);
         }
      }
      
      public function §=^§() : Boolean
      {
         return (this.§@x§ & b2internal::8) == b2internal::8;
      }
      
      public function §>u§() : Boolean
      {
         return (this.§@x§ & b2internal::@S) == b2internal::@S;
      }
      
      public function §5!_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§@x§ &= ~b2internal::@!I;
               if(_loc3_)
               {
                  if(!(_loc3_ || this))
                  {
                     addr66:
                     this.§@x§ |= b2internal::@!I;
                     addr72:
                  }
                  else
                  {
                     addr53:
                  }
                  return;
               }
               §§goto(addr72);
            }
            §§goto(addr66);
         }
         §§goto(addr53);
      }
      
      public function §`3§() : Boolean
      {
         return (this.§@x§ & b2internal::@!I) == b2internal::@!I;
      }
      
      public function §<!C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!param1)
            {
               this.§@x§ &= ~b2internal::8!7;
               if(_loc3_ && _loc3_)
               {
                  addr81:
               }
               return;
            }
            if(_loc2_ || this)
            {
               this.§@x§ |= b2internal::8!7;
            }
         }
         §§goto(addr81);
      }
      
      public function §@n§() : Boolean
      {
         return (this.§@x§ & b2internal::8!7) == b2internal::8!7;
      }
      
      public function §[;§() : b2Contact
      {
         return this.§#!&§;
      }
      
      public function §&^§() : b2Fixture
      {
         return this.§1!,§;
      }
      
      public function §7I§() : b2Fixture
      {
         return this.§7+§;
      }
      
      public function §@!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@x§ |= b2internal::45;
         }
      }
      
      b2internal function §8j§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc3_))
         {
            this.§@x§ = b2internal::8!7;
            loop0:
            while(true)
            {
               §§push(!param1);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  addr144:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr146:
                           while(true)
                           {
                              §§push(!param2);
                           }
                        }
                        addr145:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc5_ || param1)
                              {
                                 this.§1!,§ = null;
                              }
                              this.§7+§ = null;
                              addr139:
                           }
                           loop7:
                           while(true)
                           {
                              §§push(param1.§`3§());
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr145);
                                 }
                                 addr73:
                              }
                              else
                              {
                                 loop12:
                                 while(true)
                                 {
                                    §§pop();
                                    loop11:
                                    for(; _loc5_ || _loc3_; continue loop12)
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§push(param2.§`3§());
                                             if(!_loc6_)
                                             {
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   continue loop12;
                                                }
                                                if(!_loc6_)
                                                {
                                                   addr38:
                                                   §§push(Boolean(§§pop()));
                                                   while(true)
                                                   {
                                                      §§goto(addr38);
                                                   }
                                                   addr39:
                                                }
                                                else
                                                {
                                                   §§goto(addr73);
                                                }
                                                §§goto(addr146);
                                             }
                                             while(§§pop())
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      this.§@x§ |= b2internal::@!I;
                                                   }
                                                   else
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                }
                                                if(_loc5_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop11;
                                             }
                                             var _loc3_:b2Body = param1.GetBody();
                                             var _loc4_:b2Body = param2.GetBody();
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                addr497:
                                                §§push(_loc3_.§"!M§() != b2Body.b2_dynamicBody);
                                                if(!(_loc3_.§"!M§() != b2Body.b2_dynamicBody))
                                                {
                                                   addr498:
                                                   §§pop();
                                                   addr499:
                                                   §§push(_loc3_.§ c§());
                                                   if(_loc5_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            addr477:
                                                            if(!§§pop())
                                                            {
                                                               addr478:
                                                               §§pop();
                                                               addr479:
                                                               §§push(_loc4_.§"!M§());
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  §§push(b2Body.b2_dynamicBody);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr447:
                                                                                 §§push(!§§pop());
                                                                                 §§push(!§§pop());
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr453:
                                                                                          §§pop();
                                                                                          addr454:
                                                                                          §§push(_loc4_.§ c§());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc5_ || param2)
                                                                                                {
                                                                                                   addr409:
                                                                                                   addr408:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr410:
                                                                                                      this.§@x§ |= b2internal::@S;
                                                                                                      addr416:
                                                                                                   }
                                                                                                   this.§1!,§ = param1;
                                                                                                   this.§7+§ = param2;
                                                                                                   addr392:
                                                                                                   if(_loc5_ || param2)
                                                                                                   {
                                                                                                      this.§&C§.§!$§ = 0;
                                                                                                      addr373:
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         this.§8`§ = null;
                                                                                                         this.§#!&§ = null;
                                                                                                         addr353:
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               addr347:
                                                                                                               this.§!!7§.§"!$§ = null;
                                                                                                               addr334:
                                                                                                               this.§!!7§.§;!Z§ = null;
                                                                                                               addr348:
                                                                                                               addr333:
                                                                                                               addr346:
                                                                                                               if(_loc5_ || param1)
                                                                                                               {
                                                                                                                  addr316:
                                                                                                                  §§push(this.§!!7§);
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr324:
                                                                                                                     §§push(null);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§pop().§%Y§ = §§pop();
                                                                                                                        addr327:
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(this.§!!7§);
                                                                                                                           if(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 §§push(null);
                                                                                                                                 if(_loc5_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§pop().§3!>§ = §§pop();
                                                                                                                                       addr303:
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr278:
                                                                                                                                             this.§7a§.§"!$§ = null;
                                                                                                                                             addr258:
                                                                                                                                             this.§7a§.§;!Z§ = null;
                                                                                                                                             addr279:
                                                                                                                                             addr277:
                                                                                                                                             addr257:
                                                                                                                                             if(!(_loc6_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(_loc5_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr217:
                                                                                                                                                   §§push(this.§7a§);
                                                                                                                                                   §§push(null);
                                                                                                                                                   if(_loc5_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§%Y§ = §§pop();
                                                                                                                                                      addr225:
                                                                                                                                                      if(!(_loc6_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§7a§);
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(null);
                                                                                                                                                                           if(_loc5_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().§3!>§ = §§pop();
                                                                                                                                                                                 if(!(_loc6_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc5_ || param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr348);
                                                                                                                                                                                       }
                                                                                                                                                                                       return;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr279);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr225);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr258);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr217);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr277);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr257);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr217);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr454);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr348);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr327);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr258);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr278);
                                                                                                                                                }
                                                                                                                                                §§goto(addr373);
                                                                                                                                             }
                                                                                                                                             §§goto(addr303);
                                                                                                                                          }
                                                                                                                                          §§goto(addr499);
                                                                                                                                       }
                                                                                                                                       §§goto(addr353);
                                                                                                                                    }
                                                                                                                                    §§goto(addr334);
                                                                                                                                 }
                                                                                                                                 §§goto(addr324);
                                                                                                                              }
                                                                                                                              §§goto(addr333);
                                                                                                                           }
                                                                                                                           §§goto(addr316);
                                                                                                                        }
                                                                                                                        §§goto(addr392);
                                                                                                                     }
                                                                                                                     §§goto(addr347);
                                                                                                                  }
                                                                                                                  §§goto(addr346);
                                                                                                               }
                                                                                                               §§goto(addr416);
                                                                                                            }
                                                                                                            §§goto(addr479);
                                                                                                         }
                                                                                                         addr367:
                                                                                                         §§goto(addr367);
                                                                                                      }
                                                                                                      §§goto(addr392);
                                                                                                   }
                                                                                                   §§goto(addr410);
                                                                                                }
                                                                                                §§goto(addr447);
                                                                                             }
                                                                                             §§goto(addr453);
                                                                                          }
                                                                                          §§goto(addr409);
                                                                                       }
                                                                                       §§goto(addr408);
                                                                                    }
                                                                                    §§goto(addr497);
                                                                                 }
                                                                                 §§goto(addr477);
                                                                              }
                                                                              §§goto(addr497);
                                                                           }
                                                                           §§goto(addr498);
                                                                        }
                                                                        §§goto(addr478);
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                               }
                                                               §§goto(addr497);
                                                            }
                                                            §§goto(addr447);
                                                         }
                                                         §§goto(addr497);
                                                      }
                                                   }
                                                   §§goto(addr478);
                                                }
                                                §§goto(addr477);
                                             }
                                             §§goto(addr410);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr139);
                                       }
                                    }
                                    §§goto(addr123);
                                 }
                                 addr96:
                              }
                              §§goto(addr146);
                           }
                           continue;
                           addr123:
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      b2internal function §?!R§(param1:b2ContactListener) : void
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
         var _loc15_:int = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§<!Q§;
         if(_loc18_ || this)
         {
            this.§<!Q§ = this.§&C§;
            loop0:
            while(true)
            {
               addr72:
               while(true)
               {
                  this.§&C§ = _loc2_;
                  continue loop0;
               }
            }
            addr81:
         }
         while(true)
         {
            this.§@x§ |= b2internal::8!7;
            if(!_loc18_)
            {
               continue;
            }
            if(_loc18_ || _loc2_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr81);
            }
            §§goto(addr72);
         }
         var _loc3_:* = false;
         var _loc4_:* = (this.§@x§ & b2internal::8) == b2internal::8;
         var _loc5_:b2Body = this.§1!,§.m_body;
         var _loc6_:b2Body = this.§7+§.m_body;
         §§push(this.§1!,§.§^T§.§[!K§(this.§7+§.§^T§));
         if(!_loc17_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!(_loc17_ && _loc2_))
         {
            §§push(this.§@x§);
            if(!(_loc17_ && param1))
            {
               §§push(b2internal::@!I);
               if(_loc18_)
               {
                  §§push(§§pop() & §§pop());
                  if(_loc18_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc17_ && this))
                        {
                           §§push(_loc7_);
                           if(_loc18_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc17_)
                                 {
                                    addr153:
                                    _loc8_ = this.§1!,§.GetShape();
                                    _loc9_ = this.§7+§.GetShape();
                                    _loc10_ = _loc5_.§4!P§();
                                    _loc11_ = _loc6_.§4!P§();
                                    if(!_loc17_)
                                    {
                                       §§push(b2Shape.§[!K§(_loc8_,_loc10_,_loc9_,_loc11_));
                                       if(_loc18_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       addr183:
                                       §§push(this.§&C§);
                                       if(!(_loc17_ && _loc2_))
                                       {
                                          §§pop().§!$§ = 0;
                                          if(!_loc17_)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§@x§ &= ~b2internal::8;
                                                      while(true)
                                                      {
                                                         if(!(_loc17_ && _loc3_))
                                                         {
                                                            if(!_loc18_)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§@x§ |= b2internal::8;
                                                                  addr726:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr720:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               if(!(_loc17_ && _loc2_))
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(false);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        addr691:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(_loc18_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr696:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          continue loop23;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr664);
                                                                                    §§goto(addr662);
                                                                                 }
                                                                              }
                                                                              §§goto(addr745);
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr743:
                                                                     §§push(_loc4_);
                                                                  }
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  §§goto(addr745);
                                                               }
                                                               §§goto(addr691);
                                                            }
                                                         }
                                                         §§goto(addr726);
                                                         if(!(_loc18_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         param1.EndContact(this);
                                                         §§goto(addr623);
                                                      }
                                                   }
                                                   §§goto(addr720);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                this.§@x§ |= b2internal::@S;
                                                loop16:
                                                while(true)
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      loop5:
                                                      while(!_loc17_)
                                                      {
                                                         if(_loc18_ || _loc2_)
                                                         {
                                                            if(_loc18_)
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        this.Evaluate();
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           addr243:
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§&C§);
                                                                              addr246:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§!$§);
                                                                                 addr247:
                                                                                 loop53:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() > 0);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    if(!(_loc17_ && _loc3_))
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       while(!_loc17_)
                                                                                       {
                                                                                          continue loop53;
                                                                                          _loc12_ = §§pop();
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             if(!(_loc17_ && this))
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             continue loop7;
                                                                                          }
                                                                                       }
                                                                                       continue loop16;
                                                                                    }
                                                                                    loop58:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc17_ && param1))
                                                                                       {
                                                                                          §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc6_.§ c§());
                                                                                             addr295:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                break loop5;
                                                                                             }
                                                                                          }
                                                                                          addr352:
                                                                                       }
                                                                                       loop12:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr398:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_.§ c§());
                                                                                             addr356:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop49:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr358:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr359:
                                                                                                      loop13:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc17_ && param1))
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               loop14:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc17_ && this))
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_.§"!M§());
                                                                                                                        if(_loc18_ || param1)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(b2Body.b2_dynamicBody);
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       §§push(!§§pop());
                                                                                                                                    }
                                                                                                                                    addr332:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc18_ || this)
                                                                                                                                       {
                                                                                                                                          break loop13;
                                                                                                                                       }
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr328:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr324:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(b2Body.b2_dynamicBody);
                                                                                                                           }
                                                                                                                           addr389:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                           §§push(!§§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              addr396:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 continue loop49;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr385:
                                                                                                                  }
                                                                                                                  §§goto(addr395);
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr396);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop58;
                                                                                                         }
                                                                                                         §§goto(addr359);
                                                                                                      }
                                                                                                      addr303:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      addr291:
                                                                                                      addr291:
                                                                                                      this.§@x§ &= ~b2internal::@S;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§&C§);
                                                                  }
                                                                  §§goto(addr508);
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc17_ && _loc2_)
                                                         {
                                                            §§goto(addr332);
                                                         }
                                                         §§goto(addr303);
                                                         §§goto(addr295);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr745);
                                       }
                                       §§goto(addr246);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr291);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr395);
                        }
                        §§goto(addr153);
                     }
                     else
                     {
                        §§push(_loc5_.§"!M§());
                     }
                     §§goto(addr389);
                  }
                  §§goto(addr247);
               }
               §§goto(addr328);
            }
            §§goto(addr324);
         }
         §§goto(addr398);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §"!B§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(§7p§);
            while(true)
            {
               §§pop().§+X§.Set(this.§1!,§.GetShape());
               loop4:
               while(_loc4_ || param2)
               {
                  §§pop().§ y§ = param1;
                  loop5:
                  while(_loc4_)
                  {
                     §§push(§7p§);
                     loop6:
                     for(; _loc4_; §§push(§7p§),if(_loc3_ && _loc3_)
                     {
                        continue;
                     },if(!_loc3_)
                     {
                        §§goto(addr43);
                     },§§goto(addr96))
                     {
                        §§pop().§@$§ = param2;
                        while(true)
                        {
                           if(_loc4_)
                           {
                              continue loop6;
                           }
                           continue loop5;
                           addr43:
                           §§pop().§7!F§ = b2Settings.b2_linearSlop;
                           if(_loc4_ || this)
                           {
                              addr63:
                              if(_loc3_ && this)
                              {
                                 while(true)
                                 {
                                    break loop6;
                                    §§goto(addr63);
                                 }
                                 addr111:
                              }
                              return b2TimeOfImpact.§"5§(§7p§);
                           }
                        }
                        while(true)
                        {
                           §§pop().§4q§.Set(this.§7+§.GetShape());
                           §§goto(addr111);
                        }
                     }
                     continue loop4;
                  }
                  while(true)
                  {
                     §§goto(addr96);
                  }
               }
            }
         }
         §§goto(addr118);
      }
   }
}
