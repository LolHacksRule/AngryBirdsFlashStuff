package §7a§
{
   import § D§.b2Body;
   import § D§.b2ContactListener;
   import § D§.b2Fixture;
   import §&!-§.b2ContactID;
   import §&!-§.b2Manifold;
   import §&!-§.b2ManifoldPoint;
   import §&!-§.b2TOIInput;
   import §&!-§.b2TimeOfImpact;
   import §&!-§.b2WorldManifold;
   import §0!'§.b2Shape;
   import §8>§.b2Sweep;
   import §8>§.b2Transform;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §6o§:uint = 1;
      
      b2internal static var §+>§:uint = 2;
      
      b2internal static var §]!i§:uint = 4;
      
      b2internal static var §"+§:uint = 8;
      
      b2internal static var §9!+§:uint = 16;
      
      b2internal static var §#"§:uint = 32;
      
      b2internal static var §2!t§:uint = 64;
      
      private static var §&,§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §6o§ = 1;
            while(true)
            {
               §+>§ = 2;
               addr69:
               if(_loc1_)
               {
                  continue;
               }
               §&,§ = new b2TOIInput();
               addr81:
               if(_loc2_)
               {
                  if(_loc1_)
                  {
                     loop5:
                     while(!_loc1_)
                     {
                        §2!t§ = 64;
                        while(true)
                        {
                           if(_loc2_ || b2Contact)
                           {
                              if(!_loc1_)
                              {
                                 addr62:
                                 if(!(_loc2_ || b2Contact))
                                 {
                                    break;
                                 }
                                 §§goto(addr69);
                              }
                              while(true)
                              {
                                 §9!+§ = 16;
                              }
                              addr98:
                           }
                           while(true)
                           {
                              §#"§ = 32;
                              continue loop5;
                           }
                           §§goto(addr81);
                        }
                        while(true)
                        {
                           §]!i§ = 4;
                           break loop5;
                           §§goto(addr62);
                        }
                     }
                     while(true)
                     {
                        §"+§ = 8;
                        §§goto(addr98);
                     }
                  }
                  return;
               }
               §§goto(addr53);
            }
         }
         §§goto(addr108);
      }
      
      b2internal var § !<§:uint;
      
      b2internal var §4!7§:b2Contact;
      
      b2internal var §7n§:b2Contact;
      
      b2internal var §#f§:b2ContactEdge;
      
      b2internal var §?§:b2ContactEdge;
      
      b2internal var §48§:b2Fixture;
      
      b2internal var §[=§:b2Fixture;
      
      b2internal var §?K§:b2Manifold;
      
      b2internal var §%=§:b2Manifold;
      
      b2internal var §7!5§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§#f§ = new b2ContactEdge();
            while(true)
            {
               this.§?§ = new b2ContactEdge();
            }
            addr92:
         }
         loop1:
         while(true)
         {
            this.§?K§ = new b2Manifold();
            while(_loc1_)
            {
               this.§%=§ = new b2Manifold();
               while(!_loc2_)
               {
                  continue loop1;
                  super();
                  if(_loc1_ || this)
                  {
                     return;
                  }
               }
            }
            §§goto(addr92);
         }
      }
      
      public function §[2§() : b2Manifold
      {
         return this.§?K§;
      }
      
      public function §5!§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = this.§48§.GetBody();
         var _loc3_:b2Body = this.§[=§.GetBody();
         var _loc4_:b2Shape = this.§48§.GetShape();
         var _loc5_:b2Shape = this.§[=§.GetShape();
         if(_loc6_ || param1)
         {
            param1.§7R§(this.§?K§,_loc2_.§+!C§(),_loc4_.§6q§,_loc3_.§+!C§(),_loc5_.§6q§);
         }
      }
      
      public function §8]§() : Boolean
      {
         return (this.§ !<§ & b2internal::9!+) == b2internal::9!+;
      }
      
      public function §?y§() : Boolean
      {
         return (this.§ !<§ & b2internal::+>) == b2internal::+>;
      }
      
      public function §#!<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(!param1)
            {
               this.§ !<§ &= ~b2internal::6o;
               if(_loc2_ || _loc3_)
               {
                  if(_loc3_ && _loc3_)
                  {
                     addr75:
                     this.§ !<§ |= b2internal::6o;
                     addr81:
                  }
                  else
                  {
                     addr72:
                  }
                  return;
               }
               §§goto(addr81);
            }
            §§goto(addr75);
         }
         §§goto(addr72);
      }
      
      public function §0?§() : Boolean
      {
         return (this.§ !<§ & b2internal::6o) == b2internal::6o;
      }
      
      public function §!!s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§ !<§ &= ~b2internal::#";
               if(_loc2_)
               {
                  if(!_loc2_)
                  {
                     addr50:
                     this.§ !<§ |= b2internal::#";
                     addr56:
                  }
                  return;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr50);
      }
      
      public function §18§() : Boolean
      {
         return (this.§ !<§ & b2internal::#") == b2internal::#";
      }
      
      public function §2!g§() : b2Contact
      {
         return this.§7n§;
      }
      
      public function §5J§() : b2Fixture
      {
         return this.§48§;
      }
      
      public function §@!X§() : b2Fixture
      {
         return this.§[=§;
      }
      
      public function §?d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§ !<§ |= b2internal::2!t;
         }
      }
      
      b2internal function §#[§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc3_))
         {
            this.§ !<§ = b2internal::#";
            loop0:
            while(true)
            {
               §§push(!param1);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  addr145:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr147:
                           while(true)
                           {
                              §§push(!param2);
                           }
                        }
                        addr146:
                     }
                     addr133:
                     loop5:
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 this.§48§ = null;
                                 break;
                              }
                              break;
                           }
                           addr70:
                           addr70:
                           addr40:
                           while(true)
                           {
                              §§push(param1.§0?§());
                              if(_loc6_ || param1)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop1;
                           }
                           if(!(_loc6_ || param1))
                           {
                              continue;
                           }
                           loop11:
                           while(§§pop())
                           {
                              if(!_loc5_)
                              {
                                 addr51:
                                 if(!(_loc5_ && param2))
                                 {
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          while(true)
                                          {
                                             this.§ !<§ |= b2internal::6o;
                                             addr68:
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   break loop11;
                                                }
                                             }
                                          }
                                          addr62:
                                       }
                                       else
                                       {
                                          addr122:
                                          if(!(_loc5_ && this))
                                          {
                                             break loop5;
                                          }
                                          §§goto(addr147);
                                       }
                                    }
                                    §§goto(addr70);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       if(_loc5_ && _loc3_)
                                       {
                                          break loop6;
                                       }
                                       continue loop0;
                                       §§goto(addr51);
                                    }
                                    addr100:
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr68);
                           }
                           var _loc3_:b2Body = param1.GetBody();
                           var _loc4_:b2Body = param2.GetBody();
                           if(_loc6_)
                           {
                              addr492:
                              §§push(_loc3_.§0!@§() != b2Body.b2_dynamicBody);
                              if(!(_loc3_.§0!@§() != b2Body.b2_dynamicBody))
                              {
                                 addr494:
                                 §§pop();
                                 addr495:
                                 §§push(Boolean(_loc3_.§=!s§()));
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr476:
                                    §§push(§§pop());
                                    if(!(_loc5_ && this))
                                    {
                                       if(!§§pop())
                                       {
                                          addr484:
                                          §§pop();
                                          addr485:
                                          §§push(_loc4_.§0!@§());
                                          if(!_loc5_)
                                          {
                                             §§push(b2Body.b2_dynamicBody);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(!(_loc5_ && this))
                                                {
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      addr432:
                                                      §§push(!§§pop());
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         addr439:
                                                         §§push(§§pop());
                                                         if(_loc6_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr444:
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§pop();
                                                                  addr452:
                                                                  §§push(_loc4_.§=!s§());
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr396:
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr398:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr400:
                                                                                    this.§ !<§ |= b2internal::+>;
                                                                                 }
                                                                                 this.§48§ = param1;
                                                                                 this.§[=§ = param2;
                                                                                 this.§?K§.§]B§ = 0;
                                                                                 this.§4!7§ = null;
                                                                                 this.§7n§ = null;
                                                                                 addr373:
                                                                                 addr357:
                                                                                 addr368:
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    addr332:
                                                                                    this.§#f§.§58§ = null;
                                                                                    addr333:
                                                                                    addr331:
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       addr321:
                                                                                       §§push(this.§#f§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr324:
                                                                                          §§pop().§7!J§ = null;
                                                                                          addr325:
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr314:
                                                                                             §§push(this.§#f§);
                                                                                             §§push(null);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§pop().§0e§ = §§pop();
                                                                                                addr317:
                                                                                                §§push(this.§#f§);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!(_loc5_ && param1))
                                                                                                   {
                                                                                                      §§push(null);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            §§pop().§<!-§ = §§pop();
                                                                                                            addr293:
                                                                                                            if(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr266:
                                                                                                                     this.§?§.§58§ = null;
                                                                                                                     addr265:
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr224:
                                                                                                                        §§push(this.§?§);
                                                                                                                        if(_loc6_ || param2)
                                                                                                                        {
                                                                                                                           addr242:
                                                                                                                           §§pop().§7!J§ = null;
                                                                                                                           if(_loc6_ || this)
                                                                                                                           {
                                                                                                                              if(_loc6_ || param1)
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       addr203:
                                                                                                                                       §§push(this.§?§);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          addr206:
                                                                                                                                          §§pop().§0e§ = null;
                                                                                                                                          addr207:
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§?§);
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         §§push(null);
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_ || param2)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§<!-§ = §§pop();
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_ && param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr373);
                                                                                                                                                                     }
                                                                                                                                                                     return;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr207);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr266);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr242);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr206);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr203);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr485);
                                                                                                                                                }
                                                                                                                                                §§goto(addr452);
                                                                                                                                             }
                                                                                                                                             §§goto(addr293);
                                                                                                                                          }
                                                                                                                                          §§goto(addr242);
                                                                                                                                       }
                                                                                                                                       §§goto(addr224);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr400);
                                                                                                                              }
                                                                                                                              §§goto(addr317);
                                                                                                                           }
                                                                                                                           §§goto(addr266);
                                                                                                                        }
                                                                                                                        §§goto(addr265);
                                                                                                                     }
                                                                                                                     §§goto(addr325);
                                                                                                                  }
                                                                                                                  §§goto(addr495);
                                                                                                               }
                                                                                                               §§goto(addr357);
                                                                                                            }
                                                                                                            §§goto(addr333);
                                                                                                         }
                                                                                                         §§goto(addr324);
                                                                                                      }
                                                                                                      §§goto(addr314);
                                                                                                   }
                                                                                                   §§goto(addr321);
                                                                                                }
                                                                                                §§goto(addr314);
                                                                                             }
                                                                                             §§goto(addr332);
                                                                                          }
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                    §§goto(addr368);
                                                                                 }
                                                                                 addr363:
                                                                                 §§goto(addr363);
                                                                              }
                                                                              §§goto(addr495);
                                                                           }
                                                                           §§goto(addr484);
                                                                        }
                                                                        §§goto(addr432);
                                                                     }
                                                                     §§goto(addr444);
                                                                  }
                                                                  §§goto(addr396);
                                                               }
                                                               §§goto(addr494);
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                         §§goto(addr476);
                                                      }
                                                   }
                                                   §§goto(addr492);
                                                }
                                                §§goto(addr432);
                                             }
                                          }
                                          §§goto(addr492);
                                       }
                                       §§goto(addr439);
                                    }
                                    §§goto(addr492);
                                 }
                                 §§goto(addr484);
                              }
                              §§goto(addr476);
                           }
                           §§goto(addr484);
                        }
                        this.§[=§ = null;
                        §§goto(addr122);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      b2internal function §5>§(param1:b2ContactListener) : void
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
         var _loc15_:int = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§%=§;
         if(_loc18_)
         {
            this.§%=§ = this.§?K§;
            loop0:
            while(true)
            {
               addr67:
               while(true)
               {
                  this.§?K§ = _loc2_;
                  continue loop0;
               }
            }
            addr76:
         }
         while(true)
         {
            this.§ !<§ |= b2internal::#";
            if(_loc17_)
            {
               continue;
            }
            if(!(_loc17_ && _loc3_))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr76);
            }
            §§goto(addr67);
         }
         var _loc3_:* = false;
         var _loc4_:* = (this.§ !<§ & b2internal::9!+) == b2internal::9!+;
         var _loc5_:b2Body = this.§48§.m_body;
         var _loc6_:b2Body = this.§[=§.m_body;
         §§push(this.§48§.§@!$§.§'V§(this.§[=§.§@!$§));
         if(!_loc17_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc18_)
         {
            §§push(this.§ !<§);
            if(!(_loc17_ && _loc2_))
            {
               §§push(b2internal::6o);
               if(!(_loc17_ && param1))
               {
                  §§push(§§pop() & §§pop());
                  if(!(_loc17_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!(_loc17_ && _loc3_))
                        {
                           §§push(_loc7_);
                           if(!_loc17_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc17_ && param1))
                                 {
                                    _loc8_ = this.§48§.GetShape();
                                    _loc9_ = this.§[=§.GetShape();
                                    _loc10_ = _loc5_.§+!C§();
                                    _loc11_ = _loc6_.§+!C§();
                                    if(!(_loc17_ && param1))
                                    {
                                       §§push(b2Shape.§'V§(_loc8_,_loc10_,_loc9_,_loc11_));
                                       if(_loc18_ || this)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       addr193:
                                       §§push(this.§?K§);
                                       if(!(_loc17_ && _loc2_))
                                       {
                                          §§pop().§]B§ = 0;
                                          if(!(_loc17_ && this))
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
                                                      this.§ !<§ &= ~b2internal::9!+;
                                                      loop29:
                                                      while(true)
                                                      {
                                                         if(!(_loc17_ && _loc2_))
                                                         {
                                                            addr704:
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
                                                                     if(_loc18_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           addr580:
                                                                           if(_loc17_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           loop46:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop50:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§ !<§ & b2internal::6o);
                                                                                    addr522:
                                                                                    while(true)
                                                                                    {
                                                                                       addr523:
                                                                                       if(§§pop() == 0)
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                param1.PreSolve(this,this.§%=§);
                                                                                                addr533:
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§goto(addr513);
                                                                                                      }
                                                                                                      break loop50;
                                                                                                   }
                                                                                                   addr589:
                                                                                                   loop47:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         addr591:
                                                                                                         if(!(_loc17_ && param1))
                                                                                                         {
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr611:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               break loop46;
                                                                                                            }
                                                                                                            §§goto(addr591);
                                                                                                         }
                                                                                                         addr659:
                                                                                                      }
                                                                                                      loop49:
                                                                                                      for(; _loc18_; while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop49;
                                                                                                      })
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            if(!(_loc17_ && param1))
                                                                                                            {
                                                                                                               §§push(false);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     addr556:
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        addr564:
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(_loc18_ || this)
                                                                                                                        {
                                                                                                                           if(!_loc17_)
                                                                                                                           {
                                                                                                                              if(_loc17_ && _loc3_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       break loop50;
                                                                                                                                    }
                                                                                                                                    addr728:
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr729:
                                                                                                                                 if(§§pop() != §§pop())
                                                                                                                                 {
                                                                                                                                    addr730:
                                                                                                                                    _loc5_.SetAwake(true);
                                                                                                                                    _loc6_.SetAwake(true);
                                                                                                                                    break loop47;
                                                                                                                                    addr733:
                                                                                                                                 }
                                                                                                                                 continue loop27;
                                                                                                                                 addr673:
                                                                                                                              }
                                                                                                                              §§goto(addr580);
                                                                                                                           }
                                                                                                                           break loop46;
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        addr650:
                                                                                                                        while(!_loc17_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(!_loc17_)
                                                                                                                                 {
                                                                                                                                    param1.BeginContact(this);
                                                                                                                                    §§goto(addr659);
                                                                                                                                 }
                                                                                                                                 while(!(_loc17_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    continue loop54;
                                                                                                                                 }
                                                                                                                                 §§goto(addr730);
                                                                                                                                 addr654:
                                                                                                                                 addr714:
                                                                                                                              }
                                                                                                                              §§goto(addr611);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop28;
                                                                                                                        §§goto(addr556);
                                                                                                                     }
                                                                                                                     addr649:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     continue loop49;
                                                                                                                  }
                                                                                                                  continue loop46;
                                                                                                               }
                                                                                                               addr639:
                                                                                                            }
                                                                                                            §§goto(addr650);
                                                                                                         }
                                                                                                         §§goto(addr564);
                                                                                                      }
                                                                                                      break;
                                                                                                      addr614:
                                                                                                      addr672:
                                                                                                      while(!(_loc17_ && _loc2_))
                                                                                                      {
                                                                                                         if(!(_loc17_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                            {
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  §§goto(addr639);
                                                                                                                  §§push(§§pop());
                                                                                                               }
                                                                                                               while(_loc18_)
                                                                                                               {
                                                                                                                  §§goto(addr649);
                                                                                                                  §§push(true);
                                                                                                               }
                                                                                                               continue loop31;
                                                                                                               addr646:
                                                                                                            }
                                                                                                            §§goto(addr640);
                                                                                                         }
                                                                                                         §§goto(addr729);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§goto(addr673);
                                                                                                         }
                                                                                                         §§goto(addr652);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop27;
                                                                                                }
                                                                                                addr608:
                                                                                                while(!_loc17_)
                                                                                                {
                                                                                                   continue loop50;
                                                                                                }
                                                                                                §§goto(addr733);
                                                                                             }
                                                                                             §§goto(addr654);
                                                                                          }
                                                                                          §§goto(addr533);
                                                                                       }
                                                                                       addr513:
                                                                                       return;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr646);
                                                                                 }
                                                                              }
                                                                              §§goto(addr589);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr614);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr672);
                                                                  }
                                                               }
                                                            }
                                                            addr704:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.§ !<§ |= b2internal::9!+;
                                                            }
                                                            addr708:
                                                         }
                                                         §§goto(addr714);
                                                      }
                                                   }
                                                   §§goto(addr708);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc6_.§=!s§());
                                                if(!(_loc17_ && _loc3_))
                                                {
                                                   if(_loc18_)
                                                   {
                                                      if(_loc18_ || _loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(_loc18_)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     this.§ !<§ &= ~b2internal::+>;
                                                                     while(true)
                                                                     {
                                                                        addr256:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           addr258:
                                                                           addr501:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc17_ && param1))
                                                                              {
                                                                                 break loop14;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           addr503:
                                                                           this.§?K§.§]B§ = 0;
                                                                           if(_loc18_ || this)
                                                                           {
                                                                              addr727:
                                                                              §§goto(addr728);
                                                                              §§push(_loc3_);
                                                                           }
                                                                           §§goto(addr704);
                                                                        }
                                                                     }
                                                                     addr295:
                                                                  }
                                                                  addr320:
                                                                  while(true)
                                                                  {
                                                                     this.§ !<§ |= b2internal::+>;
                                                                     addr326:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr256);
                                                                     }
                                                                  }
                                                               }
                                                               addr318:
                                                               if(§§pop())
                                                               {
                                                                  addr266:
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc17_ && _loc3_))
                                                                     {
                                                                        this.Evaluate();
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc17_ && _loc3_))
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 break loop7;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           §§goto(addr295);
                                                                        }
                                                                        addr275:
                                                                     }
                                                                     §§goto(addr320);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§?K§);
                                                                        addr238:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§]B§);
                                                                           loop5:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > 0);
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 while(!_loc17_)
                                                                                 {
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_.§0!@§());
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(b2Body.b2_dynamicBody);
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(_loc18_ || param1)
                                                                                                   {
                                                                                                      addr345:
                                                                                                      §§push(!§§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           break loop13;
                                                                                                                        }
                                                                                                                        addr395:
                                                                                                                        addr382:
                                                                                                                        while(!_loc17_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           addr396:
                                                                                                                           loop23:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 loop24:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr398:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_.§=!s§());
                                                                                                                                       addr369:
                                                                                                                                       loop16:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          addr370:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc17_ && _loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop24;
                                                                                                                                             }
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr397:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              §§goto(addr397);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr362:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr318);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(_loc18_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  §§goto(addr382);
                                                                                                               }
                                                                                                               §§goto(addr396);
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         §§goto(addr369);
                                                                                                      }
                                                                                                      addr345:
                                                                                                   }
                                                                                                   §§goto(addr345);
                                                                                                }
                                                                                                addr336:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr394:
                                                                                                   }
                                                                                                }
                                                                                                addr391:
                                                                                             }
                                                                                             §§goto(addr395);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr389:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                             addr389:
                                                                                          }
                                                                                          §§goto(addr391);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr266);
                                                                                 }
                                                                                 §§goto(addr275);
                                                                                 addr249:
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr258);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr266:
                                                                  addr284:
                                                               }
                                                               §§goto(addr501);
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         addr316:
                                                      }
                                                      §§goto(addr370);
                                                   }
                                                   §§goto(addr345);
                                                }
                                                §§goto(addr316);
                                             }
                                          }
                                          §§goto(addr704);
                                       }
                                       §§goto(addr238);
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr284);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr394);
                        }
                        §§goto(addr233);
                     }
                     else
                     {
                        §§goto(addr389);
                        §§push(_loc5_.§0!@§());
                     }
                     §§goto(addr389);
                  }
                  §§goto(addr221);
               }
               §§goto(addr336);
            }
            §§goto(addr389);
         }
         §§goto(addr320);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §2!1§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(§&,§);
            while(true)
            {
               §§pop().§5R§.Set(this.§48§.GetShape());
               addr57:
               if(!(_loc4_ && this))
               {
                  §§pop().§4!P§ = b2Settings.b2_linearSlop;
                  if(!(_loc3_ || param2))
                  {
                     loop7:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              addr93:
                              §§push(§&,§);
                              if(!(_loc4_ && param2))
                              {
                                 addr40:
                                 if(_loc3_ || param2)
                                 {
                                    §§goto(addr57);
                                 }
                                 else
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          §§pop().§@!F§ = param1;
                                          while(_loc3_)
                                          {
                                             §§push(§&,§);
                                             while(true)
                                             {
                                                §§pop().§7A§ = param2;
                                                continue loop7;
                                                §§goto(addr93);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§&,§);
                                             break loop4;
                                          }
                                          addr100:
                                          addr117:
                                       }
                                       break;
                                       §§goto(addr40);
                                    }
                                    while(true)
                                    {
                                       §§pop().§0D§.Set(this.§[=§.GetShape());
                                       break loop7;
                                    }
                                    addr96:
                                 }
                              }
                              §§goto(addr87);
                           }
                           break;
                        }
                        §§goto(addr100);
                     }
                     while(true)
                     {
                        §§goto(addr96);
                     }
                  }
                  return b2TimeOfImpact.§'!<§(§&,§);
               }
            }
         }
         §§goto(addr117);
      }
   }
}
