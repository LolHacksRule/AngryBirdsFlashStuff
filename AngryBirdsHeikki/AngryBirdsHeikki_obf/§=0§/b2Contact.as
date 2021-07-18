package §=0§
{
   import §!4§.b2ContactID;
   import §!4§.b2Manifold;
   import §!4§.b2ManifoldPoint;
   import §!4§.b2TOIInput;
   import §!4§.b2TimeOfImpact;
   import §!4§.b2WorldManifold;
   import §3!R§.b2Body;
   import §3!R§.b2ContactListener;
   import §3!R§.b2Fixture;
   import §6A§.b2Sweep;
   import §6A§.b2Transform;
   import §7q§.b2Shape;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §&8§:uint = 1;
      
      b2internal static var §`!P§:uint = 2;
      
      b2internal static var §!3§:uint = 4;
      
      b2internal static var §<!D§:uint = 8;
      
      b2internal static var §^r§:uint = 16;
      
      b2internal static var each:uint = 32;
      
      b2internal static var §^-§:uint = 64;
      
      private static var §%M§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&8§ = 1;
            loop0:
            while(true)
            {
               §`!P§ = 2;
               while(true)
               {
                  §!3§ = 4;
                  while(!_loc1_)
                  {
                     continue loop0;
                     addr43:
                     if(_loc2_ || _loc2_)
                     {
                        §%M§ = new b2TOIInput();
                        addr60:
                        if(!_loc2_)
                        {
                           while(!(_loc1_ && _loc2_))
                           {
                              §§goto(addr43);
                              §§goto(addr60);
                           }
                           loop5:
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §^-§ = 64;
                                 continue;
                              }
                              addr79:
                              while(true)
                              {
                                 each = 32;
                                 continue loop5;
                              }
                           }
                           addr36:
                           while(true)
                           {
                              §^r§ = 16;
                              §§goto(addr79);
                           }
                           addr84:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      b2internal var §5!5§:uint;
      
      b2internal var §8s§:b2Contact;
      
      b2internal var §>W§:b2Contact;
      
      b2internal var §0!=§:b2ContactEdge;
      
      b2internal var §^!?§:b2ContactEdge;
      
      b2internal var §&4§:b2Fixture;
      
      b2internal var §;,§:b2Fixture;
      
      b2internal var §1`§:b2Manifold;
      
      b2internal var §@G§:b2Manifold;
      
      b2internal var §5j§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§0!=§ = new b2ContactEdge();
         }
         loop0:
         do
         {
            this.§^!?§ = new b2ContactEdge();
            while(true)
            {
               this.§1`§ = new b2Manifold();
               while(!(_loc1_ && _loc1_))
               {
                  this.§@G§ = new b2Manifold();
                  while(!_loc1_)
                  {
                     super();
                     if(!(_loc1_ && this))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(_loc1_);
         
      }
      
      public function §0&§() : b2Manifold
      {
         return this.§1`§;
      }
      
      public function § else§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = this.§&4§.GetBody();
         var _loc3_:b2Body = this.§;,§.GetBody();
         var _loc4_:b2Shape = this.§&4§.GetShape();
         var _loc5_:b2Shape = this.§;,§.GetShape();
         if(_loc6_ || param1)
         {
            param1.§';§(this.§1`§,_loc2_.§6V§(),_loc4_.§'m§,_loc3_.§6V§(),_loc5_.§'m§);
         }
      }
      
      public function §1h§() : Boolean
      {
         return (this.§5!5§ & b2internal::^r) == b2internal::^r;
      }
      
      public function §,!,§() : Boolean
      {
         return (this.§5!5§ & b2internal::`!P) == b2internal::`!P;
      }
      
      public function §@!_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§5!5§ &= ~b2internal::&8;
               if(!_loc3_)
               {
                  addr67:
               }
               return;
            }
            if(!_loc2_)
            {
               addr61:
               this.§5!5§ |= b2internal::&8;
            }
            §§goto(addr67);
         }
         §§goto(addr61);
      }
      
      public function §4!B§() : Boolean
      {
         return (this.§5!5§ & b2internal::&8) == b2internal::&8;
      }
      
      public function §>!$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§5!5§ &= ~b2internal::each;
               if(!_loc2_)
               {
                  addr46:
               }
               else
               {
                  addr72:
               }
               return;
            }
            if(_loc3_ || param1)
            {
               this.§5!5§ |= b2internal::each;
            }
            §§goto(addr72);
         }
         §§goto(addr46);
      }
      
      public function §;%§() : Boolean
      {
         return (this.§5!5§ & b2internal::each) == b2internal::each;
      }
      
      public function §5!J§() : b2Contact
      {
         return this.§>W§;
      }
      
      public function §#!D§() : b2Fixture
      {
         return this.§&4§;
      }
      
      public function §''§() : b2Fixture
      {
         return this.§;,§;
      }
      
      public function §[!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§5!5§ |= b2internal::^-;
         }
      }
      
      b2internal function §;!C§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§5!5§ = b2internal::each;
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
                        while(true)
                        {
                           §§pop();
                           addr131:
                           while(true)
                           {
                              §§push(!param2);
                           }
                        }
                        addr130:
                     }
                     while(true)
                     {
                        loop6:
                        for(; !§§pop(); if(!(_loc5_ || this))
                        {
                           continue;
                        },§§goto(addr70),§§push(Boolean(§§pop())))
                        {
                           loop7:
                           while(true)
                           {
                              §§push(param1.§4!B§());
                              if(!_loc6_)
                              {
                                 continue loop6;
                              }
                              addr70:
                              loop8:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_ && this)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop11:
                                       while(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            continue loop7;
                                                         }
                                                         addr124:
                                                         this.§;,§ = null;
                                                      }
                                                      if(!(_loc5_ || param2))
                                                      {
                                                         break loop6;
                                                      }
                                                      return;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      §§push(param2.§4!B§());
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr81:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop10;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr131);
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop0;
                                             }
                                             this.§5!5§ |= b2internal::&8;
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   break loop11;
                                                }
                                                continue loop7;
                                             }
                                             addr55:
                                          }
                                          §§goto(addr55);
                                       }
                                       var _loc3_:b2Body = param1.GetBody();
                                       var _loc4_:b2Body = param2.GetBody();
                                       if(_loc5_ || param1)
                                       {
                                          §§push(_loc3_.§0i§());
                                          loop13:
                                          while(true)
                                          {
                                             §§push(b2Body.b2_dynamicBody);
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!_loc6_)
                                                {
                                                   §§push(!§§pop());
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            addr483:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr484:
                                                               while(true)
                                                               {
                                                                  addr447:
                                                                  §§push(_loc3_.§,!Q§());
                                                                  addr450:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                            addr483:
                                                         }
                                                         while(true)
                                                         {
                                                            loop18:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop19:
                                                               while(!(_loc6_ && this))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!(_loc5_ || _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§5!5§ |= b2internal::`!P;
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                this.§&4§ = param1;
                                                                                                addr355:
                                                                                                loop34:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§;,§ = param2;
                                                                                                   loop35:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         this.§1`§.§;6§ = 0;
                                                                                                         loop36:
                                                                                                         while(!_loc6_)
                                                                                                         {
                                                                                                            this.§8s§ = null;
                                                                                                            loop37:
                                                                                                            while(_loc5_)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  this.§>W§ = null;
                                                                                                                  continue loop35;
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                               loop47:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc5_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue loop37;
                                                                                                                  }
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  addr300:
                                                                                                                  §§push(this.§0!=§);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr251:
                                                                                                                     §§push(null);
                                                                                                                     if(!(_loc6_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§pop().§=!"§ = §§pop();
                                                                                                                           loop48:
                                                                                                                           while(!(_loc6_ && param2))
                                                                                                                           {
                                                                                                                              §§push(this.§^!?§);
                                                                                                                              loop49:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(null);
                                                                                                                                 loop50:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().§-!$§ = §§pop();
                                                                                                                                    addr228:
                                                                                                                                    loop51:
                                                                                                                                    while(!(_loc6_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(this.§^!?§);
                                                                                                                                       loop52:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(null);
                                                                                                                                          loop53:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().§ true§ = §§pop();
                                                                                                                                             loop54:
                                                                                                                                             while(_loc5_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§^!?§);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      continue loop49;
                                                                                                                                                   }
                                                                                                                                                   continue loop52;
                                                                                                                                                   addr209:
                                                                                                                                                   §§push(this.§^!?§);
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§push(null);
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§pop().§=!"§ = §§pop();
                                                                                                                                                            if(!(_loc5_ || param2))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc5_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop54;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop48;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr209);
                                                                                                                                                               }
                                                                                                                                                               loop44:
                                                                                                                                                               while(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§0!=§);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr280:
                                                                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(null);
                                                                                                                                                                           while(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§+m§ = §§pop();
                                                                                                                                                                              continue loop47;
                                                                                                                                                                              §§goto(addr251);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§ true§ = §§pop();
                                                                                                                                                                              continue loop44;
                                                                                                                                                                           }
                                                                                                                                                                           addr305:
                                                                                                                                                                           addr288:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(null);
                                                                                                                                                                              addr313:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop().§-!$§ = §§pop();
                                                                                                                                                                                 break loop44;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr280);
                                                                                                                                                                           }
                                                                                                                                                                           addr312:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                     §§goto(addr300);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr305);
                                                                                                                                                                     §§goto(addr273);
                                                                                                                                                                  }
                                                                                                                                                                  addr273:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr304);
                                                                                                                                                               }
                                                                                                                                                               addr198:
                                                                                                                                                            }
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               return;
                                                                                                                                                            }
                                                                                                                                                            continue loop47;
                                                                                                                                                         }
                                                                                                                                                         continue loop50;
                                                                                                                                                      }
                                                                                                                                                      continue loop53;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§+m§ = §§pop();
                                                                                                                                                      §§goto(addr198);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop49;
                                                                                                                                             }
                                                                                                                                             continue loop51;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    loop26:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_.§,!Q§());
                                                                                                                                       if(!(_loc6_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ || this))
                                                                                                                                          {
                                                                                                                                             continue loop18;
                                                                                                                                          }
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                       }
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                       addr438:
                                                                                                                                       while(_loc5_ || param2)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          continue loop26;
                                                                                                                                       }
                                                                                                                                       §§goto(addr450);
                                                                                                                                    }
                                                                                                                                    §§goto(addr484);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop35;
                                                                                                                           addr262:
                                                                                                                        }
                                                                                                                        §§goto(addr313);
                                                                                                                     }
                                                                                                                     §§goto(addr288);
                                                                                                                  }
                                                                                                                  §§goto(addr273);
                                                                                                               }
                                                                                                               continue loop36;
                                                                                                            }
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      continue loop34;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr351:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr484);
                                                                                          }
                                                                                          §§goto(addr447);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                              addr401:
                                                                           }
                                                                           §§goto(addr438);
                                                                        }
                                                                        continue loop19;
                                                                        addr427:
                                                                        while(true)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop13;
                                                                     §§goto(addr385);
                                                                  }
                                                               }
                                                               continue loop16;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr483);
                                                addr417:
                                                §§push(b2Body.b2_dynamicBody);
                                                if(_loc6_ && param2)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr427);
                                                §§push(§§pop() == §§pop());
                                             }
                                          }
                                       }
                                       §§goto(addr355);
                                       addr41:
                                    }
                                    §§goto(addr81);
                                 }
                                 else
                                 {
                                    §§goto(addr130);
                                 }
                              }
                              continue loop2;
                           }
                        }
                        this.§&4§ = null;
                        §§goto(addr124);
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      b2internal function §?!§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§@G§;
         if(_loc17_)
         {
            this.§@G§ = this.§1`§;
         }
         loop0:
         while(true)
         {
            addr59:
            addr76:
            while(true)
            {
               this.§1`§ = _loc2_;
               continue loop0;
            }
            var _loc3_:* = false;
            var _loc4_:* = (this.§5!5§ & b2internal::^r) == b2internal::^r;
            var _loc5_:b2Body = this.§&4§.m_body;
            var _loc6_:b2Body = this.§;,§.m_body;
            addr105:
            §§push(this.§&4§.§ !+§.§+!;§(this.§;,§.§ !+§));
            if(!_loc18_)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(!_loc18_)
            {
               §§push(this.§5!5§);
               if(!(_loc18_ && _loc2_))
               {
                  §§push(b2internal::&8);
                  if(!_loc18_)
                  {
                     §§push(§§pop() & §§pop());
                     if(!(_loc18_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(!_loc18_)
                           {
                              §§push(_loc7_);
                              if(!_loc18_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc18_ && _loc2_))
                                    {
                                       addr142:
                                       _loc8_ = this.§&4§.GetShape();
                                       _loc9_ = this.§;,§.GetShape();
                                       _loc10_ = _loc5_.§6V§();
                                       _loc11_ = _loc6_.§6V§();
                                       if(!_loc18_)
                                       {
                                          §§push(b2Shape.§+!;§(_loc8_,_loc10_,_loc9_,_loc11_));
                                          if(_loc17_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                          addr172:
                                          §§push(this.§1`§);
                                          if(!(_loc18_ && _loc3_))
                                          {
                                             §§pop().§;6§ = 0;
                                             if(!_loc18_)
                                             {
                                                loop24:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   while(true)
                                                   {
                                                      if(!(_loc18_ && _loc2_))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            this.§5!5§ &= ~b2internal::^r;
                                                            loop26:
                                                            while(true)
                                                            {
                                                               loop27:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     loop29:
                                                                     while(true)
                                                                     {
                                                                        if(_loc17_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           loop30:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop36:
                                                                                    while(true)
                                                                                    {
                                                                                       loop37:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop38:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      param1.BeginContact(this);
                                                                                                      loop39:
                                                                                                      while(_loc17_ || _loc2_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     break loop39;
                                                                                                                  }
                                                                                                                  addr689:
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               loop48:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  §§pop();
                                                                                                                  loop51:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc17_ || this)
                                                                                                                     {
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           continue loop48;
                                                                                                                        }
                                                                                                                        if(!(_loc17_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop37;
                                                                                                                        }
                                                                                                                        §§push(false);
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    continue loop37;
                                                                                                                                 }
                                                                                                                                 addr649:
                                                                                                                                 while(!(_loc18_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    continue loop36;
                                                                                                                                 }
                                                                                                                                 continue loop29;
                                                                                                                              }
                                                                                                                              continue loop31;
                                                                                                                              addr609:
                                                                                                                           }
                                                                                                                           addr578:
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(_loc18_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 continue loop48;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr627:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§5!5§ & b2internal::&8);
                                                                                                                                 addr521:
                                                                                                                                 while(§§pop() == 0)
                                                                                                                                 {
                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                    {
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          break loop38;
                                                                                                                                       }
                                                                                                                                       param1.PreSolve(this,this.§@G§);
                                                                                                                                    }
                                                                                                                                    §§goto(addr537);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              addr512:
                                                                                                                           }
                                                                                                                           loop45:
                                                                                                                           while(_loc17_)
                                                                                                                           {
                                                                                                                              param1.EndContact(this);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc17_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    continue loop51;
                                                                                                                                 }
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    continue loop38;
                                                                                                                                 }
                                                                                                                                 addr537:
                                                                                                                                 if(!(_loc17_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!(_loc17_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop45;
                                                                                                                                 }
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr512);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc17_ || param1)
                                                                                                                                    {
                                                                                                                                       break loop29;
                                                                                                                                    }
                                                                                                                                    addr744:
                                                                                                                                    _loc5_.SetAwake(true);
                                                                                                                                    addr747:
                                                                                                                                    _loc6_.SetAwake(true);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop30;
                                                                                                                           }
                                                                                                                           continue loop39;
                                                                                                                           return;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr578);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr609);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         continue loop30;
                                                                                                      }
                                                                                                      addr690:
                                                                                                   }
                                                                                                   §§goto(addr747);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§5!5§ |= b2internal::^r;
                                                                                                      break loop38;
                                                                                                   }
                                                                                                   addr712:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr602);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr689);
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr743:
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§goto(addr744);
                                                                     }
                                                                     continue loop24;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr712);
                                                      }
                                                      else
                                                      {
                                                         addr742:
                                                         §§push(_loc4_);
                                                      }
                                                      §§goto(addr743);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                loop23:
                                                while(true)
                                                {
                                                   §§push(_loc6_.§,!Q§());
                                                   loop20:
                                                   while(true)
                                                   {
                                                      if(_loc17_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop21:
                                                            while(true)
                                                            {
                                                               if(_loc17_ || _loc3_)
                                                               {
                                                                  if(_loc17_ || _loc3_)
                                                                  {
                                                                     addr303:
                                                                     if(§§pop())
                                                                     {
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           this.§5!5§ |= b2internal::`!P;
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 addr239:
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc17_ || _loc2_))
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop55:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc17_ || _loc3_))
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                this.Evaluate();
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc17_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   loop5:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§1`§);
                                                                                                      addr222:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§;6§);
                                                                                                         loop6:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() > 0);
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               loop7:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     addr349:
                                                                                                                     §§push(_loc5_.§,!Q§());
                                                                                                                     loop11:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           loop12:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr353:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 loop14:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          addr356:
                                                                                                                                          §§push(_loc6_.§0i§());
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(b2Body.b2_dynamicBody);
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   if(_loc17_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(!§§pop());
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr338:
                                                                                                                                                            addr376:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop14;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr344:
                                                                                                                                                                     §§pop();
                                                                                                                                                                     continue loop23;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr303);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr376:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               continue loop11;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr337:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                         }
                                                                                                                                                         addr364:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop12;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr376);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr338);
                                                                                                                                                }
                                                                                                                                                addr321:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                   addr363:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr362:
                                                                                                                                             }
                                                                                                                                             §§goto(addr364);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr360:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr360:
                                                                                                                                          }
                                                                                                                                          §§goto(addr362);
                                                                                                                                       }
                                                                                                                                       addr355:
                                                                                                                                    }
                                                                                                                                    §§goto(addr337);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr363);
                                                                                                                     }
                                                                                                                     addr377:
                                                                                                                  }
                                                                                                                  §§goto(addr356);
                                                                                                                  addr195:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc12_ = §§pop();
                                                                                                                     if(!(_loc17_ || this))
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     if(!(_loc17_ || this))
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     if(!(_loc17_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop55;
                                                                                                                     }
                                                                                                                     loop61:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        loop62:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc12_);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§push(this.§1`§.§;6§);
                                                                                                                              if(_loc17_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(§§pop() >= §§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc17_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr741:
                                                                                                                                       §§goto(addr742);
                                                                                                                                       §§push(_loc3_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr690);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(this.§1`§);
                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                    {
                                                                                                                                       (_loc13_ = §§pop().§7! §[_loc12_]).§#!f§ = 0;
                                                                                                                                       if(_loc17_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          _loc13_.§`!W§ = 0;
                                                                                                                                       }
                                                                                                                                       _loc14_ = _loc13_.m_id;
                                                                                                                                       if(_loc17_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(0);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             _loc15_ = §§pop();
                                                                                                                                             if(_loc17_ || this)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                }
                                                                                                                                                addr477:
                                                                                                                                             }
                                                                                                                                             addr482:
                                                                                                                                             _loc12_++;
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          for(; §§pop() < this.§@G§.§;6§; §§goto(addr477))
                                                                                                                                          {
                                                                                                                                             if((_loc16_ = this.§@G§.§7! §[_loc15_]).m_id.key == _loc14_.key)
                                                                                                                                             {
                                                                                                                                                if(_loc17_ || param1)
                                                                                                                                                {
                                                                                                                                                   _loc13_.§#!f§ = _loc16_.§#!f§;
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      _loc13_.§`!W§ = _loc16_.§`!W§;
                                                                                                                                                      if(_loc18_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             _loc15_++;
                                                                                                                                             if(_loc17_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             continue loop62;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr482);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr507:
                                                                                                                                       §§pop().§;6§ = 0;
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr741);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr631);
                                                                                                                              }
                                                                                                                              §§goto(addr522);
                                                                                                                           }
                                                                                                                           break loop61;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr521);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                            §§goto(addr344);
                                                                                                         }
                                                                                                         §§goto(addr239);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop8;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr349);
                                                                                 }
                                                                                 §§goto(addr355);
                                                                              }
                                                                              §§goto(addr507);
                                                                           }
                                                                        }
                                                                     }
                                                                     this.§5!5§ &= ~b2internal::`!P;
                                                                     §§goto(addr282);
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                               §§goto(addr353);
                                                            }
                                                         }
                                                         addr288:
                                                      }
                                                      §§goto(addr338);
                                                   }
                                                }
                                             }
                                             §§goto(addr631);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr262);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr288);
                           }
                           §§goto(addr142);
                        }
                        else
                        {
                           §§goto(addr360);
                           §§push(_loc5_.§0i§());
                        }
                        §§goto(addr360);
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr321);
               }
               §§goto(addr360);
            }
            §§goto(addr217);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §;!§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§%M§);
            loop0:
            while(true)
            {
               §§pop().§package§.Set(this.§&4§.GetShape());
               loop1:
               while(true)
               {
                  §§push(§%M§);
                  loop2:
                  while(true)
                  {
                     §§pop().§@!?§.Set(this.§;,§.GetShape());
                     while(true)
                     {
                        §§push(§%M§);
                        addr84:
                        while(true)
                        {
                           §§pop().static = param1;
                           addr86:
                           while(_loc4_)
                           {
                           }
                           continue loop1;
                        }
                        loop8:
                        for(; _loc4_ || param2; §§pop().§%!&§ = b2Settings.b2_linearSlop,if(!(_loc3_ && param1))
                        {
                           if(!(_loc4_ || this))
                           {
                              §§goto(addr86);
                           }
                           return b2TimeOfImpact.§=!I§(§%M§);
                           addr63:
                        })
                        {
                           addr81:
                           §§push(§%M§);
                           if(_loc4_)
                           {
                              continue;
                           }
                           addr66:
                           while(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§pop().§!W§ = param2;
                                    continue loop8;
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                              §§goto(addr81);
                           }
                           §§goto(addr84);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr66);
         }
         §§goto(addr63);
      }
   }
}
