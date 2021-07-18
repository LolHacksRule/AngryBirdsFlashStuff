package §_-Iw§
{
   import §_-1N§.b2JointEdge;
   import §_-Ja§.b2Mat22;
   import §_-Ja§.b2Math;
   import §_-Ja§.b2Sweep;
   import §_-Ja§.b2Transform;
   import §_-Ja§.b2Vec2;
   import §_-Kt§.b2EdgeShape;
   import §_-Kt§.b2MassData;
   import §_-Kt§.b2Shape;
   import §_-a5§.b2Contact;
   import §_-a5§.b2ContactEdge;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   import §_-ly§.b2ControllerEdge;
   import §_-qg§.§_-nW§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §_-aO§:b2Transform;
      
      b2internal static var §_-rW§:uint = 1;
      
      b2internal static var §_-Vk§:uint = 2;
      
      b2internal static var §_-Iv§:uint = 4;
      
      b2internal static var §_-gO§:uint = 8;
      
      b2internal static var §_-yC§:uint = 16;
      
      b2internal static var dynamic:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && b2Body))
         {
            §_-aO§ = new b2Transform();
            §_-rW§ = 1;
            §_-Vk§ = 2;
            §_-Iv§ = 4;
            §_-gO§ = 8;
            if(!_loc2_)
            {
               §_-yC§ = 16;
               if(!(_loc2_ && b2Body))
               {
                  addr55:
                  dynamic = 32;
                  if(!(_loc2_ && _loc1_))
                  {
                     b2_staticBody = 0;
                     if(!(_loc2_ && _loc1_))
                     {
                        addr82:
                        b2_kinematicBody = 1;
                        if(_loc2_)
                        {
                        }
                     }
                     §§goto(addr90);
                  }
                  b2_dynamicBody = 2;
               }
               addr90:
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr55);
      }
      
      b2internal var §_-Il§:uint;
      
      b2internal var §_-Sj§:int;
      
      b2internal var §_-ZU§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §_-ZZ§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §return§:b2Vec2;
      
      b2internal var §_-0C§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §_-VL§:b2Body;
      
      b2internal var §_-NA§:b2Body;
      
      b2internal var §_-EF§:b2Fixture;
      
      b2internal var §_-eR§:int;
      
      b2internal var §_-C2§:b2ControllerEdge;
      
      b2internal var §_-Tf§:int;
      
      b2internal var §_-Ry§:b2JointEdge;
      
      b2internal var §_-W1§:b2ContactEdge;
      
      b2internal var §_-jI§:Number;
      
      b2internal var §_-eZ§:Number;
      
      b2internal var §_-ry§:Number;
      
      b2internal var §_-DZ§:Number;
      
      b2internal var §_-Jm§:Number;
      
      b2internal var §_-rl§:Number;
      
      b2internal var §_-1p§:Number;
      
      b2internal var §_-5g§:Number;
      
      private var §_-OB§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         if(!_loc6_)
         {
            this.§_-ZZ§ = new b2Vec2();
            this.§return§ = new b2Vec2();
            super();
            this.§_-Il§ = 0;
            if(_loc7_ || param1)
            {
               §§push(param1.§_-eK§);
               if(!(_loc6_ && this))
               {
                  if(§§pop())
                  {
                     this.§_-Il§ |= b2internal::_-gO;
                  }
                  §§push(param1.§_-W2§);
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop())
                     {
                        if(_loc7_ || param1)
                        {
                           this.§_-Il§ |= b2internal::_-yC;
                           addr83:
                           §§push(param1.§_-J4§);
                           if(!(_loc6_ && this))
                           {
                              if(§§pop())
                              {
                                 if(_loc7_ || param1)
                                 {
                                    this.§_-Il§ |= b2internal::_-Iv;
                                    addr106:
                                    §§push(param1.§_-MK§);
                                    if(!(_loc6_ && param1))
                                    {
                                       addr115:
                                       if(§§pop())
                                       {
                                          this.§_-Il§ |= b2internal::_-Vk;
                                       }
                                       addr124:
                                       if(param1.§_-TG§)
                                       {
                                          if(_loc7_)
                                          {
                                             this.§_-Il§ |= b2internal::dynamic;
                                          }
                                       }
                                       this.m_world = param2;
                                       §§push(this.m_xf);
                                       if(_loc7_)
                                       {
                                          §§pop().position.SetV(param1.position);
                                          addr144:
                                          §§push(this.m_xf);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop().R);
                                             if(!_loc6_)
                                             {
                                                §§pop().Set(param1.angle);
                                                if(_loc7_)
                                                {
                                                   addr156:
                                                   §§push(this.m_sweep);
                                                   if(_loc7_)
                                                   {
                                                      §§pop().localCenter.§_-0a§();
                                                      §§push(this.m_sweep);
                                                      if(_loc7_ || param1)
                                                      {
                                                         addr171:
                                                         §§pop().§_-EG§ = 1;
                                                         §§push(this.m_sweep);
                                                      }
                                                      §§pop().a0 = this.m_sweep.a = param1.angle;
                                                      addr188:
                                                      var _loc3_:b2Mat22 = this.m_xf.R;
                                                      var _loc4_:b2Vec2 = this.m_sweep.localCenter;
                                                      addr185:
                                                      if(!_loc6_)
                                                      {
                                                         §§push(this.m_sweep);
                                                         if(_loc7_ || this)
                                                         {
                                                            §§push(§§pop().c);
                                                            if(_loc7_)
                                                            {
                                                               §§push(_loc3_.col1);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  §§push(_loc4_.x);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        §§push(_loc3_.col2);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(_loc4_.y);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr245:
                                                                                 §§push(§§pop() + §§pop() * §§pop());
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    addr253:
                                                                                    §§pop().x = §§pop();
                                                                                    §§push(this.m_sweep);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(§§pop().c);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr267:
                                                                                          §§push(_loc3_.col1.y * _loc4_.x);
                                                                                          §§push(_loc3_.col2.y);
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             addr279:
                                                                                             §§push(§§pop() * _loc4_.y);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§pop().y = §§pop() + §§pop();
                                                                                                §§push(this.m_sweep);
                                                                                                if(!(_loc6_ && this))
                                                                                                {
                                                                                                   §§push(§§pop().c);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(this.m_sweep);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop().c);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            §§push(this.m_xf);
                                                                                                            if(!(_loc6_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop().position);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr317:
                                                                                                                  §§push(§§pop() + §§pop().x);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     §§push(this.m_sweep);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        addr340:
                                                                                                                        §§push(§§pop().c);
                                                                                                                        §§push(this.m_sweep.c.y);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr332:
                                                                                                                           §§push(§§pop() + this.m_xf.position.y);
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        this.m_sweep.c0.SetV(this.m_sweep.c);
                                                                                                                        this.§_-Ry§ = null;
                                                                                                                        this.§_-C2§ = null;
                                                                                                                        this.§_-W1§ = null;
                                                                                                                        this.§_-Tf§ = 0;
                                                                                                                        this.§_-VL§ = null;
                                                                                                                        this.§_-NA§ = null;
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           this.§_-ZZ§.SetV(param1.§_-MI§);
                                                                                                                           this.m_angularVelocity = param1.§_-P3§;
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              this.§_-rl§ = param1.§_-pQ§;
                                                                                                                              if(_loc7_ || this)
                                                                                                                              {
                                                                                                                                 this.§_-1p§ = param1.§_-K5§;
                                                                                                                                 this.§return§.Set(0,0);
                                                                                                                                 this.§_-0C§ = 0;
                                                                                                                                 this.§_-5g§ = 0;
                                                                                                                                 this.§_-Sj§ = param1.type;
                                                                                                                                 if(_loc7_ || this)
                                                                                                                                 {
                                                                                                                                    if(this.§_-Sj§ == b2_dynamicBody)
                                                                                                                                    {
                                                                                                                                       addr417:
                                                                                                                                       this.§_-jI§ = 1;
                                                                                                                                       if(_loc7_ || this)
                                                                                                                                       {
                                                                                                                                          this.§_-eZ§ = 1;
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             addr448:
                                                                                                                                             this.§_-ry§ = 0;
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                this.§_-DZ§ = 0;
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   addr458:
                                                                                                                                                   this.§_-Jm§ = param1.§_-S0§;
                                                                                                                                                   this.§_-OB§ = param1.§_-Vb§;
                                                                                                                                                   this.§_-EF§ = null;
                                                                                                                                                   addr462:
                                                                                                                                                }
                                                                                                                                                this.§_-eR§ = 0;
                                                                                                                                                §§goto(addr479);
                                                                                                                                             }
                                                                                                                                             §§goto(addr458);
                                                                                                                                          }
                                                                                                                                          §§goto(addr462);
                                                                                                                                       }
                                                                                                                                       §§goto(addr458);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       this.§_-jI§ = 0;
                                                                                                                                       if(!(_loc6_ && param2))
                                                                                                                                       {
                                                                                                                                          addr443:
                                                                                                                                          this.§_-eZ§ = 0;
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr448);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr479:
                                                                                                                                    return;
                                                                                                                                 }
                                                                                                                                 §§goto(addr417);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr458);
                                                                                                                        }
                                                                                                                        §§goto(addr443);
                                                                                                                     }
                                                                                                                     §§goto(addr340);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr332);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr340);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr317);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr340);
                                                                                 }
                                                                                 §§goto(addr267);
                                                                              }
                                                                              §§goto(addr279);
                                                                           }
                                                                           §§goto(addr245);
                                                                        }
                                                                        §§goto(addr267);
                                                                     }
                                                                     §§goto(addr253);
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr340);
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr185);
                                             }
                                             §§goto(addr188);
                                          }
                                       }
                                       §§goto(addr188);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr83);
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr188);
         }
         §§goto(addr171);
      }
      
      private function §_-rs§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Number = Math.atan2(param2.§_-SH§().y,param2.§_-SH§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§_-cR§(_loc5_,param2.§_-SH§());
         _loc6_ = b2Math.§_-TD§(_loc6_,param2.§_-w§());
         _loc6_ = b2Math.§_-cR§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§_-Qv§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§_-Qv§(param1.§_-SH§(),param2.§_-SH§())).Normalize();
         var _loc8_:* = b2Math.§_-Ly§(param1.§_-SH§(),param2.§_-w§()) > 0;
         if(!(_loc9_ && this))
         {
            param1.§_-1b§(param2,_loc6_,_loc7_,_loc8_);
            if(!_loc9_)
            {
               addr109:
               param2.§_-8z§(param1,_loc6_,_loc7_,_loc8_);
            }
            return _loc4_;
         }
         §§goto(addr109);
      }
      
      public function §_-pC§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-nW§ = null;
         if(_loc6_)
         {
            if(this.m_world.§_-NO§() == true)
            {
               if(_loc6_ || param1)
               {
                  §§goto(addr30);
               }
            }
            var _loc2_:b2Fixture = new b2Fixture();
            if(_loc6_ || _loc3_)
            {
               _loc2_.§_-xO§(this,this.m_xf,param1);
               if(this.§_-Il§ & b2internal::dynamic)
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§push(this.m_world);
                     if(_loc6_)
                     {
                        _loc3_ = §§pop().§_-bL§.§_-ep§;
                        if(!_loc7_)
                        {
                           _loc2_.§_-mf§(_loc3_,this.m_xf);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr114);
               }
               addr83:
               _loc2_.§_-NA§ = this.§_-EF§;
               this.§_-EF§ = _loc2_;
               if(_loc6_ || _loc3_)
               {
                  var _loc4_:*;
                  §§push((_loc4_ = this).§_-eR§);
                  if(_loc6_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc7_)
                  {
                     _loc4_.§_-eR§ = _loc5_;
                  }
                  if(_loc6_)
                  {
                     addr114:
                     _loc2_.m_body = this;
                     if(_loc2_.§_-9V§ > 0)
                     {
                        this.§_-V2§();
                        addr123:
                        §§push(this.m_world);
                        §§push(this.m_world.§_-Il§);
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop() | b2World.§_-2C§);
                        }
                        §§pop().§_-Il§ = §§pop();
                     }
                     §§goto(addr123);
                  }
               }
               return _loc2_;
            }
            §§goto(addr123);
         }
         addr30:
         return null;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         if(_loc5_)
         {
            _loc3_.shape = param1;
            if(_loc5_ || _loc3_)
            {
               _loc3_.density = param2;
            }
         }
         return this.§_-pC§(_loc3_);
      }
      
      public function §_-mG§(param1:b2Fixture) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§_-nW§ = null;
         if(!(_loc12_ && _loc3_))
         {
            if(this.m_world.§_-NO§() == true)
            {
               if(_loc13_ || param1)
               {
                  return;
               }
            }
         }
         var _loc2_:b2Fixture = this.§_-EF§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         for(; _loc2_ != null; _loc3_ = _loc2_,_loc2_ = _loc2_.§_-NA§)
         {
            if(_loc2_ != param1)
            {
               continue;
            }
            if(_loc13_)
            {
               if(!_loc3_)
               {
                  this.§_-EF§ = param1.§_-NA§;
                  if(_loc12_)
                  {
                  }
                  break;
               }
               if(_loc13_)
               {
                  _loc3_.§_-NA§ = param1.§_-NA§;
                  if(_loc12_)
                  {
                  }
                  addr83:
                  break;
               }
               _loc4_ = true;
               if(_loc12_)
               {
               }
               break;
            }
            §§goto(addr83);
         }
         var _loc5_:b2ContactEdge = this.§_-W1§;
         if(!(_loc12_ && param1))
         {
            while(_loc5_)
            {
               _loc6_ = _loc5_.§_-bX§;
               _loc5_ = _loc5_.§_-Jr§;
               _loc7_ = _loc6_.§_-8S§();
               _loc8_ = _loc6_.§_-16§();
               if(_loc13_ || this)
               {
                  §§push(param1 == _loc7_);
                  if(!(_loc12_ && this))
                  {
                     if(!§§pop())
                     {
                        if(!(_loc12_ && _loc3_))
                        {
                           §§pop();
                           if(_loc12_)
                           {
                              continue;
                           }
                           §§push(param1 == _loc8_);
                        }
                     }
                  }
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc13_)
                  {
                     continue;
                  }
               }
               this.m_world.§_-bL§.§_-2A§(_loc6_);
            }
            if(_loc13_ || _loc2_)
            {
               if(this.§_-Il§ & b2internal::dynamic)
               {
                  _loc9_ = this.m_world.§_-bL§.§_-ep§;
                  if(_loc13_ || _loc2_)
                  {
                     param1.§_-aV§(_loc9_);
                  }
               }
               param1.§_-2A§();
               if(_loc13_ || _loc3_)
               {
                  param1.m_body = null;
                  if(_loc13_ || _loc2_)
                  {
                  }
                  §§goto(addr224);
               }
               param1.§_-NA§ = null;
               if(!_loc13_)
               {
               }
               §§goto(addr224);
            }
            addr224:
            var _loc10_:*;
            §§push((_loc10_ = this).§_-eR§);
            if(!_loc12_)
            {
               §§push(§§pop() - 1);
            }
            var _loc11_:* = §§pop();
            if(_loc13_)
            {
               _loc10_.§_-eR§ = _loc11_;
            }
            §§goto(addr246);
         }
         addr246:
         this.§_-V2§();
      }
      
      public function §_-ST§(param1:b2Vec2, param2:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2Fixture = null;
         if(_loc8_ || this)
         {
            if(this.m_world.§_-NO§() == true)
            {
               if(!(_loc9_ && _loc3_))
               {
                  return;
               }
               §§goto(addr59);
            }
            else
            {
               §§push(this.m_xf);
               if(!_loc9_)
               {
                  §§push(§§pop().R);
                  if(!(_loc9_ && param1))
                  {
                     §§pop().Set(param2);
                     if(_loc8_)
                     {
                        §§goto(addr59);
                     }
                     §§goto(addr66);
                  }
                  addr59:
                  §§push(this.m_xf);
                  if(_loc8_)
                  {
                     addr63:
                     §§pop().position.SetV(param1);
                     addr66:
                     §§push(this.m_xf);
                  }
                  var _loc4_:b2Mat22 = §§pop().R;
                  var _loc5_:b2Vec2 = this.m_sweep.localCenter;
                  if(!(_loc9_ && this))
                  {
                     §§push(this.m_sweep);
                     if(!(_loc9_ && this))
                     {
                        §§push(§§pop().c);
                        if(_loc8_ || param1)
                        {
                           §§push(_loc4_.col1);
                           if(_loc8_ || param1)
                           {
                              §§push(§§pop().x);
                              if(_loc8_)
                              {
                                 §§push(§§pop() * _loc5_.x);
                                 if(_loc8_)
                                 {
                                    §§push(_loc4_.col2);
                                    if(!_loc9_)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc9_ && param2))
                                       {
                                          §§push(_loc5_.y);
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             addr140:
                                             §§pop().x = §§pop() + §§pop() * §§pop();
                                             if(_loc8_ || this)
                                             {
                                                §§push(this.m_sweep);
                                                if(_loc8_ || param1)
                                                {
                                                   addr164:
                                                   §§push(§§pop().c);
                                                   if(!_loc9_)
                                                   {
                                                      addr169:
                                                      §§push(_loc4_.col1.y);
                                                      if(!_loc9_)
                                                      {
                                                         addr180:
                                                         §§push(§§pop() * _loc5_.x + _loc4_.col2.y * _loc5_.y);
                                                         if(_loc8_)
                                                         {
                                                            addr184:
                                                            §§pop().y = §§pop();
                                                            addr185:
                                                            §§push(this.m_sweep);
                                                            if(_loc8_ || param1)
                                                            {
                                                               addr194:
                                                               §§push(§§pop().c);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(this.m_sweep);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop().c);
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!(_loc9_ && param1))
                                                                        {
                                                                           addr212:
                                                                           §§push(this.m_xf);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(§§pop().position);
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 addr226:
                                                                                 §§pop().x = §§pop() + §§pop().x;
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§goto(addr229);
                                                                                 }
                                                                                 §§goto(addr255);
                                                                              }
                                                                              §§goto(addr253);
                                                                           }
                                                                           §§goto(addr252);
                                                                        }
                                                                        §§goto(addr255);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr242);
                                                            }
                                                            §§goto(addr265);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr254);
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr184);
                           }
                        }
                        §§goto(addr169);
                     }
                     §§goto(addr164);
                  }
                  addr229:
                  §§push(this.m_sweep);
                  if(!(_loc9_ && param1))
                  {
                     addr242:
                     §§push(§§pop().c);
                     §§push(this.m_sweep.c.y);
                     if(!(_loc9_ && _loc3_))
                     {
                        addr255:
                        §§pop().y = §§pop() + this.m_xf.position.y;
                        §§push(this.m_sweep);
                        if(_loc8_ || param1)
                        {
                           addr265:
                           §§pop().c0.SetV(this.m_sweep.c);
                           §§push(this.m_sweep);
                        }
                        addr253:
                        addr252:
                        addr254:
                     }
                     §§goto(addr255);
                  }
                  §§pop().a0 = this.m_sweep.a = param2;
                  var _loc6_:§_-nW§ = this.m_world.§_-bL§.§_-ep§;
                  _loc3_ = this.§_-EF§;
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc9_)
                        {
                           this.m_world.§_-bL§.§_-Z6§();
                           break;
                        }
                        break;
                     }
                     _loc3_.§_-GT§(_loc6_,this.m_xf,this.m_xf);
                     if(_loc9_ && param1)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§_-NA§;
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §_-EJ§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-ST§(param1.position,param1.GetAngle());
         }
      }
      
      public function §_-ZO§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §_-d-§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-ST§(param1,this.GetAngle());
         }
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §_-eH§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-ST§(this.GetPosition(),param1);
         }
      }
      
      public function §_-lC§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §_-LI§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§_-Sj§ == b2_staticBody)
            {
               if(_loc3_ || this)
               {
                  return;
               }
            }
            this.§_-ZZ§.SetV(param1);
         }
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§_-ZZ§;
      }
      
      public function §_-kz§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§_-Sj§ == b2_staticBody)
            {
               if(_loc3_ || _loc3_)
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
      
      public function §_-JH§() : b2BodyDef
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§_-ww§();
         if(!(_loc2_ && _loc2_))
         {
            _loc1_.§_-J4§ = (this.§_-Il§ & b2internal::_-Iv) == b2internal::_-Iv;
            _loc1_.angle = this.GetAngle();
            _loc1_.§_-K5§ = this.§_-1p§;
            if(_loc3_)
            {
               _loc1_.§_-P3§ = this.m_angularVelocity;
               _loc1_.§_-W2§ = (this.§_-Il§ & b2internal::_-yC) == b2internal::_-yC;
               _loc1_.§_-eK§ = (this.§_-Il§ & b2internal::_-gO) == b2internal::_-gO;
               if(_loc3_)
               {
                  _loc1_.§_-MK§ = (this.§_-Il§ & b2internal::_-Vk) == b2internal::_-Vk;
                  _loc1_.§_-pQ§ = this.§_-rl§;
                  addr88:
                  _loc1_.§_-MI§.SetV(this.GetLinearVelocity());
                  if(_loc3_)
                  {
                     _loc1_.position = this.GetPosition();
                     if(_loc3_ || _loc2_)
                     {
                     }
                  }
                  §§goto(addr117);
               }
               _loc1_.§_-Vb§ = this.GetUserData();
            }
            addr117:
            return _loc1_;
         }
         §§goto(addr88);
      }
      
      public function §_-f8§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(this.§_-Sj§ != b2_dynamicBody)
         {
            if(_loc3_)
            {
               return;
            }
         }
         else
         {
            if(this.IsAwake() == false)
            {
               this.SetAwake(true);
            }
            §§push(this.§return§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(this.§return§);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop().x);
                  if(!(_loc4_ && this))
                  {
                     §§push(param1.x);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc3_ || _loc3_)
                        {
                           §§pop().x = §§pop();
                           if(!(_loc4_ && param1))
                           {
                              addr82:
                              §§push(this.§return§);
                              §§push(this.§return§.y);
                              if(!(_loc4_ && this))
                              {
                                 addr100:
                                 §§pop().y = §§pop() + param1.y;
                                 §§push(this);
                                 §§push(this.§_-0C§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(param2.x);
                                    if(!_loc4_)
                                    {
                                       §§push(this.m_sweep.c.x);
                                       if(_loc3_ || this)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc4_)
                                          {
                                             §§push(param1.y);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc3_ || this)
                                                {
                                                   §§push(param2.y);
                                                   if(_loc3_ || param2)
                                                   {
                                                      addr155:
                                                      §§push(this.m_sweep.c.y);
                                                      if(_loc3_ || param1)
                                                      {
                                                         §§goto(addr184);
                                                      }
                                                      addr184:
                                                      addr185:
                                                      addr186:
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc3_ || param2)
                                                      {
                                                         addr181:
                                                         §§push(param1.x);
                                                      }
                                                      §§pop().§_-0C§ = §§pop() + (§§pop() - §§pop());
                                                      return;
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr185);
                                             }
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr184);
                                 }
                                 §§goto(addr186);
                                 addr99:
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr100);
               }
            }
            §§goto(addr82);
         }
         §§goto(addr100);
      }
      
      public function §_-35§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§_-Sj§ != b2_dynamicBody)
            {
               if(_loc3_ || _loc3_)
               {
                  return;
               }
               §§goto(addr53);
            }
            else if(this.IsAwake() == false)
            {
               if(!(_loc2_ && this))
               {
                  addr53:
                  this.SetAwake(true);
                  if(_loc3_ || this)
                  {
                     addr63:
                     §§push(this);
                     §§push(this.§_-0C§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§_-0C§ = §§pop();
                  }
                  return;
               }
            }
         }
         §§goto(addr63);
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§_-Sj§ != b2_dynamicBody)
            {
               return;
            }
            if(this.IsAwake() == false)
            {
               if(_loc4_ || this)
               {
                  this.SetAwake(true);
                  addr35:
                  §§push(this.§_-ZZ§);
                  if(_loc4_ || param2)
                  {
                     §§push(this.§_-ZZ§);
                     if(!_loc3_)
                     {
                        §§push(§§pop().x);
                        if(_loc4_ || param2)
                        {
                           §§push(this.§_-eZ§);
                           if(!_loc3_)
                           {
                              §§push(param1.x);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc3_)
                                    {
                                       addr70:
                                       §§pop().x = §§pop();
                                       addr75:
                                       addr73:
                                       addr71:
                                       §§push(this.§_-ZZ§);
                                       §§push(this.§_-ZZ§.y);
                                       if(!(_loc3_ && param2))
                                       {
                                          addr83:
                                          §§push(this.§_-eZ§);
                                          if(!_loc3_)
                                          {
                                             addr94:
                                             §§push(§§pop() * param1.y);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().y = §§pop();
                                       §§push(this);
                                       §§push(this.m_angularVelocity);
                                       if(!_loc3_)
                                       {
                                          §§push(this.§_-DZ§);
                                          if(_loc4_ || this)
                                          {
                                             §§push(param2.x);
                                             if(!_loc3_)
                                             {
                                                §§push(this.m_sweep.c.x);
                                                if(!(_loc3_ && this))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      addr136:
                                                      §§push(param1.y);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         addr145:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc4_ || this)
                                                         {
                                                            addr153:
                                                            §§push(param2.y);
                                                            if(_loc4_)
                                                            {
                                                               §§push(this.m_sweep.c.y);
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  §§goto(addr181);
                                                               }
                                                               addr181:
                                                               §§push(§§pop() - §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  addr178:
                                                                  §§push(param1.x);
                                                               }
                                                               §§pop().m_angularVelocity = §§pop() + §§pop() * (§§pop() - §§pop());
                                                               return;
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr153);
                                                }
                                                §§goto(addr145);
                                             }
                                             §§goto(addr136);
                                          }
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr83);
                                 }
                              }
                           }
                           §§goto(addr94);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr73);
               }
               §§goto(addr71);
            }
            §§goto(addr35);
         }
         §§goto(addr70);
      }
      
      public function §_-eC§(param1:Function) : b2Body
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         §§push(this.GetAngularVelocity());
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:b2Vec2 = this.§_-lC§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§_-EK§(this.§_-JH§());
         var _loc8_:b2Fixture = _loc5_.§_-EF§;
         while(true)
         {
            if(_loc8_)
            {
               if(param1(_loc8_))
               {
                  if(!_loc16_)
                  {
                     break;
                  }
                  _loc13_ = _loc8_.§_-NA§;
                  if(_loc7_)
                  {
                     _loc7_.§_-NA§ = _loc13_;
                  }
                  else
                  {
                     _loc5_.§_-EF§ = _loc13_;
                  }
                  var _loc14_:*;
                  §§push((_loc14_ = _loc5_).§_-eR§);
                  if(!(_loc17_ && this))
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc15_:* = §§pop();
                  if(!(_loc17_ && _loc3_))
                  {
                     _loc14_.§_-eR§ = _loc15_;
                  }
                  _loc8_.§_-NA§ = _loc6_.§_-EF§;
                  _loc6_.§_-EF§ = _loc8_;
                  if(_loc16_ || param1)
                  {
                     §§push((_loc14_ = _loc6_).§_-eR§);
                     if(_loc16_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc15_ = §§pop();
                     if(_loc16_ || _loc3_)
                     {
                        _loc14_.§_-eR§ = _loc15_;
                     }
                  }
                  _loc8_.m_body = _loc6_;
                  _loc8_ = _loc13_;
               }
               else
               {
                  _loc7_ = _loc8_;
                  _loc8_ = _loc8_.§_-NA§;
               }
               continue;
            }
            if(_loc16_)
            {
               _loc5_.§_-V2§();
               if(_loc16_)
               {
                  break;
               }
            }
            var _loc9_:b2Vec2 = _loc5_.§_-lC§();
            var _loc10_:b2Vec2 = _loc6_.§_-lC§();
            var _loc11_:b2Vec2 = b2Math.§_-Qv§(_loc2_,b2Math.§_-dj§(_loc3_,b2Math.§_-TD§(_loc9_,_loc4_)));
            var _loc12_:b2Vec2 = b2Math.§_-Qv§(_loc2_,b2Math.§_-dj§(_loc3_,b2Math.§_-TD§(_loc10_,_loc4_)));
            _loc5_.SetLinearVelocity(_loc11_);
            if(_loc16_ || _loc2_)
            {
               _loc6_.SetLinearVelocity(_loc12_);
               if(!_loc17_)
               {
                  _loc5_.§_-kz§(_loc3_);
                  _loc6_.§_-kz§(_loc3_);
                  if(!_loc17_)
                  {
                     addr222:
                     _loc5_.§_-F6§();
                  }
                  _loc6_.§_-F6§();
               }
               return _loc6_;
            }
            §§goto(addr222);
         }
         _loc6_.§_-V2§();
         §§goto(addr160);
      }
      
      public function §_-64§(param1:b2Body) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§_-EF§;
         for(; _loc2_; _loc2_ = _loc11_)
         {
            _loc11_ = _loc2_.§_-NA§;
            if(!(_loc14_ && param1))
            {
               var _loc12_:*;
               §§push((_loc12_ = param1).§_-eR§);
               if(!(_loc14_ && this))
               {
                  §§push(§§pop() - 1);
               }
               var _loc13_:* = §§pop();
               if(_loc15_ || _loc3_)
               {
                  _loc12_.§_-eR§ = _loc13_;
               }
               if(_loc15_ || param1)
               {
                  _loc2_.§_-NA§ = this.§_-EF§;
                  if(_loc15_)
                  {
                     this.§_-EF§ = _loc2_;
                     if(!_loc15_)
                     {
                        continue;
                     }
                     addr86:
                     §§push((_loc12_ = this).§_-eR§);
                     if(!_loc14_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc13_ = §§pop();
                     if(!_loc14_)
                     {
                        _loc12_.§_-eR§ = _loc13_;
                     }
                     if(_loc14_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  §§goto(addr86);
               }
               _loc2_.m_body = _loc4_;
               continue;
            }
            §§goto(addr86);
         }
         if(!_loc14_)
         {
            _loc3_.§_-eR§ = 0;
         }
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§_-lC§();
         var _loc6_:b2Vec2 = _loc4_.§_-lC§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         §§push(_loc3_.GetAngularVelocity());
         if(!_loc14_)
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(_loc4_.GetAngularVelocity());
         if(_loc15_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         if(!(_loc14_ && _loc2_))
         {
            _loc3_.§_-V2§();
            if(!(_loc14_ && this))
            {
               this.§_-F6§();
            }
         }
      }
      
      public function GetMass() : Number
      {
         return this.§_-jI§;
      }
      
      public function §_-gh§() : Number
      {
         return this.§_-ry§;
      }
      
      public function §_-vR§(param1:b2MassData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            param1.§_-zT§ = this.§_-jI§;
            if(_loc2_)
            {
               param1.§_-Lx§ = this.§_-ry§;
               if(!(_loc3_ && param1))
               {
                  param1.center.SetV(this.m_sweep.localCenter);
               }
            }
         }
      }
      
      public function §_-0f§(param1:b2MassData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(b2Settings);
         §§push(this.m_world.§_-NO§());
         if(!_loc3_)
         {
            §§push(§§pop() == false);
         }
         §§pop().b2Assert(§§pop());
         if(_loc4_ || param1)
         {
            §§push(this.m_world.§_-NO§());
            if(_loc4_)
            {
               §§push(true);
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() == §§pop())
                  {
                     return;
                  }
                  §§push(this.§_-Sj§);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop() != b2_dynamicBody)
                     {
                        if(_loc4_ || param1)
                        {
                           return;
                        }
                     }
                     else
                     {
                        this.§_-eZ§ = 0;
                        this.§_-ry§ = 0;
                        addr70:
                        this.§_-DZ§ = 0;
                     }
                     this.§_-jI§ = param1.§_-zT§;
                     §§push(this.§_-jI§);
                     if(_loc4_ || param1)
                     {
                        §§push(0);
                        if(_loc4_ || _loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              this.§_-jI§ = 1;
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr105:
                                 this.§_-eZ§ = 1 / this.§_-jI§;
                                 §§push(param1.§_-Lx§ > 0);
                                 if(!_loc3_)
                                 {
                                    addr118:
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr126:
                                          §§pop();
                                          §§push((this.§_-Il§ & b2internal::_-yC) == 0);
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(this);
                                          §§push(param1.§_-Lx§);
                                          if(!_loc3_)
                                          {
                                             §§push(this.§_-jI§);
                                             if(!_loc3_)
                                             {
                                                §§push(param1.center.x);
                                                if(!_loc3_)
                                                {
                                                   §§push(param1.center);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc4_ || param1)
                                                      {
                                                         §§goto(addr187);
                                                      }
                                                      addr187:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc4_ || this)
                                                      {
                                                         addr172:
                                                         §§push(param1.center.y);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() * param1.center.y);
                                                         }
                                                      }
                                                      §§pop().§_-ry§ = §§pop() - §§pop() * §§pop();
                                                      if(!_loc3_)
                                                      {
                                                         addr192:
                                                         this.§_-DZ§ = 1 / this.§_-ry§;
                                                         §§goto(addr198);
                                                      }
                                                      addr198:
                                                      var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§push(this.m_sweep);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            §§pop().localCenter.SetV(param1.center);
                                                            if(_loc4_)
                                                            {
                                                               §§push(this.m_sweep);
                                                               if(!_loc3_)
                                                               {
                                                                  addr230:
                                                                  §§pop().c0.SetV(b2Math.§_-Y9§(this.m_xf,this.m_sweep.localCenter));
                                                                  §§goto(addr324);
                                                               }
                                                               §§pop().c.SetV(this.m_sweep.c0);
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr250);
                                                               }
                                                            }
                                                            §§goto(addr324);
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      addr250:
                                                      §§push(this.§_-ZZ§);
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         §§push(this.§_-ZZ§);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(this.m_angularVelocity);
                                                               if(_loc4_ || param1)
                                                               {
                                                                  §§push(this.m_sweep);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop().c);
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(_loc2_.y);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                          addr324:
                                                                                          §§goto(addr371);
                                                                                       }
                                                                                       §§goto(addr331);
                                                                                    }
                                                                                    §§goto(addr340);
                                                                                 }
                                                                                 §§goto(addr351);
                                                                              }
                                                                              §§goto(addr340);
                                                                           }
                                                                           §§goto(addr351);
                                                                        }
                                                                        §§goto(addr368);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                            addr371:
                                                            §§goto(addr328);
                                                         }
                                                         addr328:
                                                         §§goto(addr326);
                                                      }
                                                      addr326:
                                                      if(_loc4_)
                                                      {
                                                         §§push(this.m_sweep);
                                                      }
                                                      §§push(this.§_-ZZ§);
                                                      §§push(this.§_-ZZ§.y);
                                                      if(!_loc3_)
                                                      {
                                                         addr331:
                                                         §§push(this.m_angularVelocity);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            addr340:
                                                            §§push(this.m_sweep.c.x);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr351:
                                                               §§push(§§pop() - _loc2_.x);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr368:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().y = §§pop();
                                                      return;
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr172);
                                                }
                                             }
                                          }
                                          §§goto(addr187);
                                       }
                                    }
                                    §§goto(addr192);
                                 }
                              }
                              §§goto(addr126);
                           }
                        }
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr126);
               }
               §§goto(addr118);
            }
            §§goto(addr126);
         }
         §§goto(addr70);
      }
      
      public function §_-V2§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2MassData = null;
         if(_loc5_ || _loc3_)
         {
            this.§_-jI§ = 0;
            if(_loc5_ || _loc1_)
            {
               this.§_-eZ§ = 0;
               this.§_-ry§ = 0;
               this.§_-DZ§ = 0;
               this.m_sweep.localCenter.§_-0a§();
               addr46:
               §§push(this.§_-Sj§);
               if(!_loc6_)
               {
                  §§push(b2_staticBody);
                  if(_loc5_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc5_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc6_ && _loc3_))
                           {
                              addr65:
                              §§pop();
                              §§push(this.§_-Sj§ == b2_kinematicBody);
                           }
                        }
                        if(§§pop())
                        {
                           return;
                        }
                        var _loc1_:b2Vec2 = b2Vec2.§_-XT§(0,0);
                        var _loc2_:b2Fixture = this.§_-EF§;
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc5_ || _loc1_)
                              {
                                 §§push(this.§_-jI§);
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 addr272:
                                 §§push(§§pop() > 0);
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§pop();
                                          §§push((this.§_-Il§ & b2internal::_-yC) == 0);
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    addr293:
                                    §§push(this);
                                    §§push(this.§_-ry§);
                                    if(_loc5_ || this)
                                    {
                                       §§push(this.§_-jI§);
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(_loc1_.x);
                                          if(!_loc6_)
                                          {
                                             §§push(_loc1_.x);
                                             if(_loc5_ || _loc2_)
                                             {
                                                addr337:
                                                addr338:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc6_)
                                                {
                                                   addr328:
                                                   §§push(_loc1_.y);
                                                   if(_loc5_)
                                                   {
                                                      addr332:
                                                      §§push(§§pop() * _loc1_.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().§_-ry§ = §§pop() - §§pop() * §§pop();
                                                §§push(this);
                                                §§push(this.§_-ry§);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() * this.§_-Jm§);
                                                }
                                                §§pop().§_-ry§ = §§pop();
                                                if(_loc5_ || _loc3_)
                                                {
                                                   b2Settings.b2Assert(this.§_-ry§ > 0);
                                                }
                                                this.§_-DZ§ = 1 / this.§_-ry§;
                                                var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
                                                if(_loc5_)
                                                {
                                                   §§push(this.m_sweep);
                                                   if(_loc5_)
                                                   {
                                                      §§pop().localCenter.SetV(_loc1_);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(this.m_sweep);
                                                         if(_loc5_)
                                                         {
                                                            addr395:
                                                            §§pop().c0.SetV(b2Math.§_-Y9§(this.m_xf,this.m_sweep.localCenter));
                                                            if(_loc5_)
                                                            {
                                                               addr408:
                                                               this.m_sweep.c.SetV(this.m_sweep.c0);
                                                               if(_loc5_ || this)
                                                               {
                                                                  addr420:
                                                                  §§push(this.§_-ZZ§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(this.§_-ZZ§);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(this.m_angularVelocity);
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              §§push(this.m_sweep);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(§§pop().c);
                                                                                 if(_loc5_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(_loc3_.y);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(!(_loc6_ && _loc1_))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc5_ || _loc1_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         addr498:
                                                                                                         §§push(this.§_-ZZ§);
                                                                                                         §§push(this.§_-ZZ§.y);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr501:
                                                                                                            §§push(this.m_angularVelocity);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               addr505:
                                                                                                               addr508:
                                                                                                               addr507:
                                                                                                               §§push(this.m_sweep.c.x);
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  addr513:
                                                                                                                  §§push(§§pop() - _loc3_.x);
                                                                                                                  if(_loc5_ || _loc1_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr531:
                                                                                                                  §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                  return;
                                                                                                                  addr529:
                                                                                                                  addr530:
                                                                                                               }
                                                                                                               §§goto(addr529);
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr530);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr531);
                                                                                                   }
                                                                                                   §§goto(addr501);
                                                                                                }
                                                                                                §§goto(addr505);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr531);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr513);
                                                                                 }
                                                                                 §§goto(addr508);
                                                                              }
                                                                              §§goto(addr507);
                                                                           }
                                                                           §§goto(addr505);
                                                                        }
                                                                        §§goto(addr513);
                                                                     }
                                                                  }
                                                                  §§goto(addr498);
                                                               }
                                                            }
                                                            §§goto(addr498);
                                                         }
                                                      }
                                                      §§goto(addr408);
                                                   }
                                                   §§goto(addr395);
                                                }
                                                §§goto(addr420);
                                             }
                                             §§goto(addr332);
                                          }
                                          §§goto(addr328);
                                       }
                                       §§goto(addr337);
                                    }
                                    §§goto(addr338);
                                 }
                                 else
                                 {
                                    this.§_-ry§ = 0;
                                    this.§_-DZ§ = 0;
                                 }
                                 §§goto(addr337);
                              }
                           }
                           else
                           {
                              §§push(_loc2_.§_-9V§);
                              if(_loc6_ && this)
                              {
                                 break;
                              }
                              §§push(0);
                              if(!_loc6_)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    _loc4_ = _loc2_.§_-vR§();
                                    if(_loc5_)
                                    {
                                       §§push(this);
                                       §§push(this.§_-jI§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + _loc4_.§_-zT§);
                                       }
                                       §§pop().§_-jI§ = §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(_loc1_);
                                          §§push(_loc1_.x);
                                          if(!_loc6_)
                                          {
                                             §§push(_loc4_.center.x);
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(§§pop() * _loc4_.§_-zT§);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().x = §§pop();
                                          if(_loc6_)
                                          {
                                             continue;
                                          }
                                       }
                                       §§push(_loc1_);
                                       §§push(_loc1_.y);
                                       if(_loc5_)
                                       {
                                          §§push(_loc4_.center.y);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * _loc4_.§_-zT§);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().y = §§pop();
                                       if(_loc5_)
                                       {
                                          §§push(this);
                                          §§push(this.§_-ry§);
                                          if(_loc5_ || _loc1_)
                                          {
                                             §§push(§§pop() + _loc4_.§_-Lx§);
                                          }
                                          §§pop().§_-ry§ = §§pop();
                                       }
                                    }
                                 }
                                 continue;
                              }
                              addr193:
                              if(§§pop() > §§pop())
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    this.§_-eZ§ = 1 / this.§_-jI§;
                                    if(_loc5_ || _loc1_)
                                    {
                                       §§push(_loc1_);
                                       §§push(_loc1_.x);
                                       if(!(_loc6_ && _loc1_))
                                       {
                                          §§push(§§pop() * this.§_-eZ§);
                                       }
                                       §§pop().x = §§pop();
                                       if(_loc5_ || _loc1_)
                                       {
                                          §§push(_loc1_);
                                          §§push(_loc1_.y);
                                          if(_loc5_ || _loc1_)
                                          {
                                             §§push(§§pop() * this.§_-eZ§);
                                          }
                                          §§pop().y = §§pop();
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             addr270:
                                             §§goto(addr272);
                                             §§push(this.§_-ry§);
                                             addr256:
                                          }
                                          §§goto(addr293);
                                       }
                                       §§goto(addr337);
                                    }
                                    §§goto(addr256);
                                 }
                              }
                              else
                              {
                                 this.§_-jI§ = 1;
                                 this.§_-eZ§ = 1;
                              }
                           }
                           §§goto(addr270);
                        }
                        §§push(0);
                        if(!(_loc6_ && this))
                        {
                           §§goto(addr193);
                        }
                        §§goto(addr272);
                     }
                  }
               }
            }
            §§goto(addr65);
         }
         §§goto(addr46);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!(_loc5_ && _loc2_))
         {
            §§push(param1.x);
            if(_loc4_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc5_ && this))
               {
                  §§push(_loc2_.col2.x);
                  if(_loc4_)
                  {
                     §§push(param1.y);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc4_)
                        {
                           addr59:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr69:
                              §§push(param1.x);
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr107:
                                    §§push(_loc2_.col2.y);
                                    if(_loc4_ || _loc2_)
                                    {
                                       addr103:
                                       §§push(§§pop() * param1.y);
                                    }
                                    var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
                                    if(!_loc5_)
                                    {
                                       §§push(_loc3_);
                                       §§push(_loc3_.x);
                                       if(_loc4_ || param1)
                                       {
                                          §§push(§§pop() + this.m_xf.position.x);
                                       }
                                       §§pop().x = §§pop();
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr135:
                                          §§push(_loc3_);
                                          §§push(_loc3_.y);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() + this.m_xf.position.y);
                                          }
                                          §§pop().y = §§pop();
                                       }
                                       return _loc3_;
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr69);
               }
               §§goto(addr59);
            }
            §§goto(addr107);
         }
         §§goto(addr59);
      }
      
      public function §_-Op§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-FP§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-CS§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§_-P4§(this.m_xf.R,param1);
      }
      
      public function §_-N4§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§_-ZZ§.x);
         if(!_loc2_)
         {
            §§push(this.m_angularVelocity);
            if(!(_loc2_ && _loc2_))
            {
               §§push(param1.y);
               if(_loc3_ || _loc2_)
               {
                  §§push(this.m_sweep.c.y);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() - §§pop());
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_)
                        {
                           addr68:
                           §§push(§§pop() - §§pop());
                           §§push(this.§_-ZZ§.y);
                           if(!_loc3_)
                           {
                           }
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr93);
               }
               §§goto(addr82);
            }
            addr100:
            §§push(this.m_angularVelocity);
            if(_loc3_ || this)
            {
               addr82:
               §§push(param1.x);
               if(_loc3_)
               {
                  addr93:
                  §§push(§§pop() - this.m_sweep.c.x);
               }
               §§push(§§pop() * §§pop());
            }
            return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
         }
         §§goto(addr68);
      }
      
      public function §_-bN§(param1:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2Mat22 = this.m_xf.R;
         §§push(§§findproperty(b2Vec2));
         §§push(_loc2_.col1.x);
         if(!_loc4_)
         {
            §§push(param1.x);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  §§push(_loc2_.col2.x);
                  if(_loc5_)
                  {
                     §§push(param1.y);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc5_)
                        {
                           addr49:
                           §§push(§§pop() + §§pop());
                           §§push(_loc2_.col1.y);
                           if(_loc5_ || this)
                           {
                              §§push(param1.x);
                              if(!_loc4_)
                              {
                                 addr81:
                                 §§push(§§pop() * §§pop());
                                 if(!_loc4_)
                                 {
                                    addr67:
                                    §§push(_loc2_.col2.y);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§§pop() * param1.y);
                                    }
                                 }
                                 var _loc3_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(_loc3_);
                                    §§push(_loc3_.x);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + this.m_xf.position.x);
                                    }
                                    §§pop().x = §§pop();
                                    if(!(_loc4_ && param1))
                                    {
                                       addr111:
                                       §§push(_loc3_);
                                       §§push(_loc3_.y);
                                       if(_loc5_ || param1)
                                       {
                                          §§push(§§pop() + this.m_xf.position.y);
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    §§push(§§findproperty(b2Vec2));
                                    §§push(this.§_-ZZ§.x);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§push(this.m_angularVelocity);
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§push(_loc3_.y);
                                          if(_loc5_ || param1)
                                          {
                                             §§push(this.m_sweep.c.y);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr188);
                                             }
                                          }
                                          §§goto(addr204);
                                       }
                                       addr178:
                                       §§goto(addr179);
                                    }
                                    addr179:
                                    §§push(§§pop() - §§pop());
                                    §§push(this.§_-ZZ§.y);
                                    if(!_loc4_)
                                    {
                                       addr184:
                                       §§push(this.m_angularVelocity);
                                       if(_loc5_)
                                       {
                                          addr188:
                                          §§push(_loc3_.x);
                                          if(_loc5_)
                                          {
                                             addr204:
                                             §§push(§§pop() + §§pop() * (§§pop() - this.m_sweep.c.x));
                                          }
                                       }
                                       §§goto(addr204);
                                    }
                                    return new §§pop().b2Vec2(§§pop(),§§pop());
                                 }
                                 §§goto(addr111);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr81);
                  }
               }
               §§goto(addr49);
            }
            §§goto(addr67);
         }
         §§goto(addr49);
      }
      
      public function §_-EA§() : Number
      {
         return this.§_-rl§;
      }
      
      public function §_-3l§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-rl§ = param1;
         }
      }
      
      public function §_-un§() : Number
      {
         return this.§_-1p§;
      }
      
      public function §_-BP§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-1p§ = param1;
         }
      }
      
      public function §_-rK§(param1:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§_-Sj§);
         if(!(_loc4_ && this))
         {
            §§push(param1);
            if(!_loc4_)
            {
               if(§§pop() == §§pop())
               {
                  return;
               }
               this.§_-Sj§ = param1;
               if(!(_loc4_ && param1))
               {
                  this.§_-V2§();
                  addr42:
                  if(this.§_-Sj§ == b2_staticBody)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr57:
                        this.§_-ZZ§.§_-0a§();
                        this.m_angularVelocity = 0;
                        addr63:
                        this.SetAwake(true);
                        this.§return§.§_-0a§();
                        this.§_-0C§ = 0;
                     }
                     var _loc2_:b2ContactEdge = this.§_-W1§;
                     while(_loc2_)
                     {
                        _loc2_.§_-bX§.§_-om§();
                        if(!(_loc3_ || _loc2_))
                        {
                           break;
                        }
                        _loc2_ = _loc2_.§_-Jr§;
                     }
                     return;
                  }
                  §§goto(addr63);
               }
               §§goto(addr57);
            }
         }
         §§goto(addr42);
      }
      
      public function §_-ww§() : uint
      {
         return this.§_-Sj§;
      }
      
      public function §_-tS§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  this.§_-Il§ |= b2internal::_-gO;
                  if(_loc2_ || this)
                  {
                     addr46:
                  }
               }
            }
            else
            {
               this.§_-Il§ &= ~b2internal::_-gO;
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §_-60§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-gO) == b2internal::_-gO;
      }
      
      public function §_-4D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1)
            {
               if(_loc3_ || this)
               {
                  this.§_-Il§ |= b2internal::_-Iv;
                  if(_loc2_ && this)
                  {
                  }
               }
               else
               {
                  addr72:
                  this.SetAwake(true);
               }
            }
            else
            {
               this.§_-Il§ &= ~b2internal::_-Iv;
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr72);
               }
            }
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(param1)
         {
            this.§_-Il§ |= b2internal::_-Vk;
            this.§_-5g§ = 0;
         }
         else
         {
            this.§_-Il§ &= ~b2internal::_-Vk;
            if(!_loc3_)
            {
               this.§_-5g§ = 0;
               this.§_-ZZ§.§_-0a§();
               this.m_angularVelocity = 0;
               if(!_loc2_)
               {
               }
               §§goto(addr65);
            }
            this.§return§.§_-0a§();
            this.§_-0C§ = 0;
         }
         addr65:
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-Vk) == b2internal::_-Vk;
      }
      
      public function §_-hs§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  this.§_-Il§ |= b2internal::_-yC;
                  if(!_loc3_)
                  {
                     addr51:
                     this.§_-V2§();
                  }
               }
            }
            else
            {
               this.§_-Il§ &= ~b2internal::_-yC;
               if(_loc2_)
               {
                  §§goto(addr51);
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §_-s§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-yC) == b2internal::_-yC;
      }
      
      public function §_-Dh§(param1:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§_-nW§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(_loc6_)
         {
            §§push(param1);
            if(!(_loc7_ && param1))
            {
               if(§§pop() == this.§_-w4§())
               {
                  if(_loc6_ || _loc2_)
                  {
                     return;
                  }
                  addr57:
                  this.§_-Il§ |= b2internal::dynamic;
                  addr63:
                  _loc2_ = this.m_world.§_-bL§.§_-ep§;
                  _loc3_ = this.§_-EF§;
                  while(_loc3_)
                  {
                     _loc3_.§_-mf§(_loc2_,this.m_xf);
                     if(_loc7_ && _loc3_)
                     {
                        break;
                     }
                     _loc3_ = _loc3_.§_-NA§;
                  }
               }
               else
               {
                  addr49:
                  if(param1)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        §§goto(addr57);
                     }
                     §§goto(addr63);
                  }
                  else
                  {
                     this.§_-Il§ &= ~b2internal::dynamic;
                     _loc2_ = this.m_world.§_-bL§.§_-ep§;
                     _loc3_ = this.§_-EF§;
                     if(_loc6_ || this)
                     {
                        while(_loc3_)
                        {
                           _loc3_.§_-aV§(_loc2_);
                           if(!(_loc6_ || _loc3_))
                           {
                              break;
                           }
                           _loc3_ = _loc3_.§_-NA§;
                        }
                     }
                     _loc4_ = this.§_-W1§;
                     if(!(_loc7_ && _loc3_))
                     {
                        while(_loc4_)
                        {
                           _loc5_ = _loc4_;
                           _loc4_ = _loc4_.§_-Jr§;
                           if(!_loc7_)
                           {
                              this.m_world.§_-bL§.§_-2A§(_loc5_.§_-bX§);
                           }
                        }
                        if(!(_loc7_ && this))
                        {
                           this.§_-W1§ = null;
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr49);
         }
         §§goto(addr57);
      }
      
      public function §_-w4§() : Boolean
      {
         return (this.§_-Il§ & b2internal::dynamic) == b2internal::dynamic;
      }
      
      public function §_-U4§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-Iv) == b2internal::_-Iv;
      }
      
      public function §_-xG§() : b2Fixture
      {
         return this.§_-EF§;
      }
      
      public function §_-9y§() : b2JointEdge
      {
         return this.§_-Ry§;
      }
      
      public function §_-PI§() : b2ControllerEdge
      {
         return this.§_-C2§;
      }
      
      public function §_-Xi§() : b2ContactEdge
      {
         return this.§_-W1§;
      }
      
      public function §_-tx§() : b2Body
      {
         return this.§_-NA§;
      }
      
      public function GetUserData() : *
      {
         return this.§_-OB§;
      }
      
      public function §_-g6§(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§_-OB§ = param1;
         }
      }
      
      public function §_-MR§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §_-F6§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §_-aO§;
         if(_loc7_)
         {
            §§push(_loc1_.R);
            if(_loc7_ || _loc1_)
            {
               §§pop().Set(this.m_sweep.a0);
               addr35:
               §§push(_loc1_.R);
            }
            var _loc2_:b2Mat22 = §§pop();
            var _loc3_:b2Vec2 = this.m_sweep.localCenter;
            if(_loc7_)
            {
               §§push(_loc1_.position);
               if(!_loc6_)
               {
                  §§push(this.m_sweep);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§pop().c0);
                     if(!_loc6_)
                     {
                        §§push(§§pop().x);
                        if(_loc7_)
                        {
                           §§push(_loc2_.col1);
                           if(_loc7_)
                           {
                              §§push(§§pop().x);
                              if(_loc7_ || this)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc7_)
                                    {
                                       addr89:
                                       §§push(_loc2_.col2);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc6_ && _loc1_))
                                          {
                                             §§push(_loc3_.y);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc6_ && _loc1_))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            addr139:
                                                            addr138:
                                                            addr136:
                                                            §§push(_loc1_.position);
                                                            §§push(this.m_sweep.c0.y);
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               addr147:
                                                               addr149:
                                                               §§push(_loc2_.col1.y);
                                                               if(!_loc6_)
                                                               {
                                                                  addr152:
                                                                  §§push(_loc3_.x);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr161:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        addr169:
                                                                        §§push(_loc2_.col2.y);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr177:
                                                                           §§push(§§pop() + §§pop() * _loc3_.y);
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                  }
                                                                  §§goto(addr177);
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                            }
                                                            §§pop().y = §§pop();
                                                            §§goto(addr180);
                                                         }
                                                         addr180:
                                                         var _loc5_:§_-nW§ = this.m_world.§_-bL§.§_-ep§;
                                                         _loc4_ = this.§_-EF§;
                                                         while(_loc4_)
                                                         {
                                                            _loc4_.§_-GT§(_loc5_,_loc1_,this.m_xf);
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            _loc4_ = _loc4_.§_-NA§;
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr169);
                                                }
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr138);
               }
               §§goto(addr136);
            }
            §§goto(addr139);
         }
         §§goto(addr35);
      }
      
      b2internal function §_-Z9§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.m_xf);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop().R);
               if(_loc3_ || this)
               {
                  §§pop().Set(this.m_sweep.a);
                  addr43:
                  §§push(this.m_xf.R);
               }
               var _loc1_:b2Mat22 = §§pop();
               var _loc2_:b2Vec2 = this.m_sweep.localCenter;
               if(_loc3_ || _loc3_)
               {
                  §§push(this.m_xf);
                  if(_loc3_ || _loc1_)
                  {
                     §§push(§§pop().position);
                     if(!(_loc4_ && this))
                     {
                        §§push(this.m_sweep);
                        if(!_loc4_)
                        {
                           §§push(§§pop().c);
                           if(_loc3_ || this)
                           {
                              §§push(§§pop().x);
                              if(!(_loc4_ && _loc1_))
                              {
                                 §§push(_loc1_.col1);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§pop().x);
                                    if(_loc3_)
                                    {
                                       §§push(_loc2_.x);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!_loc4_)
                                          {
                                             addr121:
                                             §§push(_loc1_.col2);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(_loc2_.y);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§pop().x = §§pop();
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  addr175:
                                                                  §§push(this.m_xf.position);
                                                                  §§push(this.m_sweep.c.y);
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr202:
                                                                     §§push(_loc1_.col1.y);
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§push(_loc2_.x);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                           }
                                                                           addr222:
                                                                           §§pop().y = §§pop() - §§pop();
                                                                           addr223:
                                                                           return;
                                                                           addr221:
                                                                        }
                                                                        addr220:
                                                                        §§goto(addr221);
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§push(_loc1_.col2.y);
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        addr219:
                                                                        §§goto(addr220);
                                                                        §§push(§§pop() * _loc2_.y);
                                                                     }
                                                                     §§goto(addr220);
                                                                  }
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                }
                                                §§goto(addr219);
                                             }
                                             §§goto(addr202);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr220);
                                    }
                                    §§goto(addr121);
                                 }
                              }
                              §§goto(addr202);
                           }
                        }
                     }
                  }
                  §§goto(addr175);
               }
               §§goto(addr222);
            }
         }
         §§goto(addr43);
      }
      
      b2internal function §_-Zp§(param1:b2Body) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§_-Sj§);
            if(_loc3_)
            {
               §§push(b2_dynamicBody);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(!§§pop());
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§goto(addr42);
                           }
                        }
                     }
                     §§goto(addr54);
                  }
                  addr42:
                  §§pop();
                  if(_loc3_)
                  {
                     §§goto(addr48);
                  }
                  §§goto(addr71);
               }
               addr48:
               §§goto(addr47);
            }
            addr47:
            §§push(param1.§_-Sj§ == b2_dynamicBody);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  addr54:
                  if(§§pop())
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(false);
                     }
                     else
                     {
                        §§goto(addr71);
                     }
                  }
                  §§goto(addr71);
               }
            }
            return §§pop();
         }
         addr71:
         var _loc2_:b2JointEdge = this.§_-Ry§;
         while(true)
         {
            if(!_loc2_)
            {
               §§push(true);
               break;
            }
            if(_loc2_.§_-dr§ == param1)
            {
               if(_loc3_)
               {
                  §§push(_loc2_.§_-Kx§.§_-Ef§);
                  if(_loc4_ && _loc3_)
                  {
                     break;
                  }
                  if(§§pop() == false)
                  {
                     if(_loc3_)
                     {
                        §§push(false);
                        if(!(_loc4_ && this))
                        {
                           return §§pop();
                        }
                        break;
                     }
                  }
               }
            }
            _loc2_ = _loc2_.§_-Jr§;
         }
         return §§pop();
      }
      
      b2internal function §_-8j§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.m_sweep);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  §§pop().§_-8j§(§§pop());
                  if(_loc3_ || _loc3_)
                  {
                     addr48:
                     §§push(this.m_sweep);
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr57);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr69);
               }
               §§goto(addr74);
            }
            addr57:
            §§pop().c.SetV(this.m_sweep.c0);
            if(!(_loc2_ && _loc3_))
            {
               addr74:
               this.m_sweep.a = this.m_sweep.a0;
               if(!(_loc2_ && _loc2_))
               {
                  this.§_-Z9§();
               }
               addr71:
               addr69:
            }
            return;
         }
         §§goto(addr48);
      }
   }
}
