package §'"6§
{
   import §!"3§.b2Shape;
   import §'"-§.b2ContactID;
   import §'"-§.b2Manifold;
   import §'"-§.b2ManifoldPoint;
   import §'"-§.b2TOIInput;
   import §'"-§.b2TimeOfImpact;
   import §'"-§.b2WorldManifold;
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Sweep;
   import §6!^§.b2Transform;
   import §6"1§.b2Body;
   import §6"1§.b2ContactListener;
   import §6"1§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §["A§:uint = 1;
      
      b2internal static var §,!X§:uint = 2;
      
      b2internal static var §>7§:uint = 4;
      
      b2internal static var §?!$§:uint = 8;
      
      b2internal static var §;1§:uint = 16;
      
      b2internal static var § !<§:uint = 32;
      
      b2internal static var §!",§:uint = 64;
      
      private static var §<!n§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §["A§ = 1;
            while(true)
            {
               §,!X§ = 2;
               while(true)
               {
                  §>7§ = 4;
                  loop2:
                  while(true)
                  {
                     §?!$§ = 8;
                     while(true)
                     {
                        §;1§ = 16;
                        addr82:
                        while(!_loc1_)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
            addr112:
         }
         while(true)
         {
            § !<§ = 32;
            while(_loc2_)
            {
               §!",§ = 64;
               for(; !(_loc1_ && _loc2_); §<!n§ = new b2TOIInput(),if(_loc2_)
               {
                  return;
               })
               {
                  if(!_loc1_)
                  {
                     continue;
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr82);
         }
      }
      
      b2internal var §2"B§:uint;
      
      b2internal var §;<§:b2Contact;
      
      b2internal var §?!g§:b2Contact;
      
      b2internal var §[!C§:b2ContactEdge;
      
      b2internal var §9q§:b2ContactEdge;
      
      b2internal var §4!?§:b2Fixture;
      
      b2internal var §3!B§:b2Fixture;
      
      b2internal var §<!+§:b2Manifold;
      
      b2internal var §=%§:b2Manifold;
      
      b2internal var §;"K§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§[!C§ = new b2ContactEdge();
            while(true)
            {
               this.§9q§ = new b2ContactEdge();
               addr87:
               while(true)
               {
                  this.§<!+§ = new b2Manifold();
               }
            }
            addr92:
         }
         loop2:
         while(true)
         {
            this.§=%§ = new b2Manifold();
            while(true)
            {
               if(!(_loc2_ && this))
               {
                  if(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr92);
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr87);
         }
      }
      
      public function §9"Z§() : b2Manifold
      {
         return this.§<!+§;
      }
      
      public function §'!§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§4!?§.GetBody();
         var _loc3_:b2Body = this.§3!B§.GetBody();
         var _loc4_:b2Shape = this.§4!?§.GetShape();
         var _loc5_:b2Shape = this.§3!B§.GetShape();
         if(!(_loc6_ && this))
         {
            param1.§6!Q§(this.§<!+§,_loc2_.§!"0§(),_loc4_.§0!_§,_loc3_.§!"0§(),_loc5_.§0!_§);
         }
      }
      
      public function §3"I§() : Boolean
      {
         return (this.§2"B§ & b2internal::;1) == b2internal::;1;
      }
      
      public function §>"2§() : Boolean
      {
         return (this.§2"B§ & b2internal::,!X) == b2internal::,!X;
      }
      
      public function §<"C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!param1)
            {
               this.§2"B§ &= ~b2internal::["A;
               if(!(_loc2_ || _loc2_))
               {
                  addr76:
               }
               return;
            }
            if(_loc2_)
            {
               this.§2"B§ |= b2internal::["A;
            }
         }
         §§goto(addr76);
      }
      
      public function §0d§() : Boolean
      {
         return (this.§2"B§ & b2internal::["A) == b2internal::["A;
      }
      
      public function §]!,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§2"B§ &= ~b2internal:: !<;
               if(_loc2_ || param1)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     addr70:
                     this.§2"B§ |= b2internal:: !<;
                     addr76:
                  }
                  return;
               }
               §§goto(addr76);
            }
         }
         §§goto(addr70);
      }
      
      public function §;!S§() : Boolean
      {
         return (this.§2"B§ & b2internal:: !<) == b2internal:: !<;
      }
      
      public function §>!v§() : b2Contact
      {
         return this.§?!g§;
      }
      
      public function §]!A§() : b2Fixture
      {
         return this.§4!?§;
      }
      
      public function §3!]§() : b2Fixture
      {
         return this.§3!B§;
      }
      
      public function §^e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§2"B§ |= b2internal::!",;
         }
      }
      
      b2internal function §<"U§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§2"B§ = b2internal:: !<;
            loop0:
            while(true)
            {
               §§push(!param1);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  addr160:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr162:
                           while(true)
                           {
                              §§push(!param2);
                           }
                        }
                        addr161:
                     }
                     loop5:
                     while(true)
                     {
                        loop6:
                        while(!§§pop())
                        {
                           addr80:
                           while(true)
                           {
                              §§push(param1.§0d§());
                              addr83:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr84:
                                 while(true)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr161);
                                 }
                                 §§goto(addr162);
                              }
                           }
                           addr44:
                           if(_loc5_ && param2)
                           {
                              continue;
                           }
                           addr52:
                           §§push(Boolean(§§pop()));
                           if(_loc6_ || this)
                           {
                              while(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc5_ && this)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          if(!(_loc5_ && param2))
                                          {
                                             if(_loc5_ && _loc3_)
                                             {
                                                break;
                                             }
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(param2.§0d§());
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr30:
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§goto(addr44);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr83);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop11;
                                                         §§goto(addr30);
                                                      }
                                                      addr107:
                                                   }
                                                }
                                                §§goto(addr52);
                                             }
                                             else
                                             {
                                                addr146:
                                                if(_loc6_)
                                                {
                                                   break loop5;
                                                }
                                             }
                                             §§goto(addr162);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§goto(addr80);
                                             }
                                             addr132:
                                          }
                                          §§goto(addr83);
                                       }
                                       return;
                                       addr137:
                                    }
                                    this.§2"B§ |= b2internal::["A;
                                    addr76:
                                    if(!_loc6_)
                                    {
                                       break loop6;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr80);
                                 }
                                 §§goto(addr76);
                              }
                              var _loc3_:b2Body = param1.GetBody();
                              var _loc4_:b2Body = param2.GetBody();
                              if(_loc6_ || this)
                              {
                                 addr501:
                                 §§push(_loc3_.§>!f§() != b2Body.b2_dynamicBody);
                                 if(!(_loc3_.§>!f§() != b2Body.b2_dynamicBody))
                                 {
                                    addr504:
                                    §§pop();
                                    addr505:
                                    §§push(_loc3_.§>!l§());
                                    if(_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          addr492:
                                          §§push(Boolean(§§pop()));
                                          if(!Boolean(§§pop()))
                                          {
                                             addr494:
                                             §§pop();
                                             addr495:
                                             §§push(_loc4_.§>!f§());
                                             if(!(_loc5_ && this))
                                             {
                                                §§push(b2Body.b2_dynamicBody);
                                                if(_loc6_)
                                                {
                                                   addr446:
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      addr445:
                                                      §§push(!§§pop());
                                                   }
                                                   §§push(§§pop());
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            addr457:
                                                            if(_loc6_ || param2)
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§pop();
                                                                  addr482:
                                                                  §§push(_loc4_.§>!l§());
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!(_loc5_ && param2))
                                                                        {
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              addr404:
                                                                              §§push(Boolean(§§pop()));
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr406:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr408:
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       this.§2"B§ |= b2internal::,!X;
                                                                                       addr377:
                                                                                       this.§4!?§ = param1;
                                                                                       this.§3!B§ = param2;
                                                                                       this.§<!+§.§0,§ = 0;
                                                                                       addr369:
                                                                                       addr381:
                                                                                       addr376:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          this.§;<§ = null;
                                                                                          addr361:
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             this.§?!g§ = null;
                                                                                             addr354:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                addr348:
                                                                                                this.§[!C§.§-"G§ = null;
                                                                                                addr349:
                                                                                                addr347:
                                                                                                §§push(this.§[!C§);
                                                                                                §§push(null);
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   §§pop().§ " § = §§pop();
                                                                                                   addr341:
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr320:
                                                                                                      this.§[!C§.§3u§ = null;
                                                                                                      addr321:
                                                                                                      addr319:
                                                                                                      if(_loc6_ || param1)
                                                                                                      {
                                                                                                         §§push(this.§[!C§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  §§push(null);
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                     {
                                                                                                                        §§pop().§[!!§ = §§pop();
                                                                                                                        addr313:
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           addr279:
                                                                                                                           this.§9q§.§-"G§ = null;
                                                                                                                           addr278:
                                                                                                                           if(_loc6_ || param2)
                                                                                                                           {
                                                                                                                              addr271:
                                                                                                                              this.§9q§.§ " § = null;
                                                                                                                              addr272:
                                                                                                                              addr270:
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 addr215:
                                                                                                                                 §§push(this.§9q§);
                                                                                                                                 if(_loc6_ || param2)
                                                                                                                                 {
                                                                                                                                    addr223:
                                                                                                                                    §§push(null);
                                                                                                                                    if(!(_loc5_ && param1))
                                                                                                                                    {
                                                                                                                                       §§pop().§3u§ = §§pop();
                                                                                                                                       addr231:
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || this)
                                                                                                                                             {
                                                                                                                                                if(_loc6_ || param1)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§9q§);
                                                                                                                                                      if(_loc6_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            §§push(null);
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§[!!§ = §§pop();
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr482);
                                                                                                                                                                        }
                                                                                                                                                                        return;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr349);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr231);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr279);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr223);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr278);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr215);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr495);
                                                                                                                                                }
                                                                                                                                                §§goto(addr408);
                                                                                                                                             }
                                                                                                                                             §§goto(addr361);
                                                                                                                                          }
                                                                                                                                          §§goto(addr279);
                                                                                                                                       }
                                                                                                                                       §§goto(addr272);
                                                                                                                                    }
                                                                                                                                    §§goto(addr271);
                                                                                                                                 }
                                                                                                                                 §§goto(addr270);
                                                                                                                              }
                                                                                                                              §§goto(addr313);
                                                                                                                           }
                                                                                                                           §§goto(addr341);
                                                                                                                        }
                                                                                                                        §§goto(addr321);
                                                                                                                     }
                                                                                                                     §§goto(addr349);
                                                                                                                  }
                                                                                                                  §§goto(addr320);
                                                                                                               }
                                                                                                               §§goto(addr347);
                                                                                                            }
                                                                                                            §§goto(addr349);
                                                                                                         }
                                                                                                         §§goto(addr319);
                                                                                                      }
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                   §§goto(addr369);
                                                                                                }
                                                                                                §§goto(addr348);
                                                                                             }
                                                                                             §§goto(addr381);
                                                                                          }
                                                                                          §§goto(addr376);
                                                                                       }
                                                                                       addr421:
                                                                                       §§goto(addr421);
                                                                                    }
                                                                                    §§goto(addr505);
                                                                                 }
                                                                                 §§goto(addr377);
                                                                              }
                                                                              §§goto(addr457);
                                                                           }
                                                                           §§goto(addr501);
                                                                        }
                                                                        §§goto(addr492);
                                                                     }
                                                                     §§goto(addr446);
                                                                  }
                                                                  §§goto(addr404);
                                                               }
                                                               §§goto(addr504);
                                                            }
                                                            §§goto(addr494);
                                                         }
                                                         §§goto(addr406);
                                                      }
                                                      §§goto(addr501);
                                                   }
                                                   §§goto(addr492);
                                                }
                                             }
                                             §§goto(addr501);
                                          }
                                          §§goto(addr445);
                                       }
                                       §§goto(addr501);
                                    }
                                 }
                                 §§goto(addr492);
                              }
                              §§goto(addr348);
                              addr59:
                           }
                           §§goto(addr84);
                        }
                        this.§4!?§ = null;
                        §§goto(addr146);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      b2internal function §7J§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§=%§;
         if(_loc17_)
         {
            this.§=%§ = this.§<!+§;
            loop0:
            while(true)
            {
               addr64:
               while(true)
               {
                  this.§<!+§ = _loc2_;
                  addr68:
                  while(!_loc18_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§2"B§ |= b2internal:: !<;
            if(_loc17_ || _loc2_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr64);
            }
            §§goto(addr68);
         }
         var _loc3_:* = false;
         var _loc4_:* = (this.§2"B§ & b2internal::;1) == b2internal::;1;
         var _loc5_:b2Body = this.§4!?§.m_body;
         var _loc6_:b2Body = this.§3!B§.m_body;
         §§push(this.§4!?§.§5"&§.§9e§(this.§3!B§.§5"&§));
         if(_loc17_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!_loc18_)
         {
            §§push(this.§2"B§);
            if(_loc17_ || _loc3_)
            {
               §§push(b2internal::["A);
               if(!_loc18_)
               {
                  §§push(§§pop() & §§pop());
                  if(!(_loc18_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc18_ && this))
                        {
                           §§push(_loc7_);
                           if(_loc17_ || param1)
                           {
                              if(§§pop())
                              {
                                 if(!_loc18_)
                                 {
                                    _loc8_ = this.§4!?§.GetShape();
                                    _loc9_ = this.§3!B§.GetShape();
                                    _loc10_ = _loc5_.§!"0§();
                                    _loc11_ = _loc6_.§!"0§();
                                    if(!_loc18_)
                                    {
                                       §§push(b2Shape.§9e§(_loc8_,_loc10_,_loc9_,_loc11_));
                                       if(_loc17_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       addr182:
                                       §§push(this.§<!+§);
                                       if(_loc17_)
                                       {
                                          §§pop().§0,§ = 0;
                                          if(!(_loc18_ && _loc2_))
                                          {
                                             loop22:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop23:
                                                while(true)
                                                {
                                                   if(_loc17_ || param1)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         this.§2"B§ &= ~b2internal::;1;
                                                         while(true)
                                                         {
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               loop26:
                                                               while(_loc17_ || _loc3_)
                                                               {
                                                                  §§push(false);
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop43:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr677:
                                                                                 addr723:
                                                                                 while(true)
                                                                                 {
                                                                                    addr636:
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr639:
                                                                                       §§push(true);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr642:
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             continue loop43;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop26;
                                                                                 }
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_.SetAwake(true);
                                                                                    addr727:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_.SetAwake(true);
                                                                                       addr720:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr676:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop30:
                                                                                 while(_loc17_ || _loc2_)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       param1.BeginContact(this);
                                                                                       loop31:
                                                                                       while(_loc17_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc4_);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(true);
                                                                                                loop34:
                                                                                                for(; _loc17_; if(_loc18_ && param1)
                                                                                                {
                                                                                                   continue;
                                                                                                },addr566:,§§push(§§pop() == §§pop()),if(!(_loc18_ && _loc3_))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               if(_loc17_ || _loc2_)
                                                                                                               {
                                                                                                                  addr584:
                                                                                                                  param1.EndContact(this);
                                                                                                                  loop41:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc18_ && this))
                                                                                                                     {
                                                                                                                        loop42:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§2"B§ & b2internal::["A);
                                                                                                                           addr511:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr512:
                                                                                                                              if(§§pop() != 0)
                                                                                                                              {
                                                                                                                                 break loop42;
                                                                                                                              }
                                                                                                                              continue loop41;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr502:
                                                                                                                        return;
                                                                                                                        addr506:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr624:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§goto(addr548);
                                                                                                                           }
                                                                                                                           §§goto(addr566);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                           addr715:
                                                                                                                        }
                                                                                                                        continue loop41;
                                                                                                                     }
                                                                                                                     §§goto(addr605);
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop31;
                                                                                                         }
                                                                                                         §§goto(addr727);
                                                                                                      }
                                                                                                      §§goto(addr506);
                                                                                                   }
                                                                                                   addr573:
                                                                                                },while(true)
                                                                                                {
                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§goto(addr624);
                                                                                                   }
                                                                                                   break;
                                                                                                   §§goto(addr566);
                                                                                                },§§goto(addr636))
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   while(_loc17_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      continue loop27;
                                                                                                      if(_loc17_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(false);
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            continue loop34;
                                                                                                         }
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr642);
                                                                                                }
                                                                                                §§goto(addr639);
                                                                                             }
                                                                                             §§goto(addr605);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr720);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§2"B§ |= b2internal::;1;
                                                                                          §§goto(addr715);
                                                                                       }
                                                                                       addr709:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr677);
                                                                              }
                                                                              §§goto(addr595);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr676);
                                                                  }
                                                               }
                                                               continue loop23;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr709);
                                                   }
                                                   else
                                                   {
                                                      addr722:
                                                      §§push(_loc4_);
                                                   }
                                                   §§goto(addr723);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             loop65:
                                             while(true)
                                             {
                                                §§push(_loc5_.§>!l§());
                                                loop66:
                                                while(true)
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop67:
                                                      while(true)
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop8:
                                                            while(!_loc18_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_.§>!f§());
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(b2Body.b2_dynamicBody);
                                                                           if(!_loc17_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() == §§pop());
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc18_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 loop12:
                                                                                 while(_loc17_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             addr300:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   this.§2"B§ &= ~b2internal::,!X;
                                                                                                   loop48:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     loop55:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.Evaluate();
                                                                                                                        addr261:
                                                                                                                        addr268:
                                                                                                                        while(_loc18_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue loop65;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           loop53:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§<!+§);
                                                                                                                              addr224:
                                                                                                                              loop46:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().§0,§);
                                                                                                                                 addr225:
                                                                                                                                 addr251:
                                                                                                                                 loop5:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() > 0);
                                                                                                                                    if(_loc18_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    if(_loc17_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc18_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             break loop5;
                                                                                                                                          }
                                                                                                                                          §§goto(addr261);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                continue loop11;
                                                                                                                                             }
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          addr342:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             break loop48;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr285:
                                                                                                                                    }
                                                                                                                                    continue loop46;
                                                                                                                                 }
                                                                                                                                 loop4:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(0);
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc12_ = §§pop();
                                                                                                                                          if(!(_loc17_ || param1))
                                                                                                                                          {
                                                                                                                                             continue loop4;
                                                                                                                                          }
                                                                                                                                          if(!_loc17_)
                                                                                                                                          {
                                                                                                                                             continue loop55;
                                                                                                                                          }
                                                                                                                                          if(_loc18_ && param1)
                                                                                                                                          {
                                                                                                                                             continue loop48;
                                                                                                                                          }
                                                                                                                                          if(_loc17_)
                                                                                                                                          {
                                                                                                                                             if(true)
                                                                                                                                             {
                                                                                                                                                addr473:
                                                                                                                                                §§push(_loc12_);
                                                                                                                                             }
                                                                                                                                             continue loop53;
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§<!+§.§0,§);
                                                                                                                                                if(_loc17_ || this)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() < §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§<!+§);
                                                                                                                                                      if(_loc17_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         (_loc13_ = §§pop().§4!_§[_loc12_]).§#!5§ = 0;
                                                                                                                                                         if(_loc17_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            _loc13_.§@"%§ = 0;
                                                                                                                                                         }
                                                                                                                                                         _loc14_ = _loc13_.m_id;
                                                                                                                                                         if(_loc17_)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            if(_loc17_)
                                                                                                                                                            {
                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                               if(_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  addr467:
                                                                                                                                                                  addr468:
                                                                                                                                                                  if(_loc15_ >= this.§=%§.§0,§)
                                                                                                                                                                  {
                                                                                                                                                                     addr472:
                                                                                                                                                                     _loc12_++;
                                                                                                                                                                     §§goto(addr473);
                                                                                                                                                                  }
                                                                                                                                                                  if((_loc16_ = this.§=%§.§4!_§[_loc15_]).m_id.key == _loc14_.key)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc13_.§#!5§ = _loc16_.§#!5§;
                                                                                                                                                                        if(_loc17_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc13_.§@"%§ = _loc16_.§@"%§;
                                                                                                                                                                           if(_loc17_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr472);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr473);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr467);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr473);
                                                                                                                                                                  }
                                                                                                                                                                  _loc15_++;
                                                                                                                                                                  if(!(_loc18_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr467);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr473);
                                                                                                                                                                  addr419:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr472);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr468);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr419);
                                                                                                                                                      }
                                                                                                                                                      addr497:
                                                                                                                                                      §§pop().§0,§ = 0;
                                                                                                                                                      if(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         addr721:
                                                                                                                                                         §§goto(addr722);
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr543);
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc18_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr721);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr584);
                                                                                                                                                }
                                                                                                                                                §§goto(addr512);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr511);
                                                                                                                                       addr200:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr225);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr374:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        break loop8;
                                                                                                                     }
                                                                                                                     addr374:
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        continue loop16;
                                                                                                                     }
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  addr297:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr497);
                                                                                                         }
                                                                                                         addr252:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc18_ && _loc2_)
                                                                                                            {
                                                                                                               break loop48;
                                                                                                               addr314:
                                                                                                            }
                                                                                                            this.§2"B§ |= b2internal::,!X;
                                                                                                            while(_loc17_ || _loc2_)
                                                                                                            {
                                                                                                               §§goto(addr252);
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         addr301:
                                                                                                      }
                                                                                                      §§goto(addr314);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    continue loop8;
                                                                                 }
                                                                                 addr376:
                                                                                 §§pop();
                                                                                 continue loop65;
                                                                              }
                                                                              continue loop66;
                                                                           }
                                                                           continue loop66;
                                                                        }
                                                                        addr370:
                                                                        while(true)
                                                                        {
                                                                           §§push(b2Body.b2_dynamicBody);
                                                                           break loop10;
                                                                        }
                                                                     }
                                                                     addr372:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        addr373:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr374);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr337);
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  continue loop67;
                                                               }
                                                               §§goto(addr376);
                                                               §§goto(addr374);
                                                            }
                                                            continue loop67;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr373);
                                                }
                                             }
                                             addr377:
                                          }
                                          §§goto(addr543);
                                       }
                                       §§goto(addr224);
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr251);
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr268);
                     }
                     else
                     {
                        §§goto(addr370);
                        §§push(_loc5_.§>!f§());
                     }
                     §§goto(addr370);
                  }
                  §§goto(addr200);
               }
               §§goto(addr372);
            }
            §§goto(addr370);
         }
         §§goto(addr377);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §2"5§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§<!n§);
            loop0:
            while(true)
            {
               §§pop().§>!j§.Set(this.§4!?§.GetShape());
               loop1:
               while(true)
               {
                  §§push(§<!n§);
                  loop2:
                  while(true)
                  {
                     §§pop().§@!a§.Set(this.§3!B§.GetShape());
                     loop3:
                     while(_loc4_)
                     {
                        §§push(§<!n§);
                        loop4:
                        for(; _loc4_; if(!(_loc4_ || param2))
                        {
                           continue;
                        },§§goto(addr48))
                        {
                           §§pop().§"8§ = param1;
                           loop5:
                           while(true)
                           {
                              §§push(§<!n§);
                              loop6:
                              while(_loc4_)
                              {
                                 §§pop().§;!"§ = param2;
                                 while(true)
                                 {
                                    §§push(§<!n§);
                                    if(_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    continue loop6;
                                    addr48:
                                    §§pop().§#!s§ = b2Settings.b2_linearSlop;
                                    if(!(_loc3_ && param1))
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 return b2TimeOfImpact.§0!j§(§<!n§);
                              }
                              continue loop0;
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr79);
      }
   }
}
