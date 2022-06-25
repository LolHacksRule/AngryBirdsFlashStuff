package §4]§
{
   import §#I§.b2Body;
   import §#I§.b2ContactListener;
   import §#I§.b2Fixture;
   import §&H§.b2Sweep;
   import §&H§.b2Transform;
   import §3b§.b2Shape;
   import §>!Z§.b2ContactID;
   import §>!Z§.b2Manifold;
   import §>!Z§.b2ManifoldPoint;
   import §>!Z§.b2TOIInput;
   import §>!Z§.b2TimeOfImpact;
   import §>!Z§.b2WorldManifold;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §"U§:uint = 1;
      
      b2internal static var §?8§:uint = 2;
      
      b2internal static var §0V§:uint = 4;
      
      b2internal static var §[§:uint = 8;
      
      b2internal static var §'!C§:uint = 16;
      
      b2internal static var §`!T§:uint = 32;
      
      b2internal static var §]!Y§:uint = 64;
      
      private static var §case §:b2TOIInput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §"U§ = 1;
            loop0:
            while(true)
            {
               §?8§ = 2;
               loop1:
               while(true)
               {
                  §0V§ = 4;
                  addr78:
                  if(_loc2_ && b2Contact)
                  {
                     continue;
                  }
                  §]!Y§ = 64;
                  while(true)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        addr57:
                        if(_loc2_ && _loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     loop5:
                     while(true)
                     {
                        if(_loc1_)
                        {
                           addr71:
                           if(_loc2_ && _loc1_)
                           {
                              while(true)
                              {
                                 §'!C§ = 16;
                                 §§goto(addr71);
                              }
                              continue loop0;
                              addr107:
                           }
                           §§goto(addr78);
                        }
                        while(true)
                        {
                           if(_loc1_)
                           {
                              §`!T§ = 32;
                              continue loop5;
                           }
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     §[§ = 8;
                     §§goto(addr107);
                     §§goto(addr57);
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      b2internal var §[B§:uint;
      
      b2internal var §+!3§:b2Contact;
      
      b2internal var §=!8§:b2Contact;
      
      b2internal var §=f§:b2ContactEdge;
      
      b2internal var §!!a§:b2ContactEdge;
      
      b2internal var §]V§:b2Fixture;
      
      b2internal var §!j§:b2Fixture;
      
      b2internal var §7!l§:b2Manifold;
      
      b2internal var §%!§:b2Manifold;
      
      b2internal var §]H§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§=f§ = new b2ContactEdge();
            loop0:
            while(true)
            {
               this.§!!a§ = new b2ContactEdge();
               while(true)
               {
                  this.§7!l§ = new b2Manifold();
                  loop2:
                  while(!_loc2_)
                  {
                     this.§%!§ = new b2Manifold();
                     while(true)
                     {
                        super();
                        if(_loc1_ || _loc1_)
                        {
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      public function §%!b§() : b2Manifold
      {
         return this.§7!l§;
      }
      
      public function §`@§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§]V§.GetBody();
         var _loc3_:b2Body = this.§!j§.GetBody();
         var _loc4_:b2Shape = this.§]V§.GetShape();
         var _loc5_:b2Shape = this.§!j§.GetShape();
         if(!_loc6_)
         {
            param1.§`!D§(this.§7!l§,_loc2_.§%J§(),_loc4_.§ !c§,_loc3_.§%J§(),_loc5_.§ !c§);
         }
      }
      
      public function §>5§() : Boolean
      {
         return (this.§[B§ & b2internal::'!C) == b2internal::'!C;
      }
      
      public function §-g§() : Boolean
      {
         return (this.§[B§ & b2internal::?8) == b2internal::?8;
      }
      
      public function §,!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::"U;
               if(!_loc2_)
               {
                  addr56:
               }
               return;
            }
            if(!_loc3_)
            {
               addr50:
               this.§[B§ |= b2internal::"U;
            }
            §§goto(addr56);
         }
         §§goto(addr50);
      }
      
      public function §%u§() : Boolean
      {
         return (this.§[B§ & b2internal::"U) == b2internal::"U;
      }
      
      public function §@@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::`!T;
               if(!(_loc2_ && this))
               {
                  addr61:
               }
               else
               {
                  addr77:
               }
               return;
            }
            if(_loc3_ || this)
            {
               this.§[B§ |= b2internal::`!T;
            }
            §§goto(addr77);
         }
         §§goto(addr61);
      }
      
      public function §<s§() : Boolean
      {
         return (this.§[B§ & b2internal::`!T) == b2internal::`!T;
      }
      
      public function §?!^§() : b2Contact
      {
         return this.§=!8§;
      }
      
      public function §`!a§() : b2Fixture
      {
         return this.§]V§;
      }
      
      public function §2!s§() : b2Fixture
      {
         return this.§!j§;
      }
      
      public function §+q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§[B§ |= b2internal::]!Y;
         }
      }
      
      b2internal function §2I§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§[B§ = b2internal::`!T;
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
                              while(_loc5_ || param1)
                              {
                                 addr46:
                                 if(_loc6_ && this)
                                 {
                                    continue;
                                 }
                                 loop12:
                                 while(§§pop())
                                 {
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       this.§[B§ |= b2internal::"U;
                                    }
                                    if(!(_loc6_ && param1))
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(param1.§%u§());
                                             loop8:
                                             while(_loc5_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      continue loop12;
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr95:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop7;
                                                         }
                                                         if(_loc5_ || param2)
                                                         {
                                                            §§push(param2.§%u§());
                                                            if(_loc5_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§goto(addr46);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§!j§ = null;
                                                               addr136:
                                                               this.§]V§ = null;
                                                            }
                                                            addr139:
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc6_ && param2)
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§goto(addr46);
                                                   §§push(Boolean(§§pop()));
                                                }
                                                continue loop2;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr136);
                                       }
                                       return;
                                       addr123:
                                    }
                                    §§goto(addr95);
                                 }
                                 var _loc3_:b2Body = param1.GetBody();
                                 var _loc4_:b2Body = param2.GetBody();
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    addr482:
                                    §§push(_loc3_.§ 5§() == b2Body.b2_dynamicBody);
                                    if(!_loc6_)
                                    {
                                       addr486:
                                       §§push(!§§pop() || _loc3_.§5"#§());
                                       §§push(!§§pop() || _loc3_.§5"#§());
                                       if(_loc5_)
                                       {
                                          if(!§§pop())
                                          {
                                             addr476:
                                             §§pop();
                                             addr477:
                                             §§push(_loc4_.§ 5§());
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(b2Body.b2_dynamicBody);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(!§§pop());
                                                         if(!_loc6_)
                                                         {
                                                            addr439:
                                                            §§push(§§pop());
                                                            if(_loc5_ || this)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr448:
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     §§pop();
                                                                     addr466:
                                                                     §§push(_loc4_.§5"#§());
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr391:
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr395:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr397:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          this.§[B§ |= b2internal::?8;
                                                                                          addr367:
                                                                                          this.§]V§ = param1;
                                                                                          addr371:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                this.§!j§ = param2;
                                                                                                this.§7!l§.§&!h§ = 0;
                                                                                                this.§+!3§ = null;
                                                                                                addr366:
                                                                                                addr361:
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   this.§=!8§ = null;
                                                                                                   addr337:
                                                                                                   this.§=f§.§8!m§ = null;
                                                                                                   addr343:
                                                                                                   addr338:
                                                                                                   addr336:
                                                                                                   §§push(this.§=f§);
                                                                                                   §§push(null);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§pop().§!!m§ = §§pop();
                                                                                                      addr325:
                                                                                                      if(!(_loc6_ && param2))
                                                                                                      {
                                                                                                         addr293:
                                                                                                         §§push(this.§=f§);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr298:
                                                                                                               §§push(null);
                                                                                                               if(_loc5_ || param1)
                                                                                                               {
                                                                                                                  §§pop().§`!w§ = §§pop();
                                                                                                                  addr306:
                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(this.§=f§);
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(null);
                                                                                                                              if(_loc5_ || param2)
                                                                                                                              {
                                                                                                                                 §§pop().§<!M§ = §§pop();
                                                                                                                                 addr287:
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    addr262:
                                                                                                                                    this.§!!a§.§8!m§ = null;
                                                                                                                                    addr261:
                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          addr249:
                                                                                                                                          §§push(this.§!!a§);
                                                                                                                                          §§push(null);
                                                                                                                                          if(!(_loc6_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             §§pop().§!!m§ = §§pop();
                                                                                                                                             addr257:
                                                                                                                                             §§push(this.§!!a§);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                addr219:
                                                                                                                                                §§pop().§`!w§ = null;
                                                                                                                                                addr220:
                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§!!a§);
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(null);
                                                                                                                                                            if(_loc5_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§<!M§ = §§pop();
                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr343);
                                                                                                                                                                           }
                                                                                                                                                                           return;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr287);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr257);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr220);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr249);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr219);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr261);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr257);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr397);
                                                                                                                                                }
                                                                                                                                                §§goto(addr261);
                                                                                                                                             }
                                                                                                                                             §§goto(addr249);
                                                                                                                                          }
                                                                                                                                          §§goto(addr262);
                                                                                                                                       }
                                                                                                                                       §§goto(addr366);
                                                                                                                                    }
                                                                                                                                    §§goto(addr306);
                                                                                                                                    addr289:
                                                                                                                                 }
                                                                                                                                 §§goto(addr338);
                                                                                                                              }
                                                                                                                              §§goto(addr298);
                                                                                                                           }
                                                                                                                           §§goto(addr293);
                                                                                                                        }
                                                                                                                        §§goto(addr371);
                                                                                                                     }
                                                                                                                     §§goto(addr361);
                                                                                                                  }
                                                                                                                  §§goto(addr325);
                                                                                                               }
                                                                                                               §§goto(addr343);
                                                                                                            }
                                                                                                            §§goto(addr336);
                                                                                                         }
                                                                                                         §§goto(addr343);
                                                                                                      }
                                                                                                      §§goto(addr366);
                                                                                                   }
                                                                                                   §§goto(addr337);
                                                                                                }
                                                                                                §§goto(addr477);
                                                                                             }
                                                                                             §§goto(addr489);
                                                                                          }
                                                                                          addr405:
                                                                                          §§goto(addr405);
                                                                                       }
                                                                                       §§goto(addr466);
                                                                                    }
                                                                                    §§goto(addr367);
                                                                                 }
                                                                                 §§goto(addr486);
                                                                              }
                                                                              §§goto(addr448);
                                                                           }
                                                                           §§goto(addr470);
                                                                        }
                                                                        §§goto(addr486);
                                                                     }
                                                                     §§goto(addr391);
                                                                  }
                                                                  §§goto(addr488);
                                                               }
                                                               §§goto(addr395);
                                                            }
                                                            §§goto(addr486);
                                                            addr438:
                                                         }
                                                         §§goto(addr448);
                                                      }
                                                      §§goto(addr476);
                                                   }
                                                   §§goto(addr439);
                                                }
                                             }
                                             §§goto(addr482);
                                          }
                                          §§goto(addr438);
                                       }
                                       §§goto(addr486);
                                    }
                                    §§goto(addr488);
                                 }
                                 §§goto(addr289);
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(!§§pop())
                     {
                        §§goto(addr84);
                     }
                     §§goto(addr136);
                  }
               }
            }
         }
         §§goto(addr139);
      }
      
      b2internal function §3!r§(param1:b2ContactListener) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:int = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:* = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§%!§;
         if(_loc18_)
         {
            this.§%!§ = this.§7!l§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§7!l§ = _loc2_;
                  do
                  {
                     this.§[B§ |= b2internal::`!T;
                  }
                  while(!_loc18_);
                  
                  if(_loc17_ && this)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc3_:* = false;
                  var _loc4_:* = (this.§[B§ & b2internal::'!C) == b2internal::'!C;
                  var _loc5_:b2Body = this.§]V§.m_body;
                  var _loc6_:b2Body = this.§!j§.m_body;
                  §§push(this.§]V§.§9v§.§]I§(this.§!j§.§9v§));
                  if(_loc18_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc17_ && param1))
                  {
                     §§push(this.§[B§);
                     if(!_loc17_)
                     {
                        §§push(b2internal::"U);
                        if(_loc18_ || _loc3_)
                        {
                           §§push(§§pop() & §§pop());
                           if(_loc18_)
                           {
                              if(§§pop())
                              {
                                 if(_loc18_ || param1)
                                 {
                                    §§push(_loc7_);
                                    if(_loc18_ || _loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc18_ || _loc3_)
                                          {
                                             addr153:
                                             _loc8_ = this.§]V§.GetShape();
                                             _loc9_ = this.§!j§.GetShape();
                                             _loc10_ = _loc5_.§%J§();
                                             _loc11_ = _loc6_.§%J§();
                                             if(_loc18_)
                                             {
                                                §§push(b2Shape.§]I§(_loc8_,_loc10_,_loc9_,_loc11_));
                                                if(_loc18_ || _loc3_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                _loc3_ = §§pop();
                                             }
                                          }
                                          loop58:
                                          while(true)
                                          {
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§7!l§);
                                                   addr218:
                                                   loop38:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§&!h§);
                                                      addr219:
                                                      loop65:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() > 0);
                                                         if(_loc18_)
                                                         {
                                                            if(_loc18_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               while(_loc18_)
                                                               {
                                                                  continue loop65;
                                                               }
                                                               loop7:
                                                               while(!_loc17_)
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     continue loop38;
                                                                  }
                                                                  loop49:
                                                                  while(true)
                                                                  {
                                                                     if(_loc18_ || param1)
                                                                     {
                                                                        §§push(_loc6_.§ 5§());
                                                                        if(_loc18_ || _loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(b2Body.b2_dynamicBody);
                                                                              if(_loc17_ && param1)
                                                                              {
                                                                                 break loop49;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    loop73:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc18_ || _loc2_)
                                                                                       {
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             loop50:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc18_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr339:
                                                                                                            loop52:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_.§5"#§());
                                                                                                               addr275:
                                                                                                               loop53:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr277:
                                                                                                                     if(!(_loc17_ && param1))
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           loop55:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    this.§[B§ |= b2internal::?8;
                                                                                                                                    break loop7;
                                                                                                                                 }
                                                                                                                                 addr287:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr263:
                                                                                                                                 this.§[B§ &= ~b2internal::?8;
                                                                                                                                 loop4:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr229:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       addr231:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc17_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop55;
                                                                                                                                          }
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             continue loop73;
                                                                                                                                          }
                                                                                                                                          if(_loc18_ || this)
                                                                                                                                          {
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc17_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc17_)
                                                                                                                                                      {
                                                                                                                                                         this.Evaluate();
                                                                                                                                                         continue loop7;
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                                addr503:
                                                                                                                                                this.§7!l§.§&!h§ = 0;
                                                                                                                                                if(!_loc17_)
                                                                                                                                                {
                                                                                                                                                   addr727:
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                   loop67:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                      loop68:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                         {
                                                                                                                                                            loop69:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc5_.SetAwake(true);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc6_.SetAwake(true);
                                                                                                                                                                  loop71:
                                                                                                                                                                  while(!(_loc17_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr688:
                                                                                                                                                                        loop37:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr689:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                              loop10:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§[B§ &= ~b2internal::'!C;
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop12:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_);
                                                                                                                                                                                          loop13:
                                                                                                                                                                                          while(!(_loc17_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(false);
                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   addr601:
                                                                                                                                                                                                   if(_loc17_ && param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(true);
                                                                                                                                                                                                   if(_loc18_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc18_ || param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop67;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                         addr573:
                                                                                                                                                                                                         if(!(_loc18_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop30:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        param1.EndContact(this);
                                                                                                                                                                                                                        addr589:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§[B§ & b2internal::"U);
                                                                                                                                                                                                                                 break loop58;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr508:
                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                              addr512:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr650:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              loop24:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                 addr594:
                                                                                                                                                                                                                                 while(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr601);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 loop20:
                                                                                                                                                                                                                                 while(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop21:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       loop22:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          param1.BeginContact(this);
                                                                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                                                                          addr629:
                                                                                                                                                                                                                                          loop29:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc18_ || param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop71;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc3_);
                                                                                                                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr553:
                                                                                                                                                                                                                                                   §§push(false);
                                                                                                                                                                                                                                                   if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr566:
                                                                                                                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                            if(!(_loc17_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr573);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                               continue loop29;
                                                                                                                                                                                                                                                               §§goto(addr566);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop68;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr628);
                                                                                                                                                                                                                                                               §§goto(addr553);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr628:
                                                                                                                                                                                                                                                            addr625:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop21;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                  addr667:
                                                                                                                                                                                                                                                                  loop17:
                                                                                                                                                                                                                                                                  while(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr641:
                                                                                                                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(true);
                                                                                                                                                                                                                                                                           addr642:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop20;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr641:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           this.§[B§ |= b2internal::'!C;
                                                                                                                                                                                                                                                                           break loop17;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr691:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop12;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop69;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr665:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr641);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr642);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr625);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr666);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr566);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop71;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop13;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr586:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr512);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr641);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr594);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop68;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr566);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr665);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr534:
                                                                                                                                                                                       if(_loc17_ && _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr508);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr691);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop37;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr688);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr726);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   addr376:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            addr378:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.§5"#§());
                                                                                                                                                               addr343:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  continue loop73;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr377:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         break loop53;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr375:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             continue loop49;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop55;
                                                                                                                                    }
                                                                                                                                    §§goto(addr263);
                                                                                                                                 }
                                                                                                                                 addr271:
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr285:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop52;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  break loop50;
                                                                                                                  §§goto(addr277);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr338:
                                                                                                      }
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                   §§goto(addr376);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr326);
                                                                                                }
                                                                                                §§goto(addr347);
                                                                                             }
                                                                                             addr326:
                                                                                          }
                                                                                          §§goto(addr377);
                                                                                       }
                                                                                       §§goto(addr343);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr338);
                                                                              }
                                                                           }
                                                                           addr304:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(b2Body.b2_dynamicBody);
                                                                              break loop49;
                                                                           }
                                                                           addr369:
                                                                        }
                                                                     }
                                                                     §§goto(addr378);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc17_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr374:
                                                                     }
                                                                     §§goto(addr375);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr229);
                                                               }
                                                               addr226:
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                loop59:
                                                while(true)
                                                {
                                                   §§push(_loc12_);
                                                   if(_loc18_ || param1)
                                                   {
                                                      §§push(this.§7!l§.§&!h§);
                                                      if(!(_loc17_ && _loc3_))
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc18_)
                                                            {
                                                               §§goto(addr727);
                                                            }
                                                            §§goto(addr650);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§7!l§);
                                                            if(_loc18_ || param1)
                                                            {
                                                               (_loc13_ = §§pop().§ !C§[_loc12_]).§-J§ = 0;
                                                               if(_loc18_ || param1)
                                                               {
                                                                  _loc13_.§]+§ = 0;
                                                               }
                                                               _loc14_ = _loc13_.m_id;
                                                               if(_loc18_ || param1)
                                                               {
                                                                  §§push(0);
                                                                  if(!(_loc17_ && this))
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     if(_loc18_ || _loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc15_);
                                                                        }
                                                                        addr473:
                                                                     }
                                                                     addr478:
                                                                     _loc12_++;
                                                                     continue;
                                                                  }
                                                                  for(; §§pop() < this.§%!§.§&!h§; §§goto(addr473))
                                                                  {
                                                                     if((_loc16_ = this.§%!§.§ !C§[_loc15_]).m_id.key == _loc14_.key)
                                                                     {
                                                                        if(!(_loc17_ && param1))
                                                                        {
                                                                           _loc13_.§-J§ = _loc16_.§-J§;
                                                                           if(!_loc17_)
                                                                           {
                                                                              _loc13_.§]+§ = _loc16_.§]+§;
                                                                              if(!_loc17_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop59;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     _loc15_++;
                                                                     if(_loc18_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop59;
                                                                  }
                                                               }
                                                               §§goto(addr478);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr503);
                                                            }
                                                         }
                                                         §§goto(addr726);
                                                      }
                                                      addr518:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         if(_loc18_)
                                                         {
                                                            if(_loc18_)
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  if(_loc18_)
                                                                  {
                                                                     param1.PreSolve(this,this.§%!§);
                                                                     addr532:
                                                                     if(_loc18_)
                                                                     {
                                                                        §§goto(addr534);
                                                                     }
                                                                     §§goto(addr667);
                                                                  }
                                                                  §§goto(addr629);
                                                               }
                                                               §§goto(addr586);
                                                            }
                                                            §§goto(addr589);
                                                         }
                                                         §§goto(addr532);
                                                      }
                                                      §§goto(addr508);
                                                   }
                                                   break loop58;
                                                }
                                             }
                                             §§goto(addr508);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr518);
                                          }
                                          addr213:
                                       }
                                       §§push(this.§7!l§);
                                       if(!_loc17_)
                                       {
                                          §§pop().§&!h§ = 0;
                                          if(_loc18_)
                                          {
                                             §§goto(addr689);
                                          }
                                          else
                                          {
                                             §§goto(addr271);
                                          }
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr374);
                                 }
                                 §§goto(addr213);
                              }
                              else
                              {
                                 §§push(_loc5_.§ 5§());
                              }
                              §§goto(addr369);
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr313);
                     }
                     §§goto(addr304);
                  }
                  §§goto(addr153);
               }
            }
         }
         §§goto(addr65);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §&!=§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(§case §);
            while(true)
            {
               §§pop().§,N§.Set(this.§]V§.GetShape());
               addr117:
               while(true)
               {
                  §§push(§case §);
                  addr105:
                  while(true)
                  {
                     §§pop().§#y§.Set(this.§!j§.GetShape());
                     loop3:
                     while(true)
                     {
                        §§push(§case §);
                        loop4:
                        while(true)
                        {
                           §§pop().§,!+§ = param1;
                           addr95:
                           while(!(_loc4_ && this))
                           {
                              §§push(§case §);
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            addr112:
         }
         while(true)
         {
            §§push(§case §);
            if(_loc3_)
            {
               if(_loc3_)
               {
                  if(!_loc4_)
                  {
                     §§goto(addr39);
                  }
                  else
                  {
                     §§goto(addr112);
                  }
               }
               §§goto(addr105);
            }
            §§goto(addr69);
         }
         §§goto(addr66);
      }
   }
}
