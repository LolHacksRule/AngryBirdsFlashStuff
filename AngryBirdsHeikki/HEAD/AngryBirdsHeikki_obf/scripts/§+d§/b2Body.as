package §+d§
{
   import §%E§.b2Contact;
   import §%E§.b2ContactEdge;
   import §6%§.b2Settings;
   import §6%§.b2internal;
   import §7!3§.b2JointEdge;
   import §8`§.b2EdgeShape;
   import §8`§.b2MassData;
   import §8`§.b2Shape;
   import §9!<§.b2ControllerEdge;
   import §=n§.§@!C§;
   import §`!^§.b2Mat22;
   import §`!^§.b2Math;
   import §`!^§.b2Sweep;
   import §`!^§.b2Transform;
   import §`!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §8k§:b2Transform = new b2Transform();
      
      b2internal static var §^!W§:uint = 1;
      
      b2internal static var §9`§:uint = 2;
      
      b2internal static var §7!#§:uint = 4;
      
      b2internal static var §]D§:uint = 8;
      
      b2internal static var §!z§:uint = 16;
      
      b2internal static var §!!N§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §?!?§:uint;
      
      b2internal var §5!'§:int;
      
      b2internal var §=!S§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §^!S§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §66§:b2Vec2;
      
      b2internal var §,!§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §;h§:b2Body;
      
      b2internal var §8A§:b2Body;
      
      b2internal var §&t§:b2Fixture;
      
      b2internal var §41§:int;
      
      b2internal var §7r§:b2ControllerEdge;
      
      b2internal var §97§:int;
      
      b2internal var §>!$§:b2JointEdge;
      
      b2internal var §5!e§:b2ContactEdge;
      
      b2internal var §3!@§:Number;
      
      b2internal var §@h§:Number;
      
      b2internal var §6Y§:Number;
      
      b2internal var §8t§:Number;
      
      b2internal var §!!<§:Number;
      
      b2internal var §[!=§:Number;
      
      b2internal var §"e§:Number;
      
      b2internal var §#§:Number;
      
      private var § 1§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§^!S§ = new b2Vec2();
         this.§66§ = new b2Vec2();
         super();
         this.§?!?§ = 0;
         if(param1.§&[§)
         {
            this.§?!?§ |= b2internal::]D;
         }
         if(param1.§9"§)
         {
            this.§?!?§ |= b2internal::!z;
         }
         if(param1.§0!^§)
         {
            this.§?!?§ |= b2internal::7!#;
         }
         if(param1.§4!+§)
         {
            this.§?!?§ |= b2internal::9`;
         }
         if(param1.§<F§)
         {
            this.§?!?§ |= b2internal::!!N;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§8c§();
         this.m_sweep.§0!E§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§>!$§ = null;
         this.§7r§ = null;
         this.§5!e§ = null;
         this.§97§ = 0;
         this.§;h§ = null;
         this.§8A§ = null;
         this.§^!S§.SetV(param1.§0!S§);
         this.m_angularVelocity = param1.§'<§;
         this.§[!=§ = param1.§3z§;
         this.§"e§ = param1.§ case§;
         this.§66§.Set(0,0);
         this.§,!§ = 0;
         this.§#§ = 0;
         this.§5!'§ = param1.type;
         if(this.§5!'§ == b2_dynamicBody)
         {
            this.§3!@§ = 1;
            this.§@h§ = 1;
         }
         else
         {
            this.§3!@§ = 0;
            this.§@h§ = 0;
         }
         this.§6Y§ = 0;
         this.§8t§ = 0;
         this.§!!<§ = param1.§%!2§;
         this.§ 1§ = param1.§>V§;
         this.§&t§ = null;
         this.§41§ = 0;
      }
      
      private function §3b§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§&X§().y,param2.§&X§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§?!+§(_loc5_,param2.§&X§());
         _loc6_ = b2Math.§!M§(_loc6_,param2.§^+§());
         _loc6_ = b2Math.§?!+§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§>o§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§>o§(param1.§&X§(),param2.§&X§())).Normalize();
         var _loc8_:* = b2Math.§8!&§(param1.§&X§(),param2.§^+§()) > 0;
         param1.§?j§(param2,_loc6_,_loc7_,_loc8_);
         param2.§&,§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §-!-§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§@!C§ = null;
         if(this.m_world.§%F§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§2!f§(this,this.m_xf,param1);
         if(this.§?!?§ & b2internal::!!N)
         {
            _loc3_ = this.m_world.§4K§.§!!D§;
            _loc2_.§%j§(_loc3_,this.m_xf);
         }
         _loc2_.§8A§ = this.§&t§;
         this.§&t§ = _loc2_;
         ++this.§41§;
         _loc2_.m_body = this;
         if(_loc2_.§8b§ > 0)
         {
            this.§;x§();
         }
         this.m_world.§?!?§ |= b2World.§'k§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§-!-§(_loc3_);
      }
      
      public function §2B§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§@!C§ = null;
         if(this.m_world.§%F§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§&t§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§8A§ = param1.§8A§;
               }
               else
               {
                  this.§&t§ = param1.§8A§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§8A§;
         }
         var _loc5_:b2ContactEdge = this.§5!e§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§!d§;
            _loc5_ = _loc5_.§-w§;
            _loc7_ = _loc6_.§5m§();
            _loc8_ = _loc6_.§3t§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§4K§.§9!1§(_loc6_);
            }
         }
         if(this.§?!?§ & b2internal::!!N)
         {
            _loc9_ = this.m_world.§4K§.§!!D§;
            param1.§=!=§(_loc9_);
         }
         param1.§9!1§();
         param1.m_body = null;
         param1.§8A§ = null;
         --this.§41§;
         this.§;x§();
      }
      
      public function §%!Q§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§%F§() == true)
         {
            return;
         }
         this.m_xf.R.Set(param2);
         this.m_xf.position.SetV(param1);
         var _loc4_:b2Mat22 = this.m_xf.R;
         var _loc5_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc4_.col1.x * _loc5_.x + _loc4_.col2.x * _loc5_.y;
         this.m_sweep.c.y = _loc4_.col1.y * _loc5_.x + _loc4_.col2.y * _loc5_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.m_sweep.a0 = this.m_sweep.a = param2;
         var _loc6_:§@!C§ = this.m_world.§4K§.§!!D§;
         _loc3_ = this.§&t§;
         while(_loc3_)
         {
            _loc3_.§,r§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§8A§;
         }
         this.m_world.§4K§.§,q§();
      }
      
      public function §'E§(param1:b2Transform) : void
      {
         this.§%!Q§(param1.position,param1.GetAngle());
      }
      
      public function §3!d§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §,!Y§(param1:b2Vec2) : void
      {
         this.§%!Q§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §3y§(param1:Number) : void
      {
         this.§%!Q§(this.GetPosition(),param1);
      }
      
      public function §-!Q§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §8p§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§5!'§ == b2_staticBody)
         {
            return;
         }
         this.§^!S§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§^!S§;
      }
      
      public function §%d§(param1:Number) : void
      {
         if(this.§5!'§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §&2§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §7D§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§,!d§();
         _loc1_.§0!^§ = (this.§?!?§ & b2internal::7!#) == b2internal::7!#;
         _loc1_.angle = this.GetAngle();
         _loc1_.§ case§ = this.§"e§;
         _loc1_.§'<§ = this.m_angularVelocity;
         _loc1_.§9"§ = (this.§?!?§ & b2internal::!z) == b2internal::!z;
         _loc1_.§&[§ = (this.§?!?§ & b2internal::]D) == b2internal::]D;
         _loc1_.§4!+§ = (this.§?!?§ & b2internal::9`) == b2internal::9`;
         _loc1_.§3z§ = this.§[!=§;
         _loc1_.§0!S§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§>V§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §^!-§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5!'§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§66§.x += param1.x;
         this.§66§.y += param1.y;
         this.§,!§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §[!F§(param1:Number) : void
      {
         if(this.§5!'§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§,!§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5!'§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§^!S§.x += this.§@h§ * param1.x;
         this.§^!S§.y += this.§@h§ * param1.y;
         this.m_angularVelocity += this.§8t§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §-i§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§&2§();
         var _loc4_:b2Vec2 = this.§-!Q§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§0!1§(this.§7D§());
         var _loc8_:b2Fixture = _loc5_.§&t§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§8A§;
               if(_loc7_)
               {
                  _loc7_.§8A§ = _loc13_;
               }
               else
               {
                  _loc5_.§&t§ = _loc13_;
               }
               --_loc5_.§41§;
               _loc8_.§8A§ = _loc6_.§&t§;
               _loc6_.§&t§ = _loc8_;
               ++_loc6_.§41§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§8A§;
            }
         }
         _loc5_.§;x§();
         _loc6_.§;x§();
         var _loc9_:b2Vec2 = _loc5_.§-!Q§();
         var _loc10_:b2Vec2 = _loc6_.§-!Q§();
         var _loc11_:b2Vec2 = b2Math.§>o§(_loc2_,b2Math.§%n§(_loc3_,b2Math.§!M§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§>o§(_loc2_,b2Math.§%n§(_loc3_,b2Math.§!M§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§%d§(_loc3_);
         _loc6_.§%d§(_loc3_);
         _loc5_.§3[§();
         _loc6_.§3[§();
         return _loc6_;
      }
      
      public function §8!a§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§&t§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§8A§;
            --param1.§41§;
            _loc2_.§8A§ = this.§&t§;
            this.§&t§ = _loc2_;
            ++this.§41§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§41§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§-!Q§();
         var _loc6_:b2Vec2 = _loc4_.§-!Q§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§&2§();
         var _loc10_:Number = _loc4_.§&2§();
         _loc3_.§;x§();
         this.§3[§();
      }
      
      public function GetMass() : Number
      {
         return this.§3!@§;
      }
      
      public function §%]§() : Number
      {
         return this.§6Y§;
      }
      
      public function §=8§(param1:b2MassData) : void
      {
         param1.§%G§ = this.§3!@§;
         param1.§#!U§ = this.§6Y§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §?>§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§%F§() == false);
         if(this.m_world.§%F§() == true)
         {
            return;
         }
         if(this.§5!'§ != b2_dynamicBody)
         {
            return;
         }
         this.§@h§ = 0;
         this.§6Y§ = 0;
         this.§8t§ = 0;
         this.§3!@§ = param1.§%G§;
         if(this.§3!@§ <= 0)
         {
            this.§3!@§ = 1;
         }
         this.§@h§ = 1 / this.§3!@§;
         if(param1.§#!U§ > 0 && (this.§?!?§ & b2internal::!z) == 0)
         {
            this.§6Y§ = param1.§#!U§ - this.§3!@§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§8t§ = 1 / this.§6Y§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§'Y§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§^!S§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§^!S§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §;x§() : void
      {
         var _loc4_:b2MassData = null;
         this.§3!@§ = 0;
         this.§@h§ = 0;
         this.§6Y§ = 0;
         this.§8t§ = 0;
         this.m_sweep.localCenter.§8c§();
         if(this.§5!'§ == b2_staticBody || this.§5!'§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§>F§(0,0);
         var _loc2_:b2Fixture = this.§&t§;
         while(_loc2_)
         {
            if(_loc2_.§8b§ != 0)
            {
               _loc4_ = _loc2_.§=8§();
               this.§3!@§ += _loc4_.§%G§;
               _loc1_.x += _loc4_.center.x * _loc4_.§%G§;
               _loc1_.y += _loc4_.center.y * _loc4_.§%G§;
               this.§6Y§ += _loc4_.§#!U§;
            }
            _loc2_ = _loc2_.§8A§;
         }
         if(this.§3!@§ > 0)
         {
            this.§@h§ = 1 / this.§3!@§;
            _loc1_.x *= this.§@h§;
            _loc1_.y *= this.§@h§;
         }
         else
         {
            this.§3!@§ = 1;
            this.§@h§ = 1;
         }
         if(this.§6Y§ > 0 && (this.§?!?§ & b2internal::!z) == 0)
         {
            this.§6Y§ -= this.§3!@§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§6Y§ *= this.§!!<§;
            b2Settings.b2Assert(this.§6Y§ > 0);
            this.§8t§ = 1 / this.§6Y§;
         }
         else
         {
            this.§6Y§ = 0;
            this.§8t§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§'Y§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§^!S§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§^!S§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §-c§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§]!I§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§9!c§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§]v§(this.m_xf.R,param1);
      }
      
      public function §4!#§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§^!S§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§^!S§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §]!8§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§^!S§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§^!S§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §1e§() : Number
      {
         return this.§[!=§;
      }
      
      public function §8a§(param1:Number) : void
      {
         this.§[!=§ = param1;
      }
      
      public function §@!`§() : Number
      {
         return this.§"e§;
      }
      
      public function §+_§(param1:Number) : void
      {
         this.§"e§ = param1;
      }
      
      public function §2x§(param1:uint) : void
      {
         if(this.§5!'§ == param1)
         {
            return;
         }
         this.§5!'§ = param1;
         this.§;x§();
         if(this.§5!'§ == b2_staticBody)
         {
            this.§^!S§.§8c§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§66§.§8c§();
         this.§,!§ = 0;
         var _loc2_:b2ContactEdge = this.§5!e§;
         while(_loc2_)
         {
            _loc2_.§!d§.§ !6§();
            _loc2_ = _loc2_.§-w§;
         }
      }
      
      public function §,!d§() : uint
      {
         return this.§5!'§;
      }
      
      public function §!F§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?!?§ |= b2internal::]D;
         }
         else
         {
            this.§?!?§ &= ~b2internal::]D;
         }
      }
      
      public function §7t§() : Boolean
      {
         return (this.§?!?§ & b2internal::]D) == b2internal::]D;
      }
      
      public function §`!K§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?!?§ |= b2internal::7!#;
         }
         else
         {
            this.§?!?§ &= ~b2internal::7!#;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?!?§ |= b2internal::9`;
            this.§#§ = 0;
         }
         else
         {
            this.§?!?§ &= ~b2internal::9`;
            this.§#§ = 0;
            this.§^!S§.§8c§();
            this.m_angularVelocity = 0;
            this.§66§.§8c§();
            this.§,!§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§?!?§ & b2internal::9`) == b2internal::9`;
      }
      
      public function §<%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?!?§ |= b2internal::!z;
         }
         else
         {
            this.§?!?§ &= ~b2internal::!z;
         }
         this.§;x§();
      }
      
      public function §4X§() : Boolean
      {
         return (this.§?!?§ & b2internal::!z) == b2internal::!z;
      }
      
      public function §;!N§(param1:Boolean) : void
      {
         var _loc2_:§@!C§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§-3§())
         {
            return;
         }
         if(param1)
         {
            this.§?!?§ |= b2internal::!!N;
            _loc2_ = this.m_world.§4K§.§!!D§;
            _loc3_ = this.§&t§;
            while(_loc3_)
            {
               _loc3_.§%j§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§8A§;
            }
         }
         else
         {
            this.§?!?§ &= ~b2internal::!!N;
            _loc2_ = this.m_world.§4K§.§!!D§;
            _loc3_ = this.§&t§;
            while(_loc3_)
            {
               _loc3_.§=!=§(_loc2_);
               _loc3_ = _loc3_.§8A§;
            }
            _loc4_ = this.§5!e§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§-w§;
               this.m_world.§4K§.§9!1§(_loc5_.§!d§);
            }
            this.§5!e§ = null;
         }
      }
      
      public function §-3§() : Boolean
      {
         return (this.§?!?§ & b2internal::!!N) == b2internal::!!N;
      }
      
      public function §<0§() : Boolean
      {
         return (this.§?!?§ & b2internal::7!#) == b2internal::7!#;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§&t§;
      }
      
      public function §^#§() : b2JointEdge
      {
         return this.§>!$§;
      }
      
      public function §^!]§() : b2ControllerEdge
      {
         return this.§7r§;
      }
      
      public function §#! §() : b2ContactEdge
      {
         return this.§5!e§;
      }
      
      public function §%;§() : b2Body
      {
         return this.§8A§;
      }
      
      public function GetUserData() : *
      {
         return this.§ 1§;
      }
      
      public function §?#§(param1:*) : void
      {
         this.§ 1§ = param1;
      }
      
      public function §`o§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §3[§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §8k§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§@!C§ = this.m_world.§4K§.§!!D§;
         _loc4_ = this.§&t§;
         while(_loc4_)
         {
            _loc4_.§,r§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§8A§;
         }
      }
      
      b2internal function §%t§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §3!#§(param1:b2Body) : Boolean
      {
         if(this.§5!'§ != b2_dynamicBody && param1.§5!'§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§>!$§;
         while(_loc2_)
         {
            if(_loc2_.§ !a§ == param1)
            {
               if(_loc2_.§1!,§.§&+§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§-w§;
         }
         return true;
      }
      
      b2internal function §9!$§(param1:Number) : void
      {
         this.m_sweep.§9!$§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§%t§();
      }
   }
}
