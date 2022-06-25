package §#I§
{
   import §&H§.b2Mat22;
   import §&H§.b2Math;
   import §&H§.b2Sweep;
   import §&H§.b2Transform;
   import §&H§.b2Vec2;
   import §2!'§.b2JointEdge;
   import §3b§.b2EdgeShape;
   import §3b§.b2MassData;
   import §3b§.b2Shape;
   import §4]§.b2Contact;
   import §4]§.b2ContactEdge;
   import §>!Z§.§<P§;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   import §`L§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §@!>§:b2Transform;
      
      b2internal static var §0V§:uint = 1;
      
      b2internal static var §5!_§:uint = 2;
      
      b2internal static var §6T§:uint = 4;
      
      b2internal static var §;!@§:uint = 8;
      
      b2internal static var §]3§:uint = 16;
      
      b2internal static var §0!_§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §@!>§ = new b2Transform();
            loop0:
            while(true)
            {
               §0V§ = 1;
               loop1:
               while(true)
               {
                  §5!_§ = 2;
                  loop2:
                  while(true)
                  {
                     §6T§ = 4;
                     loop3:
                     while(true)
                     {
                        §;!@§ = 8;
                        continue loop1;
                        addr75:
                        if(!(_loc1_ && b2Body))
                        {
                           b2_kinematicBody = 1;
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              addr104:
                              while(true)
                              {
                                 §0!_§ = 32;
                                 loop6:
                                 while(_loc2_)
                                 {
                                    b2_staticBody = 0;
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop6;
                                       }
                                       §§goto(addr75);
                                       addr40:
                                       if(_loc2_ || _loc1_)
                                       {
                                          return;
                                          addr47:
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      b2internal var §[B§:uint;
      
      b2internal var §3r§:int;
      
      b2internal var §-!_§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §%!<§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §76§:b2Vec2;
      
      b2internal var §5n§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §+!3§:b2Body;
      
      b2internal var §=!8§:b2Body;
      
      b2internal var §>"#§:b2Fixture;
      
      b2internal var §9!;§:int;
      
      b2internal var §'z§:b2ControllerEdge;
      
      b2internal var §8H§:int;
      
      b2internal var §8!I§:b2JointEdge;
      
      b2internal var §0!?§:b2ContactEdge;
      
      b2internal var §"X§:Number;
      
      b2internal var §3!q§:Number;
      
      b2internal var §4!A§:Number;
      
      b2internal var §2!1§:Number;
      
      b2internal var §]5§:Number;
      
      b2internal var §];§:Number;
      
      b2internal var §[!7§:Number;
      
      b2internal var §+0§:Number;
      
      private var §>g§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.m_xf = new b2Transform();
            loop0:
            while(true)
            {
               this.m_sweep = new b2Sweep();
               loop1:
               while(true)
               {
                  this.§%!<§ = new b2Vec2();
                  if(_loc6_ || param1)
                  {
                     this.§76§ = new b2Vec2();
                     while(true)
                     {
                        super();
                        while(true)
                        {
                           this.§[B§ = 0;
                           loop4:
                           while(true)
                           {
                              §§push(param1.§2!C§);
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(_loc6_)
                                    {
                                       this.§[B§ |= b2internal::;!@;
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop0;
                                    addr222:
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§%w§);
                                    continue loop5;
                                 }
                              }
                              while(true)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    §§push(this.m_xf);
                                    if(_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop().R);
                                          if(!(_loc7_ && param1))
                                          {
                                             §§pop().Set(param1.angle);
                                             §§goto(addr92);
                                          }
                                          §§goto(addr285);
                                       }
                                       §§goto(addr98);
                                    }
                                    break;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr285);
                           }
                           while(!(_loc7_ && param2))
                           {
                              continue loop1;
                              §§goto(addr160);
                           }
                        }
                     }
                  }
                  §§goto(addr285);
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §7!-§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§ !P§().y,param2.§ !P§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§'§(_loc5_,param2.§ !P§());
         _loc6_ = b2Math.§%M§(_loc6_,param2.§'p§());
         _loc6_ = b2Math.§'§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§`v§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§`v§(param1.§ !P§(),param2.§ !P§())).Normalize();
         var _loc8_:* = b2Math.§#D§(param1.§ !P§(),param2.§'p§()) > 0;
         if(!_loc10_)
         {
            param1.§<"!§(param2,_loc6_,_loc7_,_loc8_);
            do
            {
               param2.§5!o§(param1,_loc6_,_loc7_,_loc8_);
            }
            while(_loc10_ && this);
            
         }
         return _loc4_;
      }
      
      public function §&R§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§<P§ = null;
         if(_loc7_ || param1)
         {
            if(this.m_world.§@%§() == true)
            {
               if(_loc7_ || _loc3_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Fixture = new b2Fixture();
         if(!_loc6_)
         {
            _loc2_.§1!Y§(this,this.m_xf,param1);
            if(!(_loc6_ && _loc3_))
            {
               if(this.§[B§ & b2internal::0!_)
               {
                  if(_loc7_)
                  {
                     §§push(this.m_world);
                     if(_loc7_)
                     {
                        _loc3_ = §§pop().§5!>§.§,>§;
                        if(_loc7_)
                        {
                           _loc2_.§[E§(_loc3_,this.m_xf);
                           addr92:
                           _loc2_.§=!8§ = this.§>"#§;
                           if(!_loc6_)
                           {
                              addr98:
                              this.§>"#§ = _loc2_;
                              if(!(_loc6_ && _loc2_))
                              {
                                 var _loc4_:*;
                                 §§push((_loc4_ = this).§9!;§);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    _loc4_.§9!;§ = _loc5_;
                                 }
                                 if(_loc7_ || param1)
                                 {
                                    _loc2_.m_body = this;
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc2_.§`!k§ > 0)
                                    {
                                       loop1:
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue loop5;
                                          }
                                          while(true)
                                          {
                                             this.§'!d§();
                                             addr182:
                                             while(true)
                                             {
                                                break loop1;
                                             }
                                          }
                                          continue loop5;
                                       }
                                       addr178:
                                    }
                                    addr141:
                                    while(true)
                                    {
                                       §§push(this.m_world);
                                    }
                                 }
                              }
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr92);
                     }
                     while(true)
                     {
                        §§push(this.m_world.§[B§);
                        if(_loc7_)
                        {
                           §§push(§§pop() | b2World.§&r§);
                        }
                        §§pop().§[B§ = §§pop();
                        if(!_loc6_)
                        {
                           if(_loc7_ || param1)
                           {
                              break;
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr182);
                        §§goto(addr141);
                     }
                     return _loc2_;
                  }
                  §§goto(addr180);
               }
               §§goto(addr92);
            }
            §§goto(addr182);
         }
         §§goto(addr98);
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(!_loc5_)
         {
            _loc3_.shape = param1;
            do
            {
               _loc3_.density = param2;
            }
            while(!_loc4_);
            
         }
         return this.§&R§(_loc3_);
      }
      
      public function §,!_§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§<P§ = null;
         if(_loc12_ || param1)
         {
            if(this.m_world.§@%§() == true)
            {
               if(_loc12_ || this)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§>"#§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         loop0:
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§=!8§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            loop1:
            while(true)
            {
               if(_loc3_)
               {
                  if(_loc12_)
                  {
                     _loc3_.§=!8§ = param1.§=!8§;
                     while(true)
                     {
                        addr84:
                        while(true)
                        {
                        }
                     }
                     addr107:
                  }
                  break loop0;
               }
               this.§>"#§ = param1.§=!8§;
               if(!_loc12_)
               {
               }
               break loop0;
               while(true)
               {
                  _loc4_ = true;
                  if(!(_loc12_ || _loc2_))
                  {
                     break loop0;
                  }
                  if(!(_loc13_ && _loc3_))
                  {
                     continue loop1;
                  }
                  §§goto(addr107);
                  §§goto(addr84);
               }
            }
         }
         var _loc5_:b2ContactEdge = this.§0!?§;
         if(!(_loc13_ && _loc3_))
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§8!m§;
               _loc5_ = _loc5_.§`!w§;
               _loc7_ = _loc6_.§`!a§();
               _loc8_ = _loc6_.§2!s§();
               if(_loc13_ && param1)
               {
                  continue;
               }
               §§push(param1 == _loc7_);
               if(!_loc13_)
               {
                  if(!§§pop())
                  {
                     if(_loc12_ || _loc3_)
                     {
                        addr179:
                        §§pop();
                        if(_loc13_ && param1)
                        {
                           continue;
                        }
                        §§push(param1 == _loc8_);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc13_ && _loc2_))
                     {
                        this.m_world.§5!>§.§=_§(_loc6_);
                     }
                  }
                  continue;
               }
               §§goto(addr179);
            }
            if(!_loc13_)
            {
               if(this.§[B§ & b2internal::0!_)
               {
                  if(!(_loc13_ && _loc3_))
                  {
                     addr219:
                     _loc9_ = this.m_world.§5!>§.§,>§;
                     if(!(_loc13_ && _loc3_))
                     {
                        param1.§#i§(_loc9_);
                        addr235:
                        param1.§=_§();
                        if(_loc12_ || this)
                        {
                           param1.m_body = null;
                           if(_loc12_)
                           {
                              addr249:
                              param1.§=!8§ = null;
                              if(!_loc13_)
                              {
                                 addr254:
                                 var _loc10_:*;
                                 §§push((_loc10_ = this).§9!;§);
                                 if(_loc12_ || _loc3_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 var _loc11_:* = §§pop();
                                 if(_loc12_ || param1)
                                 {
                                    _loc10_.§9!;§ = _loc11_;
                                 }
                                 if(!(_loc13_ && this))
                                 {
                                    addr296:
                                    this.§'!d§();
                                 }
                              }
                              §§goto(addr296);
                           }
                           return;
                        }
                        §§goto(addr249);
                     }
                     §§goto(addr235);
                  }
                  §§goto(addr296);
               }
               §§goto(addr235);
            }
            §§goto(addr219);
         }
         §§goto(addr254);
      }
      
      public function §2#§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2Fixture = null;
         if(!_loc8_)
         {
            if(this.m_world.§@%§() != true)
            {
               loop0:
               while(true)
               {
                  §§push(this.m_xf);
                  if(_loc9_)
                  {
                     §§push(§§pop().R);
                     if(_loc9_ || param1)
                     {
                        §§pop().Set(param2);
                        loop1:
                        while(true)
                        {
                           if(_loc8_ && this)
                           {
                              return;
                           }
                           addr70:
                           §§push(this.m_xf);
                           if(_loc9_ || this)
                           {
                              §§pop().position.SetV(param1);
                              if(!_loc9_)
                              {
                                 continue;
                              }
                              if(_loc8_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 if(true)
                                 {
                                    §§push(this.m_xf);
                                    break loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           break;
                        }
                        addr74:
                        §§push(§§pop().R);
                     }
                     var _loc4_:b2Mat22 = §§pop();
                     var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                     if(!(_loc8_ && param2))
                     {
                        §§push(this.m_sweep);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr327:
                           while(true)
                           {
                              §§push(_loc4_.col1);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 while(true)
                                 {
                                    §§push(_loc5_.x);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc4_.col2);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc5_.y);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!(_loc9_ || this))
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.m_sweep);
                                                         while(true)
                                                         {
                                                            §§push(§§pop().c);
                                                            addr268:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.col1);
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop().y);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_.x);
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     while(!(_loc8_ && this))
                                                                     {
                                                                        if(_loc8_ && this)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(_loc4_.col2);
                                                                        if(_loc8_ && param1)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§push(§§pop().y);
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  addr309:
                                                                  while(!_loc8_)
                                                                  {
                                                                     §§push(_loc5_.y);
                                                                     if(!(_loc9_ || this))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr322:
                                                                        while(true)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           addr323:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              addr241:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 addr242:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.m_sweep);
                                                                                    addr244:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       addr245:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(this.m_xf);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().position);
                                                                                                addr251:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr252:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      if(!(_loc9_ || _loc3_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                             }
                                                                                             addr250:
                                                                                          }
                                                                                          addr262:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      var _loc6_:§<P§ = this.m_world.§5!>§.§,>§;
                                                      _loc3_ = this.§>"#§;
                                                      addr400:
                                                      if(_loc3_)
                                                      {
                                                         _loc3_.§0!H§(_loc6_,this.m_xf,this.m_xf);
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            _loc3_ = _loc3_.§=!8§;
                                                            §§goto(addr400);
                                                         }
                                                         §§goto(addr413);
                                                      }
                                                      if(_loc9_ || param2)
                                                      {
                                                         this.m_world.§5!>§.§-!V§();
                                                      }
                                                      addr413:
                                                      return;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!(_loc9_ || _loc3_))
                              {
                                 continue loop2;
                              }
                              §§push(§§pop().c);
                              if(_loc9_)
                              {
                                 if(_loc9_ || _loc3_)
                                 {
                                    if(_loc8_ && _loc3_)
                                    {
                                       break;
                                    }
                                    §§push(this.m_sweep);
                                    if(_loc9_)
                                    {
                                       §§push(§§pop().c);
                                       if(!(_loc8_ && this))
                                       {
                                          §§push(§§pop().y);
                                          if(_loc9_)
                                          {
                                             if(_loc9_ || param1)
                                             {
                                                §§goto(addr185);
                                             }
                                             §§goto(addr322);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr245);
                                    }
                                    §§goto(addr244);
                                 }
                                 §§goto(addr268);
                              }
                              §§goto(addr242);
                           }
                           §§goto(addr327);
                        }
                     }
                     §§goto(addr263);
                  }
                  §§goto(addr74);
               }
            }
            §§goto(addr70);
         }
         §§goto(addr40);
      }
      
      public function §+!x§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2#§(param1.position,param1.GetAngle());
         }
      }
      
      public function §%J§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §22§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§2#§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §?!=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2#§(this.GetPosition(),param1);
         }
      }
      
      public function §58§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §6!#§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§3r§ != b2_staticBody)
            {
               do
               {
                  this.§%!<§.SetV(param1);
               }
               while(!_loc3_);
               
               if(_loc3_ || _loc2_)
               {
                  return;
                  addr48:
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§%!<§;
      }
      
      public function §&e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§3r§ != b2_staticBody)
            {
               loop0:
               while(true)
               {
                  this.m_angularVelocity = param1;
                  if(_loc3_ || _loc2_)
                  {
                     break;
                  }
                  addr58:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc2_ && _loc3_))
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr58);
      }
      
      public function §'K§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §+!m§() : b2BodyDef
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2BodyDef = new b2BodyDef();
         if(_loc2_)
         {
            _loc1_.type = this.§ 5§();
            loop0:
            while(true)
            {
               _loc1_.§]#§ = (this.§[B§ & b2internal::6T) == b2internal::6T;
               while(true)
               {
                  _loc1_.angle = this.GetAngle();
                  loop2:
                  while(true)
                  {
                     _loc1_.§"!K§ = this.§[!7§;
                     addr174:
                     while(_loc2_)
                     {
                        _loc1_.§-!^§ = this.m_angularVelocity;
                        while(true)
                        {
                           _loc1_.§%w§ = (this.§[B§ & b2internal::]3) == b2internal::]3;
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  _loc1_.§-!A§ = (this.§[B§ & b2internal::5!_) == b2internal::5!_;
                  §§goto(addr116);
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §;!U§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            if(this.§3r§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     while(true)
                     {
                        this.SetAwake(true);
                        addr194:
                        while(true)
                        {
                        }
                     }
                     addr191:
                  }
                  while(true)
                  {
                     §§push(this.§76§);
                     loop4:
                     while(true)
                     {
                        §§push(this.§76§);
                        addr176:
                        while(true)
                        {
                           §§push(§§pop().x);
                           if(_loc4_)
                           {
                              §§push(param1.x);
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr138:
                                 §§push(param1.y);
                                 if(_loc3_ && this)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc4_)
                                 {
                                    §§pop().y = §§pop();
                                    for(; _loc4_ || _loc3_; §§pop().§5n§ = §§pop(),if(_loc3_ && param2)
                                    {
                                       continue;
                                    },if(!(_loc3_ && _loc3_))
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          return;
                                       }
                                       §§goto(addr191);
                                    }
                                    else
                                    {
                                       addr183:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          §§goto(addr183);
                                       }
                                       addr183:
                                       addr182:
                                    },§§goto(addr194))
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr199);
                                       }
                                       §§push(this);
                                       §§push(this.§5n§);
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       §§push(param2.x);
                                       if(!_loc3_)
                                       {
                                          §§push(this.m_sweep.c.x);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc3_ && param2))
                                             {
                                                §§push(param1.y);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc4_ || param2)
                                                   {
                                                      §§push(param2.y);
                                                      if(_loc4_ || param1)
                                                      {
                                                         §§push(this.m_sweep.c.y);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr102:
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc4_)
                                                            {
                                                               addr98:
                                                               §§push(param1.x);
                                                            }
                                                            §§push(§§pop() + (§§pop() - §§pop()));
                                                            continue;
                                                         }
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      §§goto(addr98);
                                                   }
                                                }
                                             }
                                             §§goto(addr102);
                                          }
                                          §§goto(addr98);
                                       }
                                       §§goto(addr102);
                                    }
                                    continue loop0;
                                 }
                                 §§goto(addr182);
                                 §§goto(addr183);
                              }
                           }
                           §§goto(addr183);
                        }
                        §§push(this.§76§);
                        if(!_loc4_)
                        {
                           continue;
                        }
                        §§push(this.§76§);
                        if(!_loc3_)
                        {
                           §§push(§§pop().y);
                           if(!_loc3_)
                           {
                              §§goto(addr138);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr176);
                     }
                  }
               }
            }
            addr199:
            return;
         }
         §§goto(addr200);
      }
      
      public function §6!R§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§3r§ == b2_dynamicBody)
            {
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     loop1:
                     while(_loc3_)
                     {
                        this.SetAwake(true);
                        loop2:
                        while(_loc3_)
                        {
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§5n§);
                              if(_loc3_)
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§5n§ = §§pop();
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           return;
                        }
                        return;
                     }
                     continue;
                  }
                  §§goto(addr34);
               }
            }
         }
         §§goto(addr75);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§3r§ == b2_dynamicBody)
            {
               loop0:
               while(true)
               {
                  if(this.IsAwake() == false)
                  {
                     addr191:
                     while(true)
                     {
                        this.SetAwake(true);
                        addr194:
                        while(true)
                        {
                           if(_loc3_ && param1)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr191:
                  }
                  while(true)
                  {
                     §§push(this.§%!<§);
                     loop2:
                     while(true)
                     {
                        §§push(this.§%!<§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop4:
                           while(true)
                           {
                              §§push(this.§3!q§);
                              loop5:
                              while(true)
                              {
                                 §§push(param1.x);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop8:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          while(true)
                                          {
                                             §§push(this.§%!<§);
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§push(this.§%!<§);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop().y);
                                                if(!(_loc3_ && param2))
                                                {
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(this.§3!q§);
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc4_ || param1))
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(param1.y);
                                                      if(!_loc4_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                if(_loc4_)
                                                {
                                                   §§pop().y = §§pop();
                                                   for(; _loc4_; §§pop().m_angularVelocity = §§pop(),if(!(_loc4_ || _loc3_))
                                                   {
                                                      continue;
                                                   },if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         return;
                                                      }
                                                      §§goto(addr191);
                                                   },§§goto(addr194))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(this);
                                                         §§push(this.m_angularVelocity);
                                                         if(_loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(this.§2!1§);
                                                         if(_loc4_)
                                                         {
                                                            §§push(param2.x);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(this.m_sweep.c.x);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§push(param1.y);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc4_)
                                                                        {
                                                                        }
                                                                        addr86:
                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                        continue;
                                                                     }
                                                                     addr85:
                                                                     §§goto(addr86);
                                                                     §§push(§§pop() - §§pop());
                                                                  }
                                                                  §§push(param2.y);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(this.m_sweep.c.y);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(param1.x);
                                                                        }
                                                                        §§goto(addr85);
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                               }
                                                               §§goto(addr85);
                                                            }
                                                         }
                                                         §§goto(addr86);
                                                      }
                                                   }
                                                   continue;
                                                }
                                                continue loop8;
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr191);
      }
      
      public function §'!p§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.§'K§());
         if(_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§58§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§4!H§(this.§+!m§());
         var _loc8_:b2Fixture = _loc5_.§>"#§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc16_ || this)
               {
                  break;
               }
               addr190:
               var _loc9_:b2Vec2 = _loc5_.§58§();
               var _loc10_:b2Vec2 = _loc6_.§58§();
               var _loc11_:b2Vec2 = b2Math.§`v§(_loc2_,b2Math.§<G§(_loc3_,b2Math.§%M§(_loc9_,_loc4_)));
               var _loc12_:b2Vec2 = b2Math.§`v§(_loc2_,b2Math.§<G§(_loc3_,b2Math.§%M§(_loc10_,_loc4_)));
               if(_loc16_)
               {
                  _loc5_.SetLinearVelocity(_loc11_);
                  while(true)
                  {
                     _loc6_.SetLinearVelocity(_loc12_);
                     while(!(_loc17_ && _loc2_))
                     {
                        _loc5_.§&e§(_loc3_);
                        loop3:
                        while(_loc16_)
                        {
                           _loc6_.§&e§(_loc3_);
                           loop4:
                           while(true)
                           {
                              _loc5_.§%y§();
                              while(_loc16_ || _loc3_)
                              {
                                 _loc6_.§%y§();
                                 if(!(_loc17_ && _loc3_))
                                 {
                                    if(!_loc17_)
                                    {
                                       break loop4;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           return _loc6_;
                        }
                     }
                  }
               }
               §§goto(addr268);
            }
            else
            {
               if(!param1(_loc8_))
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§=!8§;
                  continue;
               }
               if(!_loc16_)
               {
                  break;
               }
               _loc13_ = _loc8_.§=!8§;
               if(!_loc17_)
               {
                  if(_loc7_)
                  {
                     if(_loc16_)
                     {
                        _loc7_.§=!8§ = _loc13_;
                        if(!(_loc17_ && _loc3_))
                        {
                           addr91:
                           var _loc14_:*;
                           §§push((_loc14_ = _loc5_).§9!;§);
                           if(_loc16_)
                           {
                              §§push(§§pop() - 1);
                           }
                           var _loc15_:* = §§pop();
                           if(_loc16_)
                           {
                              _loc14_.§9!;§ = _loc15_;
                           }
                           if(_loc17_ && this)
                           {
                           }
                           addr159:
                           _loc8_ = _loc13_;
                           continue;
                        }
                     }
                     _loc8_.§=!8§ = _loc6_.§>"#§;
                     if(_loc16_)
                     {
                        _loc6_.§>"#§ = _loc8_;
                        if(_loc16_ || _loc2_)
                        {
                           addr139:
                           §§push((_loc14_ = _loc6_).§9!;§);
                           if(_loc16_)
                           {
                              §§push(§§pop() + 1);
                           }
                           _loc15_ = §§pop();
                           if(!_loc17_)
                           {
                              _loc14_.§9!;§ = _loc15_;
                           }
                           if(!_loc16_)
                           {
                           }
                           §§goto(addr159);
                        }
                     }
                     _loc8_.m_body = _loc6_;
                  }
                  else
                  {
                     _loc5_.§>"#§ = _loc13_;
                     if(_loc16_ || _loc2_)
                     {
                        §§goto(addr91);
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr139);
            }
         }
         _loc5_.§'!d§();
         if(!(_loc17_ && _loc3_))
         {
            _loc6_.§'!d§();
         }
         §§goto(addr190);
      }
      
      public function §1D§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§>"#§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§=!8§;
            if(!_loc14_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§9!;§);
               if(_loc15_ || this)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!_loc14_)
               {
                  _loc12_.§9!;§ = _loc13_;
               }
               if(!(_loc14_ && _loc2_))
               {
                  _loc2_.§=!8§ = this.§>"#§;
                  if(!(_loc14_ && param1))
                  {
                     this.§>"#§ = _loc2_;
                     if(_loc14_ && param1)
                     {
                        continue;
                     }
                     addr99:
                     §§push((_loc12_ = this).§9!;§);
                     if(_loc15_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc13_ = §§pop();
                     if(_loc15_)
                     {
                        _loc12_.§9!;§ = _loc13_;
                     }
                     if(!_loc15_)
                     {
                        continue;
                     }
                  }
                  _loc2_.m_body = _loc4_;
               }
               continue;
            }
            §§goto(addr99);
         }
         if(_loc15_)
         {
            _loc3_.§9!;§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§58§();
         var _loc6_:b2Vec2 = _loc4_.§58§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.§'K§());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.§'K§());
         if(_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!_loc14_)
         {
            _loc3_.§'!d§();
            do
            {
               this.§%y§();
            }
            while(_loc14_);
            
         }
      }
      
      public function GetMass() : Number
      {
         return this.§"X§;
      }
      
      public function § `§() : Number
      {
         return this.§4!A§;
      }
      
      public function §&K§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.§&q§ = this.§"X§;
            while(true)
            {
               param1.§6_§ = this.§4!A§;
               while(_loc2_ || param1)
               {
                  param1.center.SetV(this.m_sweep.localCenter);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr42:
               }
            }
         }
         §§goto(addr42);
      }
      
      public function §'!N§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(b2Settings);
            §§push(this.m_world.§@%§());
            if(!_loc4_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            loop0:
            while(true)
            {
               §§push(this.m_world.§@%§());
               while(true)
               {
                  §§push(true);
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        while(true)
                        {
                           §§push(this.§3r§);
                           loop4:
                           while(true)
                           {
                              if(§§pop() == b2_dynamicBody)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    this.§3!q§ = 0;
                                    loop6:
                                    while(true)
                                    {
                                       this.§4!A§ = 0;
                                       loop7:
                                       while(!(_loc4_ && param1))
                                       {
                                          this.§2!1§ = 0;
                                          loop8:
                                          while(!(_loc4_ && param1))
                                          {
                                             this.§"X§ = param1.§&q§;
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§"X§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr166:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §§pop())
                                                      {
                                                         loop12:
                                                         while(!(_loc4_ && param1))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               this.§"X§ = 1;
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr30:
                                                                  if(!(_loc3_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(false)
                                                                  {
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§[B§ & b2internal::]3);
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr48:
                                                                        §§push(§§pop() == 0);
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           addr57:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(param1.§6_§);
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       §§push(this.§"X§);
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          §§push(param1.center.x);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(param1.center);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   addr114:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      addr105:
                                                                                                      §§push(param1.center.y);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr108:
                                                                                                         §§push(§§pop() * param1.center.y);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§pop().§4!A§ = §§pop() - §§pop() * §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                §§goto(addr108);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr105);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr114);
                                                                                 }
                                                                              }
                                                                              §§goto(addr48);
                                                                           }
                                                                           continue loop13;
                                                                           addr57:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr152:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop20;
                                                                        }
                                                                     }
                                                                  }
                                                                  var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr447:
                                                                     this.m_sweep.localCenter.SetV(param1.center);
                                                                     addr433:
                                                                     this.m_sweep.c0.SetV(b2Math.§%!r§(this.m_xf,this.m_sweep.localCenter));
                                                                     addr442:
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this.m_sweep);
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§pop().c.SetV(this.m_sweep.c0);
                                                                              addr427:
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr384:
                                                                                 addr398:
                                                                                 addr386:
                                                                                 addr390:
                                                                                 addr392:
                                                                                 addr396:
                                                                                 addr389:
                                                                                 addr388:
                                                                                 addr397:
                                                                                 addr383:
                                                                                 addr381:
                                                                                 §§push(this.§%!<§);
                                                                                 §§push(this.§%!<§.x);
                                                                                 §§push(this.m_angularVelocity);
                                                                                 §§push(this.m_sweep.c.y - _loc2_.y);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 §§pop().x = §§pop() + §§pop() * §§pop();
                                                                                 addr399:
                                                                                 §§push(this.§%!<§);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§push(this.§%!<§);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(this.m_angularVelocity);
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                §§push(this.m_sweep);
                                                                                                if(_loc3_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§push(_loc2_.x);
                                                                                                            if(!(_loc4_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr349:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        addr353:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc3_ || param1)
                                                                                                                        {
                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 if(_loc4_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr427);
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                              §§goto(addr399);
                                                                                                                           }
                                                                                                                           §§goto(addr384);
                                                                                                                        }
                                                                                                                        §§goto(addr398);
                                                                                                                     }
                                                                                                                     §§goto(addr386);
                                                                                                                  }
                                                                                                                  §§goto(addr390);
                                                                                                               }
                                                                                                               §§goto(addr349);
                                                                                                            }
                                                                                                            §§goto(addr392);
                                                                                                         }
                                                                                                         §§goto(addr396);
                                                                                                      }
                                                                                                      §§goto(addr349);
                                                                                                   }
                                                                                                   §§goto(addr389);
                                                                                                }
                                                                                                §§goto(addr388);
                                                                                             }
                                                                                             §§goto(addr397);
                                                                                          }
                                                                                          §§goto(addr349);
                                                                                       }
                                                                                       §§goto(addr353);
                                                                                    }
                                                                                    §§goto(addr383);
                                                                                 }
                                                                                 §§goto(addr381);
                                                                                 addr429:
                                                                              }
                                                                              §§goto(addr442);
                                                                           }
                                                                           §§goto(addr447);
                                                                        }
                                                                        §§goto(addr433);
                                                                     }
                                                                     addr451:
                                                                     §§goto(addr451);
                                                                  }
                                                                  §§goto(addr429);
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop6;
                                                      }
                                                      addr154:
                                                      while(true)
                                                      {
                                                         this.§3!q§ = 1 / this.§"X§;
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr242);
                                    }
                                 }
                              }
                              return;
                           }
                        }
                        addr229:
                     }
                     addr242:
                     return;
                  }
               }
            }
         }
         §§goto(addr183);
      }
      
      public function §'!d§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2MassData = null;
         if(_loc5_)
         {
            this.§"X§ = 0;
            loop0:
            while(true)
            {
               this.§3!q§ = 0;
               while(true)
               {
                  this.§4!A§ = 0;
                  addr98:
                  addr56:
                  while(true)
                  {
                     this.§2!1§ = 0;
                     addr91:
                     while(_loc5_)
                     {
                     }
                     continue loop0;
                  }
                  if(_loc6_ && _loc1_)
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop6:
                     while(true)
                     {
                        §§push(this.§3r§);
                        loop7:
                        while(true)
                        {
                           §§push(b2_staticBody);
                           loop8:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc5_ || _loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§pop();
                                       addr80:
                                       while(true)
                                       {
                                          §§push(this.§3r§);
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          §§push(b2_kinematicBody);
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             continue loop8;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(_loc5_)
                                          {
                                          }
                                          continue loop11;
                                       }
                                       continue loop7;
                                    }
                                    addr79:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc5_)
                                          {
                                             return;
                                          }
                                          §§goto(addr98);
                                       }
                                       else if(!(_loc6_ && this))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             §§goto(addr56);
                                          }
                                          while(true)
                                          {
                                             continue loop6;
                                          }
                                          addr86:
                                       }
                                       else
                                       {
                                          §§goto(addr80);
                                       }
                                    }
                                    addr108:
                                    var _loc1_:b2Vec2 = b2Vec2.§5U§(0,0);
                                    var _loc2_:b2Fixture = this.§>"#§;
                                    addr239:
                                    if(_loc2_)
                                    {
                                       §§push(_loc2_.§`!k§);
                                       if(!_loc6_)
                                       {
                                          §§push(0);
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc5_ || _loc1_)
                                                {
                                                   addr235:
                                                   _loc2_ = _loc2_.§=!8§;
                                                   §§goto(addr239);
                                                }
                                                §§push(_loc1_);
                                                §§push(_loc1_.y);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   §§push(§§pop() * this.§3!q§);
                                                }
                                                §§pop().y = §§pop();
                                                addr504:
                                                addr489:
                                                §§push(this.§4!A§ > 0);
                                                if(this.§4!A§ > 0)
                                                {
                                                   addr461:
                                                   §§pop();
                                                   addr462:
                                                   §§push((this.§[B§ & b2internal::]3) == 0);
                                                   if(_loc5_)
                                                   {
                                                      if(!(_loc6_ && _loc1_))
                                                      {
                                                         addr401:
                                                         if(§§pop())
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§4!A§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(this.§"X§);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(_loc1_.x);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(_loc1_.x);
                                                                           if(!(_loc6_ && _loc1_))
                                                                           {
                                                                              addr451:
                                                                              addr452:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr437:
                                                                                 §§push(_loc1_.y);
                                                                                 if(_loc5_ || _loc1_)
                                                                                 {
                                                                                    addr446:
                                                                                    §§push(§§pop() * _loc1_.y);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§pop().§4!A§ = §§pop() - §§pop() * §§pop();
                                                                              §§push(this);
                                                                              §§push(this.§4!A§);
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() * this.§]5§);
                                                                              }
                                                                              §§pop().§4!A§ = §§pop();
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 b2Settings.b2Assert(this.§4!A§ > 0);
                                                                                 addr359:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§goto(addr462);
                                                                                 }
                                                                                 this.§2!1§ = 1 / this.§4!A§;
                                                                                 addr505:
                                                                                 var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    addr676:
                                                                                    this.m_sweep.localCenter.SetV(_loc1_);
                                                                                    addr679:
                                                                                    §§push(this.m_sweep);
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       §§pop().c0.SetV(b2Math.§%!r§(this.m_xf,this.m_sweep.localCenter));
                                                                                       addr673:
                                                                                       §§push(this.m_sweep);
                                                                                       if(_loc5_ || _loc1_)
                                                                                       {
                                                                                          §§pop().c.SetV(this.m_sweep.c0);
                                                                                          addr651:
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr624:
                                                                                             this.§%!<§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
                                                                                             addr625:
                                                                                             addr612:
                                                                                             addr621:
                                                                                             addr620:
                                                                                             addr618:
                                                                                             addr622:
                                                                                             addr617:
                                                                                             addr616:
                                                                                             addr614:
                                                                                             addr623:
                                                                                             addr611:
                                                                                             §§push(this.§%!<§);
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.§%!<§);
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(this.m_angularVelocity);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(this.m_sweep);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().c);
                                                                                                                     if(!(_loc6_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.x);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       addr586:
                                                                                                                                       if(!(_loc6_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          addr594:
                                                                                                                                          §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr679);
                                                                                                                                                   }
                                                                                                                                                   return;
                                                                                                                                                }
                                                                                                                                                §§goto(addr651);
                                                                                                                                             }
                                                                                                                                             §§goto(addr625);
                                                                                                                                          }
                                                                                                                                          §§goto(addr612);
                                                                                                                                       }
                                                                                                                                       §§goto(addr621);
                                                                                                                                    }
                                                                                                                                    §§goto(addr594);
                                                                                                                                 }
                                                                                                                                 §§goto(addr620);
                                                                                                                              }
                                                                                                                              §§goto(addr618);
                                                                                                                           }
                                                                                                                           §§goto(addr622);
                                                                                                                        }
                                                                                                                        §§goto(addr586);
                                                                                                                     }
                                                                                                                     §§goto(addr617);
                                                                                                                  }
                                                                                                                  §§goto(addr616);
                                                                                                               }
                                                                                                               §§goto(addr614);
                                                                                                            }
                                                                                                            §§goto(addr623);
                                                                                                         }
                                                                                                         §§goto(addr594);
                                                                                                      }
                                                                                                      §§goto(addr624);
                                                                                                   }
                                                                                                   §§goto(addr594);
                                                                                                }
                                                                                                §§goto(addr611);
                                                                                             }
                                                                                             addr609:
                                                                                             §§goto(addr609);
                                                                                          }
                                                                                          §§goto(addr673);
                                                                                       }
                                                                                       §§goto(addr679);
                                                                                    }
                                                                                    §§goto(addr676);
                                                                                 }
                                                                                 §§goto(addr624);
                                                                                 addr299:
                                                                                 addr351:
                                                                                 addr361:
                                                                              }
                                                                              §§goto(addr504);
                                                                              addr453:
                                                                           }
                                                                           §§goto(addr446);
                                                                        }
                                                                        §§goto(addr437);
                                                                     }
                                                                     §§goto(addr451);
                                                                  }
                                                                  §§goto(addr452);
                                                               }
                                                               §§goto(addr489);
                                                            }
                                                            §§goto(addr453);
                                                         }
                                                         this.§4!A§ = 0;
                                                         addr305:
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(!(_loc6_ && _loc1_))
                                                            {
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     this.§2!1§ = 0;
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           if(_loc6_ && this)
                                                                           {
                                                                              §§goto(addr451);
                                                                           }
                                                                           addr297:
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr299);
                                                                           }
                                                                           §§goto(addr505);
                                                                        }
                                                                        §§goto(addr451);
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  this.§3!q§ = 1;
                                                                  addr473:
                                                               }
                                                               §§goto(addr504);
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         §§goto(addr351);
                                                      }
                                                      §§goto(addr504);
                                                   }
                                                   §§goto(addr461);
                                                }
                                                §§goto(addr401);
                                             }
                                             _loc4_ = _loc2_.§&K§();
                                             if(!(_loc6_ && this))
                                             {
                                                §§push(this);
                                                §§push(this.§"X§);
                                                if(_loc5_ || _loc1_)
                                                {
                                                   §§push(§§pop() + _loc4_.§&q§);
                                                }
                                                §§pop().§"X§ = §§pop();
                                             }
                                             §§push(_loc1_);
                                             §§push(_loc1_.x);
                                             if(_loc5_)
                                             {
                                                §§push(_loc4_.center.x);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(§§pop() * _loc4_.§&q§);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().x = §§pop();
                                             addr179:
                                             §§push(_loc1_);
                                             §§push(_loc1_.y);
                                             if(!_loc6_)
                                             {
                                                §§push(_loc4_.center.y);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() * _loc4_.§&q§);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§pop().y = §§pop();
                                             addr219:
                                             if(!_loc6_)
                                             {
                                                §§push(this);
                                                §§push(this.§4!A§);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + _loc4_.§6_§);
                                                }
                                                §§pop().§4!A§ = §§pop();
                                                if(!(_loc6_ && _loc1_))
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   §§goto(addr219);
                                                }
                                                §§goto(addr179);
                                             }
                                             addr234:
                                             §§goto(addr234);
                                          }
                                          addr260:
                                          if(§§pop() > §§pop())
                                          {
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                this.§3!q§ = 1 / this.§"X§;
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc1_);
                                                   §§push(_loc1_.x);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§pop() * this.§3!q§);
                                                   }
                                                   §§pop().x = §§pop();
                                                   §§goto(addr504);
                                                }
                                                §§goto(addr297);
                                             }
                                             §§goto(addr361);
                                          }
                                          else
                                          {
                                             this.§"X§ = 1;
                                          }
                                          §§goto(addr473);
                                       }
                                       §§goto(addr504);
                                    }
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(this.§"X§);
                                       if(_loc5_)
                                       {
                                          §§push(0);
                                          if(!(_loc6_ && this))
                                          {
                                             §§goto(addr260);
                                          }
                                       }
                                       §§goto(addr504);
                                    }
                                    §§goto(addr359);
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr79);
                           }
                        }
                     }
                  }
                  §§goto(addr108);
               }
            }
         }
         while(true)
         {
            this.m_sweep.localCenter.§+J§();
            §§goto(addr86);
         }
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_ || _loc2_)
         {
            §§push(param1.x);
            if(_loc4_ || this)
            {
               §§push(§§pop() * §§pop());
               if(_loc4_ || _loc3_)
               {
                  addr49:
                  §§push(_loc2_.col2.x);
                  if(_loc4_ || param1)
                  {
                     §§push(param1.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           addr76:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(param1.x);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr99:
                                    §§push(_loc2_.col2.y);
                                    if(_loc5_)
                                    {
                                    }
                                    §§goto(addr108);
                                 }
                                 addr108:
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                 §§goto(addr107);
                              }
                              addr107:
                              if(!_loc5_)
                              {
                                 §§push(_loc3_);
                                 §§push(_loc3_.x);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + this.m_xf.position.x);
                                 }
                                 §§pop().x = §§pop();
                                 do
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.y);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.y);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(!(_loc4_ || this));
                                 
                              }
                              return _loc3_;
                              §§push(§§pop() * param1.y);
                           }
                        }
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr99);
         }
         §§goto(addr49);
      }
      
      public function §2^§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§[!%§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5T§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0!&§(this.m_xf.R,param1);
      }
      
      public function §&8§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§%!<§.x);
         if(_loc2_ || this)
         {
            §§push(this.m_angularVelocity);
            if(_loc2_ || param1)
            {
               §§push(param1.y);
               if(_loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc2_)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc2_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           addr68:
                           §§push(§§pop() - §§pop());
                           §§push(this.§%!<§.y);
                           if(!_loc3_)
                           {
                              addr83:
                              §§push(this.m_angularVelocity);
                              if(!(_loc3_ && param1))
                              {
                                 addr92:
                                 §§push(param1.x);
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr101:
                                    §§push(§§pop() - this.m_sweep.c.x);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§push(§§pop() + §§pop());
                           }
                        }
                        return new §§pop().b2Vec2(§§pop(),§§pop());
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr101);
               }
               §§goto(addr92);
            }
            §§goto(addr83);
         }
         §§goto(addr68);
      }
      
      public function §0L§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(_loc4_)
         {
            §§push(param1.x);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(!_loc5_)
               {
                  addr39:
                  §§push(_loc2_.col2.x);
                  if(!(_loc5_ && param1))
                  {
                     addr49:
                     §§push(param1.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc5_ && _loc3_))
                        {
                           addr61:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(param1.x);
                              if(!_loc5_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                 }
                                 addr93:
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(_loc4_)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
                                 }
                                 do
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.y);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.y);
                                    }
                                    §§pop().y = §§pop();
                                 }
                                 while(_loc5_ && this);
                                 
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(this.§%!<§.x);
                                 if(_loc4_ || param1)
                                 {
                                    §§push(this.m_angularVelocity);
                                    if(!_loc5_)
                                    {
                                       §§push(_loc3_.y);
                                       if(_loc4_)
                                       {
                                          §§push(this.m_sweep.c.y);
                                          if(!(_loc5_ && this))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc5_ && this))
                                                {
                                                   addr152:
                                                   §§push(§§pop() - §§pop());
                                                   §§push(this.§%!<§.y);
                                                   if(!_loc4_)
                                                   {
                                                   }
                                                   §§goto(addr177);
                                                }
                                                §§push(this.m_angularVelocity);
                                                if(_loc4_)
                                                {
                                                   addr176:
                                                   §§push(_loc3_.x);
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      addr170:
                                                      §§push(§§pop() - this.m_sweep.c.x);
                                                   }
                                                   addr177:
                                                   return new §§pop().b2Vec2(§§pop(),§§pop());
                                                   §§push(§§pop() + §§pop() * §§pop());
                                                }
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr152);
                              }
                              addr92:
                              §§goto(addr93);
                              §§push(§§pop() + §§pop());
                           }
                           §§push(_loc2_.col2.y);
                           if(!_loc5_)
                           {
                              §§goto(addr92);
                              §§push(§§pop() * param1.y);
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr49);
         }
         §§goto(addr39);
      }
      
      public function §2!o§() : Number
      {
         return this.§];§;
      }
      
      public function §7Z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§];§ = param1;
         }
      }
      
      public function §3!9§() : Number
      {
         return this.§[!7§;
      }
      
      public function §,!T§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!7§ = param1;
         }
      }
      
      public function §@!$§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§3r§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr133:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr134:
                     return;
                  }
                  addr113:
                  while(true)
                  {
                     this.§3r§ = param1;
                     addr127:
                     while(!_loc4_)
                     {
                        this.§'!d§();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public function § 5§() : uint
      {
         return this.§3r§;
      }
      
      public function §[V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::;!@;
               if(_loc2_ || param1)
               {
                  if(!(_loc2_ || _loc3_))
                  {
                     addr70:
                     this.§[B§ |= b2internal::;!@;
                     addr76:
                  }
                  return;
               }
               §§goto(addr76);
            }
         }
         §§goto(addr70);
      }
      
      public function §5"#§() : Boolean
      {
         return (this.§[B§ & b2internal::;!@) == b2internal::;!@;
      }
      
      public function §]1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::6T;
               do
               {
                  this.SetAwake(true);
               }
               while(_loc3_);
               
               if(!_loc3_)
               {
                  if(_loc3_ && _loc2_)
                  {
                     addr77:
                     this.§[B§ |= b2internal::6T;
                     addr83:
                  }
                  return;
               }
               §§goto(addr83);
               addr74:
            }
            §§goto(addr77);
         }
         §§goto(addr74);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::5!_;
               loop0:
               while(!(_loc2_ && _loc2_))
               {
                  this.§+0§ = 0;
                  loop1:
                  while(_loc3_ || _loc2_)
                  {
                     if(_loc2_)
                     {
                        this.§[B§ |= b2internal::5!_;
                        break;
                     }
                     addr128:
                     this.§%!<§.§+J§();
                     loop2:
                     while(_loc3_)
                     {
                        this.m_angularVelocity = 0;
                        while(_loc3_)
                        {
                           this.§76§.§+J§();
                           do
                           {
                              this.§5n§ = 0;
                           }
                           while(!_loc3_);
                           
                           if(_loc3_ || _loc3_)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§goto(addr25);
                              }
                              continue loop2;
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  this.§+0§ = 0;
                  break;
               }
               addr25:
               return;
               addr125:
            }
            §§goto(addr128);
         }
         §§goto(addr125);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§[B§ & b2internal::5!_) == b2internal::5!_;
      }
      
      public function §#!z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::]3;
               while(true)
               {
                  if(!_loc2_)
                  {
                     loop1:
                     while(true)
                     {
                        this.§'!d§();
                        if(_loc2_)
                        {
                           break;
                        }
                        if(_loc3_)
                        {
                           return;
                        }
                        addr73:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  §§goto(addr73);
               }
            }
            while(true)
            {
               this.§[B§ |= b2internal::]3;
            }
         }
         §§goto(addr73);
      }
      
      public function §,_§() : Boolean
      {
         return (this.§[B§ & b2internal::]3) == b2internal::]3;
      }
      
      public function §4!3§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§<P§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(!(_loc7_ && _loc2_))
         {
            §§push(param1);
            if(!_loc7_)
            {
               if(§§pop() == this.§3!C§())
               {
                  if(_loc6_ || _loc2_)
                  {
                     return;
                  }
               }
               §§push(param1);
            }
            if(§§pop())
            {
               if(_loc6_)
               {
                  this.§[B§ |= b2internal::0!_;
                  addr61:
                  _loc2_ = this.m_world.§5!>§.§,>§;
                  _loc3_ = this.§>"#§;
                  while(_loc3_)
                  {
                     _loc3_.§[E§(_loc2_,this.m_xf);
                     if(_loc7_ && _loc2_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§=!8§;
                  }
               }
               §§goto(addr61);
            }
            else
            {
               this.§[B§ &= ~b2internal::0!_;
               _loc2_ = this.m_world.§5!>§.§,>§;
               _loc3_ = this.§>"#§;
               if(_loc6_ || _loc2_)
               {
                  while(_loc3_)
                  {
                     _loc3_.§#i§(_loc2_);
                     if(!(_loc6_ || this))
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§=!8§;
                  }
               }
               _loc4_ = this.§0!?§;
               if(!(_loc7_ && _loc2_))
               {
                  while(_loc4_)
                  {
                     _loc5_ = _loc4_;
                     _loc4_ = _loc4_.§`!w§;
                     if(_loc6_ || _loc3_)
                     {
                        this.m_world.§5!>§.§=_§(_loc5_.§8!m§);
                     }
                  }
                  if(_loc7_ && param1)
                  {
                  }
                  §§goto(addr199);
               }
               this.§0!?§ = null;
            }
            addr199:
            return;
         }
         §§goto(addr61);
      }
      
      public function §3!C§() : Boolean
      {
         return (this.§[B§ & b2internal::0!_) == b2internal::0!_;
      }
      
      public function §3!j§() : Boolean
      {
         return (this.§[B§ & b2internal::6T) == b2internal::6T;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§>"#§;
      }
      
      public function §86§() : b2JointEdge
      {
         return this.§8!I§;
      }
      
      public function §`!S§() : b2ControllerEdge
      {
         return this.§'z§;
      }
      
      public function §>!3§() : b2ContactEdge
      {
         return this.§0!?§;
      }
      
      public function §?!^§() : b2Body
      {
         return this.§=!8§;
      }
      
      public function GetUserData() : *
      {
         return this.§>g§;
      }
      
      public function §%V§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>g§ = param1;
         }
      }
      
      public function §var §() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §%y§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §@!>§;
         if(_loc7_)
         {
            §§push(_loc1_.R);
            if(!_loc6_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr33:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!(_loc6_ && _loc1_))
            {
               §§push(_loc1_.position);
               if(_loc7_ || _loc3_)
               {
                  §§push(this.m_sweep);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop().c0);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(§§pop().x);
                        if(!(_loc6_ && _loc1_))
                        {
                           §§push(_loc2_.col1);
                           if(_loc7_ || _loc3_)
                           {
                              §§push(§§pop().x);
                              if(!_loc6_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_ || this)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc6_ && _loc1_))
                                          {
                                             §§push(_loc3_.y);
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc7_ || this)
                                                {
                                                   addr146:
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            addr165:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(_loc7_ || this)
                                                            {
                                                               addr175:
                                                               §§push(_loc2_.col1.y);
                                                               if(_loc7_)
                                                               {
                                                                  addr178:
                                                                  §§push(_loc3_.x);
                                                                  if(_loc7_ || _loc2_)
                                                                  {
                                                                     §§goto(addr209);
                                                                  }
                                                                  addr209:
                                                                  addr210:
                                                                  addr187:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc6_ && _loc1_))
                                                                  {
                                                                     addr195:
                                                                     §§push(_loc2_.col2.y);
                                                                     if(_loc7_ || _loc1_)
                                                                     {
                                                                        addr205:
                                                                        §§push(§§pop() * _loc3_.y);
                                                                     }
                                                                  }
                                                                  §§pop().y = §§pop() - §§pop();
                                                                  var _loc5_:§<P§ = this.m_world.§5!>§.§,>§;
                                                                  _loc4_ = this.§>"#§;
                                                                  addr211:
                                                                  while(_loc4_)
                                                                  {
                                                                     _loc4_.§0!H§(_loc5_,_loc1_,this.m_xf);
                                                                     if(!(_loc7_ || _loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc4_ = _loc4_.§=!8§;
                                                                  }
                                                                  return;
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§goto(addr195);
                                                            }
                                                            §§goto(addr210);
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                   }
                                                   §§goto(addr209);
                                                }
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr146);
                                       }
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr178);
                           }
                        }
                        §§goto(addr175);
                     }
                  }
               }
            }
            §§goto(addr165);
         }
         §§goto(addr33);
      }
      
      b2internal function §@!1§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.m_xf);
            if(!_loc3_)
            {
               §§push(§§pop().R);
               if(_loc4_ || _loc1_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr42:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(_loc4_)
               {
                  §§push(this.m_xf);
                  loop0:
                  while(true)
                  {
                     §§push(§§pop().position);
                     addr209:
                     while(true)
                     {
                        §§push(this.m_sweep);
                        addr211:
                        while(true)
                        {
                           §§push(§§pop().c);
                           addr212:
                           while(true)
                           {
                              §§push(§§pop().x);
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(_loc1_.col1);
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr223:
                                    addr90:
                                    while(true)
                                    {
                                       §§push(_loc2_.x);
                                       addr225:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr226:
                                          while(true)
                                          {
                                             §§push(_loc1_.col2);
                                             addr228:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                addr229:
                                                while(true)
                                                {
                                                   §§push(_loc2_.y);
                                                   addr231:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr232:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr233:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§push(_loc1_.col1);
                                    if(!(_loc4_ || this))
                                    {
                                       continue;
                                    }
                                    §§push(§§pop().y);
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(_loc2_.x);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc3_)
                                             {
                                                addr126:
                                                if(_loc4_)
                                                {
                                                   §§push(_loc1_.col2);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§push(§§pop().y);
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         if(!(_loc3_ && _loc1_))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§push(_loc2_.y);
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  addr164:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr172:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        addr180:
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              return;
                                                                              addr195:
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr223);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        continue loop0;
                                                                     }
                                                                     addr234:
                                                                  }
                                                                  §§goto(addr232);
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr172);
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr233);
                                    }
                                    §§goto(addr126);
                                 }
                              }
                              §§goto(addr234);
                           }
                        }
                     }
                  }
                  addr208:
               }
               while(true)
               {
                  §§push(this.m_xf);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop().position);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(this.m_sweep);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop().c);
                           if(!_loc3_)
                           {
                              §§push(§§pop().y);
                              if(_loc4_)
                              {
                                 §§goto(addr90);
                              }
                              §§goto(addr180);
                           }
                           else
                           {
                              §§goto(addr212);
                           }
                        }
                        else
                        {
                           §§goto(addr211);
                        }
                        §§goto(addr212);
                     }
                     else
                     {
                        §§goto(addr209);
                     }
                  }
                  else
                  {
                     §§goto(addr208);
                  }
                  §§goto(addr209);
               }
               §§goto(addr195);
            }
         }
         §§goto(addr42);
      }
      
      b2internal function §'!F§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§3r§);
            if(_loc3_)
            {
               §§push(b2_dynamicBody);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        addr36:
                        if(§§pop())
                        {
                           if(!(_loc4_ && param1))
                           {
                              §§pop();
                              if(!_loc4_)
                              {
                                 addr51:
                                 §§push(param1.§3r§ == b2_dynamicBody);
                                 if(_loc3_ || this)
                                 {
                                    §§push(!§§pop());
                                    if(!_loc4_)
                                    {
                                       §§goto(addr72);
                                    }
                                    return §§pop();
                                 }
                                 addr72:
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       addr75:
                                       §§push(false);
                                    }
                                    else
                                    {
                                       §§goto(addr77);
                                    }
                                 }
                                 §§goto(addr77);
                              }
                              addr77:
                              var _loc2_:b2JointEdge = this.§8!I§;
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 if(_loc2_.§<!M§ != param1)
                                 {
                                    continue;
                                 }
                                 if(_loc3_ || param1)
                                 {
                                    §§push(_loc2_.§@"!§.§7u§);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() != false)
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          continue;
                                       }
                                       addr113:
                                       §§push(false);
                                       if(!(_loc3_ || this))
                                       {
                                          break;
                                       }
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr113);
                              }
                              return §§pop();
                           }
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr36);
               }
            }
            §§goto(addr51);
         }
         §§goto(addr75);
      }
      
      b2internal function §5!4§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.m_sweep);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§pop().§5!4§(§§pop());
                  while(true)
                  {
                     §§push(this.m_sweep);
                     while(!_loc3_)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        while(true)
                        {
                           §§push(this.m_sweep);
                           if(!(_loc2_ || _loc2_))
                           {
                              break;
                           }
                           §§push(this.m_sweep.a0);
                           if(_loc2_)
                           {
                              continue;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
