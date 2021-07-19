package § !t§
{
   import §#A§.b2Contact;
   import §#A§.b2ContactEdge;
   import §#b§.b2EdgeShape;
   import §#b§.b2MassData;
   import §#b§.b2Shape;
   import §'!;§.§1!p§;
   import §+!F§.b2ControllerEdge;
   import §<!B§.b2Mat22;
   import §<!B§.b2Math;
   import §<!B§.b2Sweep;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   import §[h§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §=5§:b2Transform = new b2Transform();
      
      b2internal static var §8!b§:uint = 1;
      
      b2internal static var §`b§:uint = 2;
      
      b2internal static var §!o§:uint = 4;
      
      b2internal static var §+l§:uint = 8;
      
      b2internal static var §3!%§:uint = 16;
      
      b2internal static var §4G§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8!b§ = 1;
            if(!(_loc1_ && b2Body))
            {
               §`b§ = 2;
               if(_loc2_)
               {
                  §!o§ = 4;
                  if(_loc2_ || b2Body)
                  {
                     addr68:
                     §+l§ = 8;
                     if(_loc2_)
                     {
                        §3!%§ = 16;
                        if(!_loc1_)
                        {
                           §4G§ = 32;
                           addr81:
                           b2_staticBody = 0;
                           if(_loc2_ || _loc2_)
                           {
                           }
                           §§goto(addr97);
                        }
                        b2_kinematicBody = 1;
                        b2_dynamicBody = 2;
                     }
                  }
                  addr97:
                  return;
               }
               §§goto(addr68);
            }
         }
         §§goto(addr81);
      }
      
      b2internal var §;!n§:uint;
      
      b2internal var §5!Z§:int;
      
      b2internal var §2d§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §<&§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §"!F§:b2Vec2;
      
      b2internal var §&a§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §?!D§:b2Body;
      
      b2internal var § <§:b2Body;
      
      b2internal var §7p§:b2Fixture;
      
      b2internal var §!![§:int;
      
      b2internal var §`7§:b2ControllerEdge;
      
      b2internal var §[w§:int;
      
      b2internal var §"!7§:b2JointEdge;
      
      b2internal var §<!T§:b2ContactEdge;
      
      b2internal var §+!U§:Number;
      
      b2internal var §7!?§:Number;
      
      b2internal var §8!7§:Number;
      
      b2internal var §`d§:Number;
      
      b2internal var §5$§:Number;
      
      b2internal var §+i§:Number;
      
      b2internal var §5!p§:Number;
      
      b2internal var §0o§:Number;
      
      private var §>!2§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         this.m_xf = new b2Transform();
         if(_loc6_ || param2)
         {
            this.m_sweep = new b2Sweep();
            this.§<&§ = new b2Vec2();
            if(_loc6_ || param1)
            {
               this.§"!F§ = new b2Vec2();
               if(_loc6_)
               {
                  super();
                  if(!(_loc7_ && param2))
                  {
                     this.§;!n§ = 0;
                     §§push(param1.§@x§);
                     if(!(_loc7_ && this))
                     {
                        if(§§pop())
                        {
                           if(_loc6_ || this)
                           {
                              addr77:
                              this.§;!n§ |= b2internal::+l;
                              if(!(_loc7_ && _loc3_))
                              {
                                 addr90:
                                 §§push(param1.§`!p§);
                                 if(_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          this.§;!n§ |= b2internal::3!%;
                                       }
                                       addr133:
                                       this.§;!n§ |= b2internal::`b;
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          addr146:
                                          if(param1.active)
                                          {
                                             addr149:
                                             this.§;!n§ |= b2internal::4G;
                                             if(!_loc7_)
                                             {
                                                addr157:
                                                this.m_world = param2;
                                                addr160:
                                                §§push(this.m_xf);
                                                if(!_loc7_)
                                                {
                                                   §§pop().position.SetV(param1.position);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(this.m_xf);
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(§§pop().R);
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            §§pop().Set(param1.angle);
                                                            addr195:
                                                            §§push(this.m_sweep);
                                                            if(_loc6_)
                                                            {
                                                               §§pop().localCenter.§22§();
                                                               §§push(this.m_sweep);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  addr210:
                                                                  §§pop().§[!$§ = 1;
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr216:
                                                                     this.m_sweep.a0 = this.m_sweep.a = param1.angle;
                                                                  }
                                                                  var _loc3_:b2Mat22 = this.m_xf.R;
                                                                  var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(this.m_sweep);
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        §§push(§§pop().c);
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           §§push(_loc3_.col1);
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(_loc4_.x);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc7_ && param2))
                                                                                    {
                                                                                       §§push(_loc3_.col2);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          §§push(_loc4_.y);
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             addr299:
                                                                                             §§push(§§pop() + §§pop() * §§pop());
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§push(this.m_sweep);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      §§push(§§pop().c);
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         addr314:
                                                                                                         §§push(_loc3_.col1.y * _loc4_.x);
                                                                                                         if(!(_loc7_ && param2))
                                                                                                         {
                                                                                                            addr325:
                                                                                                            §§push(_loc3_.col2.y * _loc4_.y);
                                                                                                            if(!(_loc7_ && param2))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§push(this.m_sweep);
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        addr358:
                                                                                                                        §§push(§§pop().c);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           §§push(this.m_sweep);
                                                                                                                           if(!(_loc7_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§pop().c);
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 addr374:
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 §§push(this.m_xf);
                                                                                                                                 if(_loc6_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().position);
                                                                                                                                    if(_loc6_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop().x);
                                                                                                                                       if(!(_loc7_ && this))
                                                                                                                                       {
                                                                                                                                          addr400:
                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                          §§push(this.m_sweep);
                                                                                                                                          if(_loc6_ || param1)
                                                                                                                                          {
                                                                                                                                             addr414:
                                                                                                                                             §§push(§§pop().c);
                                                                                                                                             §§push(this.m_sweep.c.y);
                                                                                                                                             if(_loc6_ || param1)
                                                                                                                                             {
                                                                                                                                                addr427:
                                                                                                                                                §§pop().y = §§pop() + this.m_xf.position.y;
                                                                                                                                                §§push(this.m_sweep);
                                                                                                                                             }
                                                                                                                                             §§goto(addr427);
                                                                                                                                          }
                                                                                                                                          §§pop().c0.SetV(this.m_sweep.c);
                                                                                                                                          this.§"!7§ = null;
                                                                                                                                          this.§`7§ = null;
                                                                                                                                          if(_loc6_ || this)
                                                                                                                                          {
                                                                                                                                             this.§<!T§ = null;
                                                                                                                                             if(!(_loc7_ && param1))
                                                                                                                                             {
                                                                                                                                                addr458:
                                                                                                                                                this.§[w§ = 0;
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   addr463:
                                                                                                                                                   this.§?!D§ = null;
                                                                                                                                                   this.§ <§ = null;
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      this.§<&§.SetV(param1.§4!=§);
                                                                                                                                                      this.m_angularVelocity = param1.§'!h§;
                                                                                                                                                      if(!(_loc7_ && param2))
                                                                                                                                                      {
                                                                                                                                                         this.§+i§ = param1.§4!6§;
                                                                                                                                                         if(!(_loc7_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr498:
                                                                                                                                                            this.§5!p§ = param1.§<!A§;
                                                                                                                                                            this.§"!F§.Set(0,0);
                                                                                                                                                            this.§&a§ = 0;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr530);
                                                                                                                                                      }
                                                                                                                                                      this.§0o§ = 0;
                                                                                                                                                      this.§5!Z§ = param1.type;
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         if(this.§5!Z§ == b2_dynamicBody)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_ || param2)
                                                                                                                                                            {
                                                                                                                                                               addr530:
                                                                                                                                                               this.§+!U§ = 1;
                                                                                                                                                               §§goto(addr533);
                                                                                                                                                            }
                                                                                                                                                            addr533:
                                                                                                                                                            this.§7!?§ = 1;
                                                                                                                                                            if(_loc6_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr559:
                                                                                                                                                               this.§8!7§ = 0;
                                                                                                                                                               this.§`d§ = 0;
                                                                                                                                                               if(!(_loc7_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  this.§5$§ = param1.§=!i§;
                                                                                                                                                                  this.§>!2§ = param1.§!L§;
                                                                                                                                                               }
                                                                                                                                                               addr543:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr554:
                                                                                                                                                               this.§7!?§ = 0;
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr559);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            this.§7p§ = null;
                                                                                                                                                            if(!(_loc7_ && param2))
                                                                                                                                                            {
                                                                                                                                                               this.§!![§ = 0;
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                         }
                                                                                                                                                         this.§+!U§ = 0;
                                                                                                                                                         if(_loc6_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr554);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr559);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr543);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr554);
                                                                                                                                                }
                                                                                                                                                §§goto(addr530);
                                                                                                                                             }
                                                                                                                                             §§goto(addr498);
                                                                                                                                          }
                                                                                                                                          §§goto(addr559);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr427);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr414);
                                                                                                                  }
                                                                                                                  §§goto(addr498);
                                                                                                               }
                                                                                                               §§goto(addr400);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr427);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr414);
                                                                                                }
                                                                                                §§goto(addr463);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    §§goto(addr400);
                                                                                 }
                                                                                 §§goto(addr299);
                                                                              }
                                                                              §§goto(addr374);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                        §§goto(addr414);
                                                                     }
                                                                     §§goto(addr358);
                                                                  }
                                                                  §§goto(addr458);
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr216);
                                                }
                                                §§goto(addr210);
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr195);
                                    }
                                    §§push(param1.§[_§);
                                    if(!_loc7_)
                                    {
                                       addr107:
                                       if(§§pop())
                                       {
                                          addr108:
                                          this.§;!n§ |= b2internal::!o;
                                          if(!_loc6_)
                                          {
                                          }
                                          §§goto(addr157);
                                       }
                                       §§push(param1.§5@§);
                                       if(!(_loc7_ && param2))
                                       {
                                          addr125:
                                          if(§§pop())
                                          {
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§goto(addr133);
                                             }
                                             §§goto(addr216);
                                          }
                                       }
                                       §§goto(addr146);
                                    }
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr157);
               }
               §§goto(addr108);
            }
            §§goto(addr157);
         }
         §§goto(addr77);
      }
      
      private function §3D§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:Number = Math.atan2(param2.§[p§().y,param2.§[p§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§'m§(_loc5_,param2.§[p§());
         _loc6_ = b2Math.§<b§(_loc6_,param2.§2l§());
         _loc6_ = b2Math.§'m§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§[!d§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§[!d§(param1.§[p§(),param2.§[p§())).Normalize();
         var _loc8_:* = b2Math.§9!;§(param1.§[p§(),param2.§2l§()) > 0;
         if(!_loc10_)
         {
            param1.§9n§(param2,_loc6_,_loc7_,_loc8_);
            if(_loc9_)
            {
               param2.§3!j§(param1,_loc6_,_loc7_,_loc8_);
            }
         }
         return _loc4_;
      }
      
      public function §=!2§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§1!p§ = null;
         if(!(_loc6_ && _loc3_))
         {
            if(this.m_world.§%!_§() == true)
            {
               if(!_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc2_:b2Fixture = new b2Fixture();
         if(!_loc6_)
         {
            _loc2_.§?J§(this,this.m_xf,param1);
            if(_loc7_)
            {
               if(this.§;!n§ & b2internal::4G)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     addr62:
                     §§push(this.m_world);
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc3_ = §§pop().§,!o§.§3!C§;
                        if(_loc7_ || param1)
                        {
                           _loc2_.§<!U§(_loc3_,this.m_xf);
                           addr97:
                           _loc2_.§ <§ = this.§7p§;
                           this.§7p§ = _loc2_;
                           if(!_loc6_)
                           {
                              var _loc4_:*;
                              §§push((_loc4_ = this).§!![§);
                              if(_loc7_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc5_:* = §§pop();
                              if(_loc7_ || this)
                              {
                                 _loc4_.§!![§ = _loc5_;
                              }
                              _loc2_.m_body = this;
                              addr129:
                              if(_loc2_.§"x§ > 0)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    this.§@M§();
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       addr159:
                                       §§push(this.m_world);
                                       §§push(this.m_world.§;!n§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() | b2World.§^m§);
                                       }
                                       §§pop().§;!n§ = §§pop();
                                    }
                                 }
                                 return _loc2_;
                              }
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr129);
               }
               §§goto(addr97);
            }
            §§goto(addr159);
         }
         §§goto(addr62);
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(_loc4_ || param1)
         {
            _loc3_.shape = param1;
            if(!_loc5_)
            {
               addr42:
               _loc3_.density = param2;
            }
            return this.§=!2§(_loc3_);
         }
         §§goto(addr42);
      }
      
      public function §0!g§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§1!p§ = null;
         if(!(_loc12_ && this))
         {
            if(this.m_world.§%!_§() == true)
            {
               if(_loc13_)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§7p§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§ <§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            if(_loc13_ || param1)
            {
               if(_loc3_)
               {
                  if(!(_loc12_ && _loc2_))
                  {
                     _loc3_.§ <§ = param1.§ <§;
                     if(_loc13_ || _loc3_)
                     {
                        addr97:
                        _loc4_ = true;
                        if(_loc12_ && _loc3_)
                        {
                        }
                        break;
                        addr85:
                     }
                     break;
                  }
               }
               else
               {
                  this.§7p§ = param1.§ <§;
                  if(!(_loc12_ && param1))
                  {
                     §§goto(addr97);
                  }
               }
               break;
            }
            §§goto(addr85);
         }
         var _loc5_:b2ContactEdge = this.§<!T§;
         if(!_loc12_)
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§12§;
               _loc5_ = _loc5_.§1!U§;
               _loc7_ = _loc6_.§,^§();
               _loc8_ = _loc6_.§'!+§();
               if(_loc12_)
               {
                  continue;
               }
               §§push(param1 == _loc7_);
               if(!(_loc12_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(_loc13_ || param1)
                     {
                        §§pop();
                        if(_loc13_ || _loc3_)
                        {
                           addr183:
                           if(param1 != _loc8_)
                           {
                              continue;
                           }
                           if(!(_loc13_ || this))
                           {
                              continue;
                           }
                        }
                        this.m_world.§,!o§.§;!#§(_loc6_);
                        continue;
                     }
                  }
               }
               §§goto(addr183);
            }
            if(this.§;!n§ & b2internal::4G)
            {
               if(!_loc12_)
               {
                  addr205:
                  _loc9_ = this.m_world.§,!o§.§3!C§;
                  if(!_loc12_)
                  {
                     param1.§`!A§(_loc9_);
                     addr216:
                     param1.§;!#§();
                     if(_loc13_)
                     {
                        param1.m_body = null;
                        if(!(_loc12_ && param1))
                        {
                           param1.§ <§ = null;
                           if(!_loc12_)
                           {
                              addr245:
                              var _loc10_:*;
                              §§push((_loc10_ = this).§!![§);
                              if(_loc13_ || _loc2_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              var _loc11_:* = §§pop();
                              if(_loc13_)
                              {
                                 _loc10_.§!![§ = _loc11_;
                              }
                              addr265:
                              this.§@M§();
                           }
                           return;
                        }
                     }
                     §§goto(addr265);
                  }
                  §§goto(addr216);
               }
               §§goto(addr245);
            }
            §§goto(addr216);
         }
         §§goto(addr205);
      }
      
      public function §`!#§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2Fixture = null;
         if(!_loc9_)
         {
            if(this.m_world.§%!_§() == true)
            {
               if(_loc8_ || this)
               {
                  return;
               }
            }
            else
            {
               §§push(this.m_xf);
               if(!_loc9_)
               {
                  §§push(§§pop().R);
                  if(_loc8_)
                  {
                     §§pop().Set(param2);
                     if(!_loc9_)
                     {
                        addr47:
                        §§push(this.m_xf);
                        if(_loc8_ || this)
                        {
                           addr56:
                           §§pop().position.SetV(param1);
                           addr59:
                           §§push(this.m_xf);
                        }
                        §§push(§§pop().R);
                     }
                     §§goto(addr59);
                  }
                  var _loc4_:b2Mat22 = §§pop();
                  var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                  if(!(_loc9_ && param2))
                  {
                     §§push(this.m_sweep);
                     if(!(_loc9_ && param2))
                     {
                        §§push(§§pop().c);
                        if(!(_loc9_ && _loc3_))
                        {
                           §§push(_loc4_.col1);
                           if(!(_loc9_ && param1))
                           {
                              §§push(§§pop().x);
                              if(_loc8_)
                              {
                                 §§push(§§pop() * _loc5_.x);
                                 §§push(_loc4_.col2);
                                 if(_loc8_ || param2)
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc9_ && param2))
                                    {
                                       §§push(_loc5_.y);
                                       if(_loc8_ || param1)
                                       {
                                          §§push(§§pop() + §§pop() * §§pop());
                                          if(_loc8_)
                                          {
                                             §§pop().x = §§pop();
                                             if(_loc8_)
                                             {
                                                §§push(this.m_sweep);
                                                if(!(_loc9_ && param1))
                                                {
                                                   §§push(§§pop().c);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      addr170:
                                                      §§push(_loc4_.col1.y);
                                                      if(!_loc9_)
                                                      {
                                                         addr173:
                                                         §§push(§§pop() * _loc5_.x);
                                                         §§push(_loc4_.col2.y);
                                                         if(_loc8_ || param1)
                                                         {
                                                            §§goto(addr188);
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr251);
                                             }
                                             §§goto(addr197);
                                          }
                                          §§goto(addr173);
                                       }
                                       addr188:
                                       §§push(§§pop() * _loc5_.y);
                                       if(_loc8_ || _loc3_)
                                       {
                                          addr197:
                                          §§pop().y = §§pop() + §§pop();
                                          §§push(this.m_sweep);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop().c);
                                             if(_loc8_)
                                             {
                                                addr205:
                                                §§push(this.m_sweep);
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop().c);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc8_)
                                                      {
                                                         §§push(this.m_xf);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop().position);
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               addr228:
                                                               §§push(§§pop() + §§pop().x);
                                                               if(!_loc9_)
                                                               {
                                                                  addr231:
                                                                  §§pop().x = §§pop();
                                                                  §§push(this.m_sweep);
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     §§goto(addr251);
                                                                  }
                                                                  §§goto(addr268);
                                                               }
                                                               addr251:
                                                               §§pop().c.y = this.m_sweep.c.y + this.m_xf.position.y;
                                                               §§goto(addr249);
                                                            }
                                                            addr249:
                                                            §§goto(addr248);
                                                         }
                                                         addr248:
                                                         §§goto(addr245);
                                                      }
                                                      §§goto(addr231);
                                                   }
                                                   addr245:
                                                   §§goto(addr244);
                                                }
                                                addr244:
                                                §§goto(addr242);
                                             }
                                             addr242:
                                             §§goto(addr241);
                                          }
                                          addr241:
                                          §§goto(addr250);
                                       }
                                       addr250:
                                       if(!(_loc9_ && this))
                                       {
                                          §§push(this.m_sweep);
                                          if(_loc8_ || _loc3_)
                                          {
                                             addr268:
                                             §§pop().c0.SetV(this.m_sweep.c);
                                             §§push(this.m_sweep);
                                          }
                                          §§pop().a0 = this.m_sweep.a = param2;
                                       }
                                       var _loc6_:§1!p§ = this.m_world.§,!o§.§3!C§;
                                       _loc3_ = this.§7p§;
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             §§goto(addr332);
                                          }
                                          _loc3_.§=!J§(_loc6_,this.m_xf,this.m_xf);
                                          if(_loc9_ && param1)
                                          {
                                             break;
                                          }
                                          _loc3_ = _loc3_.§ <§;
                                       }
                                       this.m_world.§,!o§.§<"§();
                                       addr332:
                                       return;
                                    }
                                 }
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr205);
                     }
                     §§goto(addr251);
                  }
                  §§goto(addr197);
               }
               §§goto(addr56);
            }
            §§goto(addr56);
         }
         §§goto(addr47);
      }
      
      public function §4Q§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`!#§(param1.position,param1.GetAngle());
         }
      }
      
      public function §>!H§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §&!%§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§`!#§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §]<§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`!#§(this.GetPosition(),param1);
         }
      }
      
      public function §^I§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §>G§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§5!Z§ == b2_staticBody)
            {
               if(_loc2_)
               {
                  §§goto(addr34);
               }
            }
            else
            {
               this.§<&§.SetV(param1);
            }
            return;
         }
         addr34:
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§<&§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§5!Z§ == b2_staticBody)
            {
               if(!_loc2_)
               {
                  return;
               }
            }
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §use §() : b2BodyDef
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§"!j§();
         _loc1_.§[_§ = (this.§;!n§ & b2internal::!o) == b2internal::!o;
         if(_loc3_ || _loc1_)
         {
            _loc1_.angle = this.GetAngle();
            if(!(_loc2_ && this))
            {
               _loc1_.§<!A§ = this.§5!p§;
               _loc1_.§'!h§ = this.m_angularVelocity;
               if(_loc3_)
               {
                  _loc1_.§`!p§ = (this.§;!n§ & b2internal::3!%) == b2internal::3!%;
                  if(!_loc2_)
                  {
                     addr81:
                     _loc1_.§@x§ = (this.§;!n§ & b2internal::+l) == b2internal::+l;
                     if(!_loc2_)
                     {
                        §§goto(addr91);
                     }
                     §§goto(addr101);
                  }
                  addr91:
                  _loc1_.§5@§ = (this.§;!n§ & b2internal::`b) == b2internal::`b;
                  if(_loc3_)
                  {
                     addr101:
                     _loc1_.§4!6§ = this.§+i§;
                     if(!(_loc2_ && this))
                     {
                        addr122:
                        _loc1_.§4!=§.SetV(this.GetLinearVelocity());
                        if(_loc2_)
                        {
                        }
                        §§goto(addr140);
                     }
                  }
                  _loc1_.position = this.GetPosition();
                  if(_loc3_ || _loc1_)
                  {
                     §§goto(addr140);
                  }
                  addr140:
                  _loc1_.§!L§ = this.GetUserData();
                  return _loc1_;
               }
               §§goto(addr81);
            }
         }
         §§goto(addr122);
      }
      
      public function §7!§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§5!Z§ != b2_dynamicBody)
            {
               if(_loc4_)
               {
                  §§goto(addr25);
               }
            }
            else
            {
               if(this.IsAwake() == false)
               {
                  if(_loc4_)
                  {
                     this.SetAwake(true);
                     addr35:
                     §§push(this.§"!F§);
                     if(_loc4_ || this)
                     {
                        §§push(this.§"!F§);
                        if(!(_loc3_ && param1))
                        {
                           §§push(§§pop().x);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(param1.x);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§pop().x = §§pop();
                                    if(!_loc3_)
                                    {
                                       addr90:
                                       addr88:
                                       addr86:
                                       §§push(this.§"!F§);
                                       §§push(this.§"!F§.y);
                                       if(_loc3_)
                                       {
                                       }
                                       addr96:
                                       §§pop().y = §§pop();
                                       §§goto(addr97);
                                    }
                                    addr97:
                                    §§push(this);
                                    §§push(this.§&a§);
                                    if(!_loc3_)
                                    {
                                       §§push(param2.x);
                                       if(_loc4_ || param1)
                                       {
                                          §§push(this.m_sweep.c.x);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc3_)
                                             {
                                                addr125:
                                                §§push(param1.y);
                                                if(_loc4_)
                                                {
                                                   §§goto(addr129);
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr137);
                                          }
                                          addr129:
                                          §§push(§§pop() * §§pop());
                                          if(_loc4_ || this)
                                          {
                                             addr137:
                                             §§push(param2.y);
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(this.m_sweep.c.y);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§goto(addr179);
                                                }
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr125);
                                    }
                                    addr179:
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc3_ && this))
                                    {
                                       addr177:
                                       §§push(§§pop() * param1.x);
                                    }
                                    §§pop().§&a§ = §§pop() + (§§pop() - §§pop());
                                    return;
                                 }
                                 §§push(param1.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr86);
               }
               §§goto(addr35);
            }
            §§goto(addr90);
         }
         addr25:
      }
      
      public function §#e§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§5!Z§ != b2_dynamicBody)
            {
               if(_loc2_)
               {
                  return;
               }
               §§goto(addr68);
            }
            else if(this.IsAwake() == false)
            {
               if(_loc2_ || this)
               {
               }
               §§goto(addr68);
            }
            §§push(this);
            §§push(this.§&a§);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§&a§ = §§pop();
         }
         addr68:
         this.SetAwake(true);
         if(_loc2_ || _loc3_)
         {
         }
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            if(this.§5!Z§ != b2_dynamicBody)
            {
               if(!(_loc3_ && param2))
               {
                  return;
               }
               addr123:
               §§push(this.§<&§);
            }
            else
            {
               if(this.IsAwake() == false)
               {
                  addr47:
                  this.SetAwake(true);
               }
               §§push(this.§<&§);
               if(_loc4_ || this)
               {
                  §§push(this.§<&§);
                  if(_loc4_)
                  {
                     §§push(§§pop().x);
                     if(_loc4_ || this)
                     {
                        §§push(this.§7!?§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(param1.x);
                           if(_loc4_ || this)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc3_ && param2))
                              {
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr144);
                        }
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr127);
               }
            }
            addr127:
            §§push(§§pop().y);
            if(!(_loc3_ && param1))
            {
               §§goto(addr107);
            }
            addr107:
            §§push(§§pop() + §§pop());
            if(_loc4_ || param2)
            {
               §§pop().x = §§pop();
               if(_loc4_ || this)
               {
                  §§goto(addr123);
               }
               §§goto(addr223);
            }
            §§push(this.§7!?§);
            if(!(_loc3_ && param1))
            {
               addr144:
               §§push(§§pop() * param1.y);
            }
            §§pop().y = §§pop() + §§pop();
            §§push(this);
            §§push(this.m_angularVelocity);
            if(!_loc3_)
            {
               §§push(this.§`d§);
               if(!(_loc3_ && param1))
               {
                  §§push(param2.x);
                  if(!(_loc3_ && this))
                  {
                     §§push(this.m_sweep.c.x);
                     if(_loc4_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc4_)
                        {
                           §§push(param1.y);
                           if(_loc4_ || _loc3_)
                           {
                              §§goto(addr200);
                           }
                           §§goto(addr207);
                        }
                        §§goto(addr203);
                     }
                     addr200:
                     §§push(§§pop() * §§pop());
                     if(_loc4_)
                     {
                        addr203:
                        §§push(param2.y);
                        if(_loc4_)
                        {
                           addr207:
                           §§push(this.m_sweep.c.y);
                           if(_loc4_)
                           {
                              §§goto(addr220);
                           }
                        }
                        §§goto(addr218);
                     }
                  }
               }
               §§goto(addr220);
            }
            addr220:
            §§push(§§pop() - §§pop());
            if(_loc4_)
            {
               addr218:
               §§push(§§pop() * param1.x);
            }
            §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
            addr223:
            return;
            §§push(this.§<&§);
         }
         §§goto(addr47);
      }
      
      public function §9e§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(_loc16_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§^I§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§ i§(this.§use §());
         var _loc8_:b2Fixture = _loc5_.§7p§;
         while(true)
         {
            if(!_loc8_)
            {
               if(_loc16_ || this)
               {
                  break;
               }
               §§goto(addr162);
            }
            if(param1(_loc8_))
            {
               if(_loc17_)
               {
                  break;
               }
               _loc13_ = _loc8_.§ <§;
               if(_loc7_)
               {
                  _loc7_.§ <§ = _loc13_;
                  if(!_loc17_)
                  {
                     addr77:
                     var _loc14_:*;
                     §§push((_loc14_ = _loc5_).§!![§);
                     if(_loc16_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc15_:* = §§pop();
                     if(!_loc17_)
                     {
                        _loc14_.§!![§ = _loc15_;
                     }
                     _loc8_.§ <§ = _loc6_.§7p§;
                     if(_loc16_)
                     {
                        _loc6_.§7p§ = _loc8_;
                     }
                  }
               }
               else
               {
                  _loc5_.§7p§ = _loc13_;
                  if(!_loc17_)
                  {
                     §§goto(addr77);
                  }
               }
               §§push((_loc14_ = _loc6_).§!![§);
               if(_loc16_)
               {
                  §§push(§§pop() + 1);
               }
               _loc15_ = §§pop();
               if(!_loc17_)
               {
                  _loc14_.§!![§ = _loc15_;
               }
               if(_loc16_)
               {
                  _loc8_.m_body = _loc6_;
               }
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§ <§;
            }
         }
         _loc5_.§@M§();
         if(_loc16_ || this)
         {
            _loc6_.§@M§();
         }
         addr162:
         var _loc9_:b2Vec2 = _loc5_.§^I§();
         var _loc10_:b2Vec2 = _loc6_.§^I§();
         var _loc11_:b2Vec2 = b2Math.§[!d§(_loc2_,b2Math.§=!b§(_loc3_,b2Math.§<b§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§[!d§(_loc2_,b2Math.§=!b§(_loc3_,b2Math.§<b§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         if(_loc16_)
         {
            _loc6_.SetLinearVelocity(_loc12_);
            if(!(_loc17_ && _loc2_))
            {
               _loc5_.SetAngularVelocity(_loc3_);
               _loc6_.SetAngularVelocity(_loc3_);
               _loc5_.§1X§();
               _loc6_.§1X§();
            }
         }
         return _loc6_;
      }
      
      public function §3!U§(param1:b2Body) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§7p§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§ <§;
            if(_loc14_)
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§!![§);
               if(_loc14_)
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(!(_loc15_ && _loc2_))
               {
                  _loc12_.§!![§ = _loc13_;
               }
               if(!_loc15_)
               {
                  _loc2_.§ <§ = this.§7p§;
                  if(_loc15_ && this)
                  {
                     continue;
                  }
               }
               this.§7p§ = _loc2_;
               if(_loc14_)
               {
                  §§push((_loc12_ = this).§!![§);
                  if(!_loc15_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc13_ = §§pop();
                  if(_loc14_)
                  {
                     _loc12_.§!![§ = _loc13_;
                  }
                  if(_loc14_)
                  {
                     _loc2_.m_body = _loc4_;
                  }
               }
            }
         }
         if(!(_loc15_ && this))
         {
            _loc3_.§!![§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§^I§();
         var _loc6_:b2Vec2 = _loc4_.§^I§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(!_loc15_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!(_loc15_ && _loc3_))
         {
            _loc3_.§@M§();
            if(!_loc15_)
            {
               this.§1X§();
            }
         }
      }
      
      public function GetMass() : Number
      {
         return this.§+!U§;
      }
      
      public function §0l§() : Number
      {
         return this.§8!7§;
      }
      
      public function §!I§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            param1.§3!^§ = this.§+!U§;
            if(_loc3_)
            {
               param1.§=!'§ = this.§8!7§;
               if(!_loc3_)
               {
               }
               §§goto(addr52);
            }
            param1.center.SetV(this.m_sweep.localCenter);
         }
         addr52:
      }
      
      public function §"O§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §§push(b2Settings);
            §§push(this.m_world.§%!_§());
            if(!_loc4_)
            {
               §§push(§§pop() == false);
            }
            §§pop().b2Assert(§§pop());
            if(_loc3_ || _loc3_)
            {
               §§push(this.m_world.§%!_§());
               if(_loc3_ || _loc2_)
               {
                  §§push(true);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           §§goto(addr65);
                        }
                        else
                        {
                           addr145:
                           §§push(param1.§=!'§ > 0);
                           if(!_loc4_)
                           {
                              addr152:
                              if(§§pop())
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       addr169:
                                       if((this.§;!n§ & b2internal::3!%) == 0)
                                       {
                                          if(_loc3_)
                                          {
                                             addr172:
                                             §§push(this);
                                             §§push(param1.§=!'§);
                                             if(!_loc4_)
                                             {
                                                §§push(this.§+!U§);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(param1.center.x);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(param1.center);
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               addr218:
                                                               §§push(param1.center.y);
                                                               if(_loc3_)
                                                               {
                                                                  addr225:
                                                                  §§push(§§pop() + §§pop() * param1.center.y);
                                                               }
                                                               §§goto(addr225);
                                                            }
                                                            addr228:
                                                            §§pop().§8!7§ = §§pop() - §§pop() * §§pop();
                                                            addr229:
                                                            this.§`d§ = 1 / this.§8!7§;
                                                            var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               §§push(this.m_sweep);
                                                               if(_loc3_)
                                                               {
                                                                  §§pop().localCenter.SetV(param1.center);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this.m_sweep);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§pop().c0.SetV(b2Math.§#!N§(this.m_xf,this.m_sweep.localCenter));
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           addr280:
                                                                           this.m_sweep.c.SetV(this.m_sweep.c0);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(this.§<&§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(this.§<&§);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       §§push(this.m_angularVelocity);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(this.m_sweep);
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop().c);
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(!(_loc4_ && _loc2_))
                                                                                                {
                                                                                                   §§push(_loc2_.y);
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc3_ || this)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            addr362:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc4_ && _loc2_))
                                                                                                               {
                                                                                                                  addr373:
                                                                                                                  §§pop().x = §§pop();
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr395:
                                                                                                                     §§push(this.§<&§);
                                                                                                                     §§push(this.§<&§.y);
                                                                                                                     if(!(_loc4_ && this))
                                                                                                                     {
                                                                                                                        §§push(this.m_angularVelocity);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr407:
                                                                                                                           §§push(this.m_sweep.c.x);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              addr415:
                                                                                                                              §§push(§§pop() - _loc2_.x);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 addr419:
                                                                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr419);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr422);
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                               addr422:
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr407);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr419);
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                                §§goto(addr362);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr407);
                                                                                       }
                                                                                       §§goto(addr419);
                                                                                    }
                                                                                    §§goto(addr373);
                                                                                 }
                                                                              }
                                                                              §§goto(addr395);
                                                                           }
                                                                           §§goto(addr373);
                                                                        }
                                                                     }
                                                                     §§goto(addr280);
                                                                  }
                                                                  §§goto(addr395);
                                                               }
                                                               §§goto(addr280);
                                                            }
                                                            §§goto(addr373);
                                                            addr227:
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr172);
                                 }
                              }
                           }
                           §§goto(addr169);
                        }
                     }
                     else
                     {
                        §§push(this.§5!Z§);
                        if(_loc3_ || param1)
                        {
                           if(§§pop() != b2_dynamicBody)
                           {
                              return;
                           }
                           this.§7!?§ = 0;
                           if(_loc3_ || _loc2_)
                           {
                              this.§8!7§ = 0;
                              this.§`d§ = 0;
                              if(!(_loc4_ && _loc3_))
                              {
                                 this.§+!U§ = param1.§3!^§;
                                 if(_loc3_ || this)
                                 {
                                    §§push(this.§+!U§);
                                    if(!_loc4_)
                                    {
                                       §§push(0);
                                       if(_loc3_)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                this.§+!U§ = 1;
                                                if(!_loc4_)
                                                {
                                                   addr132:
                                                   this.§7!?§ = 1 / this.§+!U§;
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§goto(addr145);
                                                   }
                                                }
                                                §§goto(addr228);
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr132);
                                       }
                                    }
                                    §§goto(addr145);
                                 }
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr172);
                        }
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr152);
               }
               §§goto(addr169);
            }
            §§goto(addr228);
         }
         addr65:
      }
      
      public function §@M§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2MassData = null;
         this.§+!U§ = 0;
         this.§7!?§ = 0;
         this.§8!7§ = 0;
         this.§`d§ = 0;
         if(_loc6_ || _loc2_)
         {
            this.m_sweep.localCenter.§22§();
            if(!_loc5_)
            {
               addr45:
               §§push(this.§5!Z§);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(b2_staticBody);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(§§pop() == §§pop());
                     if(!_loc5_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc5_)
                           {
                              addr69:
                              §§pop();
                              §§push(this.§5!Z§ == b2_kinematicBody);
                           }
                        }
                        if(§§pop())
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              return;
                           }
                        }
                        var _loc1_:b2Vec2 = b2Vec2.§;!T§(0,0);
                        var _loc2_:b2Fixture = this.§7p§;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc6_ || this)
                              {
                                 §§push(this.§+!U§);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 addr256:
                                 §§push(§§pop() > 0);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          §§pop();
                                          addr279:
                                          §§push((this.§;!n§ & b2internal::3!%) == 0);
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc6_ || _loc1_)
                                    {
                                       §§push(this);
                                       §§push(this.§8!7§);
                                       if(_loc6_)
                                       {
                                          §§push(this.§+!U§);
                                          if(_loc6_ || _loc1_)
                                          {
                                             §§push(_loc1_.x);
                                             if(_loc6_)
                                             {
                                                §§push(_loc1_.x);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      addr328:
                                                      §§push(_loc1_.y);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         addr340:
                                                         §§push(§§pop() + §§pop() * _loc1_.y);
                                                      }
                                                      §§goto(addr340);
                                                   }
                                                   addr343:
                                                   §§pop().§8!7§ = §§pop() - §§pop() * §§pop();
                                                   §§push(this);
                                                   §§push(this.§8!7§);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * this.§5$§);
                                                   }
                                                   §§pop().§8!7§ = §§pop();
                                                   b2Settings.b2Assert(this.§8!7§ > 0);
                                                   this.§`d§ = 1 / this.§8!7§;
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      addr386:
                                                      var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                      if(!_loc5_)
                                                      {
                                                         §§push(this.m_sweep);
                                                         if(!_loc5_)
                                                         {
                                                            §§pop().localCenter.SetV(_loc1_);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(this.m_sweep);
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§pop().c0.SetV(b2Math.§#!N§(this.m_xf,this.m_sweep.localCenter));
                                                                  if(_loc5_ && this)
                                                                  {
                                                                  }
                                                                  addr442:
                                                                  §§push(this.§<&§);
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§push(this.§<&§);
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(this.m_angularVelocity);
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(_loc3_.y);
                                                                                       if(_loc6_ || _loc1_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc6_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr535:
                                                                                                         §§push(this.§<&§);
                                                                                                         §§push(this.§<&§.y);
                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                         {
                                                                                                            addr543:
                                                                                                            §§push(this.m_angularVelocity);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr550:
                                                                                                               addr549:
                                                                                                               addr547:
                                                                                                               §§push(this.m_sweep.c.x);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  addr553:
                                                                                                                  addr555:
                                                                                                                  §§push(§§pop() - _loc3_.x);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr561:
                                                                                                                  §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                  return;
                                                                                                                  addr559:
                                                                                                                  addr560:
                                                                                                               }
                                                                                                               §§goto(addr559);
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr560);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr561);
                                                                                                   }
                                                                                                   §§goto(addr543);
                                                                                                }
                                                                                                §§goto(addr561);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr553);
                                                                                       }
                                                                                       §§goto(addr555);
                                                                                    }
                                                                                    §§goto(addr553);
                                                                                 }
                                                                                 §§goto(addr550);
                                                                              }
                                                                              §§goto(addr549);
                                                                           }
                                                                           §§goto(addr547);
                                                                        }
                                                                        §§goto(addr553);
                                                                     }
                                                                  }
                                                                  §§goto(addr535);
                                                               }
                                                               addr430:
                                                               §§pop().c.SetV(this.m_sweep.c0);
                                                               if(_loc6_ || this)
                                                               {
                                                                  §§goto(addr442);
                                                               }
                                                               §§goto(addr553);
                                                            }
                                                            §§push(this.m_sweep);
                                                         }
                                                         §§goto(addr430);
                                                      }
                                                      §§goto(addr442);
                                                      addr377:
                                                   }
                                                   else
                                                   {
                                                      addr383:
                                                      this.§`d§ = 0;
                                                      §§goto(addr386);
                                                   }
                                                   §§goto(addr386);
                                                   addr342:
                                                }
                                                §§goto(addr340);
                                             }
                                             §§goto(addr328);
                                          }
                                          §§goto(addr342);
                                       }
                                       §§goto(addr343);
                                    }
                                    §§goto(addr377);
                                 }
                                 else
                                 {
                                    this.§8!7§ = 0;
                                    if(_loc6_)
                                    {
                                       §§goto(addr383);
                                    }
                                 }
                                 §§goto(addr386);
                              }
                              §§goto(addr279);
                           }
                           else
                           {
                              §§push(_loc2_.§"x§);
                              if(!(_loc6_ || this))
                              {
                                 break;
                              }
                              §§push(0);
                              if(_loc6_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    continue;
                                 }
                                 _loc4_ = _loc2_.§!I§();
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 §§push(this);
                                 §§push(this.§+!U§);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(§§pop() + _loc4_.§3!^§);
                                 }
                                 §§pop().§+!U§ = §§pop();
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(_loc1_);
                                    §§push(_loc1_.x);
                                    if(_loc6_ || _loc1_)
                                    {
                                       §§push(_loc4_.center.x);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() * _loc4_.§3!^§);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().x = §§pop();
                                    if(!_loc5_)
                                    {
                                       addr163:
                                       §§push(_loc1_);
                                       §§push(_loc1_.y);
                                       if(_loc6_)
                                       {
                                          §§push(_loc4_.center.y);
                                          if(_loc6_ || this)
                                          {
                                             §§push(§§pop() * _loc4_.§3!^§);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().y = §§pop();
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§push(this);
                                    §§push(this.§8!7§);
                                    if(_loc6_ || _loc1_)
                                    {
                                       §§push(§§pop() + _loc4_.§=!'§);
                                    }
                                    §§pop().§8!7§ = §§pop();
                                    continue;
                                 }
                                 §§goto(addr163);
                              }
                           }
                           §§goto(addr256);
                        }
                        §§push(0);
                        if(_loc6_)
                        {
                           if(§§pop() > §§pop())
                           {
                              this.§7!?§ = 1 / this.§+!U§;
                              §§push(_loc1_);
                              §§push(_loc1_.x);
                              if(_loc6_)
                              {
                                 §§push(§§pop() * this.§7!?§);
                              }
                              §§pop().x = §§pop();
                              §§push(_loc1_);
                              §§push(_loc1_.y);
                              if(_loc6_)
                              {
                                 §§push(§§pop() * this.§7!?§);
                              }
                              §§pop().y = §§pop();
                              if(_loc6_)
                              {
                                 addr253:
                                 §§goto(addr256);
                                 §§push(this.§8!7§);
                              }
                              §§goto(addr343);
                           }
                           else
                           {
                              this.§+!U§ = 1;
                              this.§7!?§ = 1;
                           }
                           §§goto(addr253);
                        }
                        §§goto(addr256);
                     }
                  }
               }
            }
            §§goto(addr69);
         }
         §§goto(addr45);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!(_loc4_ && _loc2_))
         {
            §§push(param1.x);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  §§push(_loc2_.col2.x);
                  if(_loc5_)
                  {
                     addr50:
                     §§push(param1.y);
                     if(_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc4_)
                        {
                           addr58:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc5_ || _loc2_)
                           {
                              §§push(param1.x);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_)
                                 {
                                    addr85:
                                    §§push(_loc2_.col2.y);
                                    if(!_loc4_)
                                    {
                                       addr90:
                                       §§push(§§pop() * param1.y);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                              }
                              §§goto(addr90);
                           }
                        }
                        var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(_loc3_);
                           §§push(_loc3_.x);
                           if(_loc5_ || _loc2_)
                           {
                              §§push(§§pop() + this.m_xf.position.x);
                           }
                           §§pop().x = §§pop();
                           if(!_loc4_)
                           {
                              §§push(_loc3_);
                              §§push(_loc3_.y);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop() + this.m_xf.position.y);
                              }
                              §§pop().y = §§pop();
                           }
                        }
                        return _loc3_;
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr85);
               }
               §§goto(addr58);
            }
            §§goto(addr50);
         }
         §§goto(addr58);
      }
      
      public function §=d§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`!"§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§42§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§#Z§(this.m_xf.R,param1);
      }
      
      public function § w§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§<&§.x);
         if(!_loc3_)
         {
            §§push(this.m_angularVelocity);
            if(_loc2_ || _loc2_)
            {
               §§push(param1.y);
               if(_loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc2_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           §§goto(addr57);
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr91);
               }
               §§goto(addr97);
            }
            addr57:
            §§goto(addr58);
         }
         addr58:
         §§push(§§pop() - §§pop());
         §§push(this.§<&§.y);
         if(!_loc3_)
         {
            addr73:
            §§push(this.m_angularVelocity);
            if(_loc2_ || param1)
            {
               addr97:
               §§push(param1.x);
               if(!(_loc3_ && _loc2_))
               {
                  addr91:
                  §§push(§§pop() - this.m_sweep.c.x);
               }
               §§push(§§pop() + §§pop() * §§pop());
            }
            §§goto(addr97);
         }
         return new §§pop().b2Vec2(§§pop(),§§pop());
      }
      
      public function §3!9§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!(_loc5_ && _loc2_))
         {
            §§push(param1.x);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && this))
               {
                  addr49:
                  §§push(_loc2_.col2.x);
                  if(!(_loc5_ && this))
                  {
                     addr59:
                     §§push(param1.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc5_)
                        {
                           addr67:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc4_ || _loc3_)
                           {
                              addr77:
                              §§push(param1.x);
                              if(_loc4_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_ || this)
                                 {
                                    addr89:
                                    §§push(_loc2_.col2.y);
                                    if(!(_loc5_ && this))
                                    {
                                       addr112:
                                       §§push(§§pop() + §§pop() * param1.y);
                                    }
                                    §§goto(addr112);
                                 }
                              }
                              §§goto(addr112);
                           }
                           var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                           if(!(_loc5_ && this))
                           {
                              §§push(_loc3_);
                              §§push(_loc3_.x);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() + this.m_xf.position.x);
                              }
                              §§pop().x = §§pop();
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr146:
                                 §§push(_loc3_);
                                 §§push(_loc3_.y);
                                 if(_loc4_ || this)
                                 {
                                    §§push(§§pop() + this.m_xf.position.y);
                                 }
                                 §§pop().y = §§pop();
                              }
                              §§push(§§findproperty(b2Vec2));
                              §§push(this.§<&§.x);
                              if(_loc4_)
                              {
                                 §§push(this.m_angularVelocity);
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(_loc3_.y);
                                    if(!_loc5_)
                                    {
                                       §§push(this.m_sweep.c.y);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc4_)
                                             {
                                                addr209:
                                                §§push(§§pop() - §§pop());
                                                §§push(this.§<&§.y);
                                                if(!_loc5_)
                                                {
                                                   addr214:
                                                   §§push(this.m_angularVelocity);
                                                   if(!_loc5_)
                                                   {
                                                      addr218:
                                                      §§push(_loc3_.x);
                                                      if(_loc4_)
                                                      {
                                                         addr222:
                                                         §§push(§§pop() - this.m_sweep.c.x);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                             }
                                             return new §§pop().b2Vec2(§§pop(),§§pop());
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr222);
                                    }
                                    §§goto(addr218);
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr77);
               }
               §§goto(addr67);
            }
            §§goto(addr59);
         }
         §§goto(addr49);
      }
      
      public function §?q§() : Number
      {
         return this.§+i§;
      }
      
      public function §!!!§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+i§ = param1;
         }
      }
      
      public function §>"§() : Number
      {
         return this.§5!p§;
      }
      
      public function §[!E§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5!p§ = param1;
         }
      }
      
      public function §4!@§(param1:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§5!Z§);
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() == §§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     return;
                  }
                  addr70:
                  this.§<&§.§22§();
                  if(_loc4_)
                  {
                     this.m_angularVelocity = 0;
                     §§goto(addr88);
                  }
                  this.§&a§ = 0;
               }
               else
               {
                  this.§5!Z§ = param1;
                  if(!_loc3_)
                  {
                     this.§@M§();
                     if(_loc4_)
                     {
                        addr62:
                        if(this.§5!Z§ == b2_staticBody)
                        {
                           if(!(_loc3_ && param1))
                           {
                              §§goto(addr70);
                           }
                        }
                        addr88:
                        this.SetAwake(true);
                        if(_loc4_)
                        {
                           this.§"!F§.§22§();
                        }
                        §§goto(addr99);
                     }
                  }
               }
               addr99:
               var _loc2_:b2ContactEdge = this.§<!T§;
               while(_loc2_)
               {
                  _loc2_.§12§.§%!h§();
                  if(_loc3_)
                  {
                     break;
                  }
                  _loc2_ = _loc2_.§1!U§;
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      public function §"!j§() : uint
      {
         return this.§5!Z§;
      }
      
      public function §7!h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  addr37:
                  this.§;!n§ |= b2internal::+l;
                  if(_loc3_ && param1)
                  {
                  }
               }
            }
            else
            {
               this.§;!n§ &= ~b2internal::+l;
            }
            return;
         }
         §§goto(addr37);
      }
      
      public function § v§() : Boolean
      {
         return (this.§;!n§ & b2internal::+l) == b2internal::+l;
      }
      
      public function §#q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr37:
                  this.§;!n§ |= b2internal::!o;
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr58);
               }
               addr55:
               this.SetAwake(true);
            }
            else
            {
               this.§;!n§ &= ~b2internal::!o;
               if(!_loc3_)
               {
                  §§goto(addr55);
               }
            }
            addr58:
            return;
         }
         §§goto(addr37);
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1)
         {
            this.§;!n§ |= b2internal::`b;
            if(_loc2_)
            {
               this.§0o§ = 0;
            }
            else
            {
               addr57:
               this.§0o§ = 0;
               this.§<&§.§22§();
               this.m_angularVelocity = 0;
               if(!(_loc3_ && _loc3_))
               {
                  this.§"!F§.§22§();
               }
               this.§&a§ = 0;
            }
            return;
         }
         this.§;!n§ &= ~b2internal::`b;
         §§goto(addr57);
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§;!n§ & b2internal::`b) == b2internal::`b;
      }
      
      public function §&'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(param1)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§;!n§ |= b2internal::3!%;
                  if(_loc2_ || _loc2_)
                  {
                     addr80:
                     this.§@M§();
                  }
               }
               §§goto(addr80);
            }
            else
            {
               this.§;!n§ &= ~b2internal::3!%;
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr80);
               }
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function §6!R§() : Boolean
      {
         return (this.§;!n§ & b2internal::3!%) == b2internal::3!%;
      }
      
      public function §9!u§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§1!p§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc7_ && param1))
            {
               if(§§pop() == this.§,!t§())
               {
                  if(!_loc7_)
                  {
                     return;
                  }
                  addr60:
                  this.§;!n§ |= b2internal::4G;
                  addr66:
                  _loc2_ = this.m_world.§,!o§.§3!C§;
                  _loc3_ = this.§7p§;
                  while(_loc3_)
                  {
                     _loc3_.§<!U§(_loc2_,this.m_xf);
                     if(_loc7_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§ <§;
                  }
               }
               else
               {
                  addr52:
                  if(param1)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        §§goto(addr60);
                     }
                     §§goto(addr66);
                  }
                  else
                  {
                     this.§;!n§ &= ~b2internal::4G;
                     _loc2_ = this.m_world.§,!o§.§3!C§;
                     _loc3_ = this.§7p§;
                     if(!(_loc7_ && this))
                     {
                        while(_loc3_)
                        {
                           _loc3_.§`!A§(_loc2_);
                           if(_loc7_)
                           {
                              break;
                           }
                           _loc3_ = _loc3_.§ <§;
                        }
                     }
                     _loc4_ = this.§<!T§;
                     if(_loc6_ || this)
                     {
                        while(_loc4_)
                        {
                           _loc5_ = _loc4_;
                           _loc4_ = _loc4_.§1!U§;
                           if(!(_loc7_ && this))
                           {
                              this.m_world.§,!o§.§;!#§(_loc5_.§12§);
                           }
                        }
                        if(_loc7_ && _loc3_)
                        {
                        }
                        §§goto(addr194);
                     }
                     this.§<!T§ = null;
                  }
               }
               addr194:
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr60);
      }
      
      public function §,!t§() : Boolean
      {
         return (this.§;!n§ & b2internal::4G) == b2internal::4G;
      }
      
      public function §&!7§() : Boolean
      {
         return (this.§;!n§ & b2internal::!o) == b2internal::!o;
      }
      
      public function §7!Y§() : b2Fixture
      {
         return this.§7p§;
      }
      
      public function §8$§() : b2JointEdge
      {
         return this.§"!7§;
      }
      
      public function §>!F§() : b2ControllerEdge
      {
         return this.§`7§;
      }
      
      public function §>!U§() : b2ContactEdge
      {
         return this.§<!T§;
      }
      
      public function §4!j§() : b2Body
      {
         return this.§ <§;
      }
      
      public function GetUserData() : *
      {
         return this.§>!2§;
      }
      
      public function §[!X§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>!2§ = param1;
         }
      }
      
      public function §[j§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §1X§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §=5§;
         if(!(_loc7_ && this))
         {
            §§push(_loc1_.R);
            if(_loc6_ || _loc3_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr42:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(!_loc7_)
            {
               §§push(_loc1_.position);
               if(!(_loc7_ && this))
               {
                  §§push(this.m_sweep);
                  if(!_loc7_)
                  {
                     §§push(§§pop().c0);
                     if(!(_loc7_ && this))
                     {
                        §§push(§§pop().x);
                        if(!_loc7_)
                        {
                           §§push(_loc2_.col1);
                           if(!_loc7_)
                           {
                              §§push(§§pop().x);
                              if(!_loc7_)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc7_)
                                    {
                                       §§push(_loc2_.col2);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc6_)
                                          {
                                             addr98:
                                             §§push(_loc3_.y);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_ || this)
                                                   {
                                                      addr128:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc6_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(!(_loc7_ && this))
                                                         {
                                                            addr144:
                                                            addr143:
                                                            addr141:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               addr152:
                                                               §§push(_loc2_.col1.y);
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  §§push(_loc3_.x);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     addr171:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        addr174:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           addr187:
                                                                           §§push(§§pop() + §§pop() * _loc3_.y);
                                                                        }
                                                                        §§goto(addr187);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                  }
                                                                  §§goto(addr187);
                                                               }
                                                               §§goto(addr174);
                                                            }
                                                            §§pop().y = §§pop();
                                                            var _loc5_:§1!p§ = this.m_world.§,!o§.§3!C§;
                                                            _loc4_ = this.§7p§;
                                                            §§goto(addr190);
                                                         }
                                                         addr190:
                                                         while(_loc4_)
                                                         {
                                                            _loc4_.§=!J§(_loc5_,_loc1_,this.m_xf);
                                                            if(_loc7_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            _loc4_ = _loc4_.§ <§;
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr171);
                                             }
                                          }
                                          §§goto(addr187);
                                       }
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr128);
                           }
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr143);
               }
               §§goto(addr141);
            }
            §§goto(addr144);
         }
         §§goto(addr42);
      }
      
      b2internal function §<=§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.m_xf);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop().R);
               if(!_loc4_)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr36:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(!_loc4_)
               {
                  §§push(this.m_xf);
                  if(_loc3_)
                  {
                     §§push(§§pop().position);
                     if(!_loc4_)
                     {
                        §§push(this.m_sweep);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop().c);
                           if(!_loc4_)
                           {
                              §§push(§§pop().x);
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§push(_loc1_.col1);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop().x);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(_loc2_.x);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             §§push(_loc1_.col2);
                                             if(_loc3_ || this)
                                             {
                                                §§push(§§pop().x);
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc2_.y);
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§pop().x = §§pop();
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  addr161:
                                                                  §§push(this.m_xf.position);
                                                                  §§push(this.m_sweep.c.y);
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     addr181:
                                                                     §§push(_loc1_.col1.y);
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr184:
                                                                        §§push(_loc2_.x);
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr205:
                                                                              §§push(_loc1_.col2.y);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr201:
                                                                                 §§push(§§pop() * _loc2_.y);
                                                                              }
                                                                              §§push(§§pop() - (§§pop() + §§pop()));
                                                                           }
                                                                           §§goto(addr205);
                                                                        }
                                                                        §§goto(addr201);
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                               }
                                                               §§goto(addr207);
                                                            }
                                                            §§pop().y = §§pop();
                                                            §§goto(addr207);
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                   }
                                                }
                                                §§goto(addr201);
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr205);
                                 }
                              }
                              §§goto(addr181);
                           }
                        }
                     }
                  }
                  §§goto(addr161);
               }
               addr207:
               return;
            }
         }
         §§goto(addr36);
      }
      
      b2internal function §`t§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§5!Z§);
            if(_loc3_)
            {
               §§push(b2_dynamicBody);
               if(!_loc4_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_)
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              §§pop();
                              if(_loc3_ || this)
                              {
                                 addr66:
                                 §§push(param1.§5!Z§ == b2_dynamicBody);
                                 if(_loc3_ || param1)
                                 {
                                    §§goto(addr74);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr74);
                        }
                        §§goto(addr82);
                     }
                  }
                  addr74:
                  §§push(!§§pop());
                  if(!(_loc4_ && param1))
                  {
                     addr82:
                     if(§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           addr90:
                           §§push(false);
                        }
                        else
                        {
                           addr92:
                           var _loc2_:b2JointEdge = this.§"!7§;
                           for(; _loc2_; _loc2_ = _loc2_.§1!U§)
                           {
                              if(_loc2_.§'q§ == param1)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(_loc2_.§[y§.§4!2§);
                                    if(!_loc4_)
                                    {
                                       if(§§pop() != false)
                                       {
                                          continue;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(false);
                                       if(!_loc3_)
                                       {
                                          §§goto(addr141);
                                       }
                                    }
                                    return §§pop();
                                 }
                                 break;
                              }
                           }
                           addr141:
                           return §§pop();
                           §§push(true);
                        }
                     }
                     §§goto(addr92);
                  }
                  return §§pop();
               }
            }
            §§goto(addr66);
         }
         §§goto(addr90);
      }
      
      b2internal function §@!+§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.m_sweep);
            if(_loc2_ || param1)
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§pop().§@!+§(§§pop());
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.m_sweep);
                     if(_loc2_ || _loc2_)
                     {
                        §§pop().c.SetV(this.m_sweep.c0);
                        if(!(_loc3_ && _loc3_))
                        {
                           addr84:
                           this.m_sweep.a = this.m_sweep.a0;
                           addr81:
                           if(_loc2_ || this)
                           {
                           }
                           §§goto(addr94);
                        }
                        addr94:
                        return;
                     }
                     §§goto(addr81);
                  }
                  this.§<=§();
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr84);
      }
   }
}
