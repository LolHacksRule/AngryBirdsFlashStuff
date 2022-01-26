package §?0§
{
   import §'!#§.b2Contact;
   import §'!#§.b2ContactEdge;
   import §'!3§.b2Settings;
   import §'!3§.b2internal;
   import §3q§.b2Mat22;
   import §3q§.b2Math;
   import §3q§.b2Sweep;
   import §3q§.b2Transform;
   import §3q§.b2Vec2;
   import §9!$§.§&!8§;
   import §9!&§.b2ControllerEdge;
   import §9A§.b2JointEdge;
   import §@,§.b2EdgeShape;
   import §@,§.b2MassData;
   import §@,§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var § ! §:b2Transform = new b2Transform();
      
      b2internal static var §^n§:uint = 1;
      
      b2internal static var §0!Y§:uint = 2;
      
      b2internal static var §^§:uint = 4;
      
      b2internal static var §?C§:uint = 8;
      
      b2internal static var §[4§:uint = 16;
      
      b2internal static var §<!U§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §0n§:uint;
      
      b2internal var §5! §:int;
      
      b2internal var §==§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §2!G§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §+!#§:b2Vec2;
      
      b2internal var §=I§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §"5§:b2Body;
      
      b2internal var §>!W§:b2Body;
      
      b2internal var §%!=§:b2Fixture;
      
      b2internal var §1!T§:int;
      
      b2internal var §8!'§:b2ControllerEdge;
      
      b2internal var §9m§:int;
      
      b2internal var §`!T§:b2JointEdge;
      
      b2internal var §7!;§:b2ContactEdge;
      
      b2internal var §"n§:Number;
      
      b2internal var §-q§:Number;
      
      b2internal var §^5§:Number;
      
      b2internal var §'a§:Number;
      
      b2internal var §>§:Number;
      
      b2internal var §,?§:Number;
      
      b2internal var §=_§:Number;
      
      b2internal var §`!Q§:Number;
      
      private var §[!U§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§2!G§ = new b2Vec2();
         this.§+!#§ = new b2Vec2();
         super();
         this.§0n§ = 0;
         if(param1.§&!Q§)
         {
            this.§0n§ |= b2internal::?C;
         }
         if(param1.§"t§)
         {
            this.§0n§ |= b2internal::[4;
         }
         if(param1.§ f§)
         {
            this.§0n§ |= b2internal::^;
         }
         if(param1.§^!J§)
         {
            this.§0n§ |= b2internal::0!Y;
         }
         if(param1.§=!Z§)
         {
            this.§0n§ |= b2internal::<!U;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§<!5§();
         this.m_sweep.§75§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§`!T§ = null;
         this.§8!'§ = null;
         this.§7!;§ = null;
         this.§9m§ = 0;
         this.§"5§ = null;
         this.§>!W§ = null;
         this.§2!G§.SetV(param1.§,x§);
         this.m_angularVelocity = param1.§!!4§;
         this.§,?§ = param1.§;!?§;
         this.§=_§ = param1.§^W§;
         this.§+!#§.Set(0,0);
         this.§=I§ = 0;
         this.§`!Q§ = 0;
         this.§5! § = param1.type;
         if(this.§5! § == b2_dynamicBody)
         {
            this.§"n§ = 1;
            this.§-q§ = 1;
         }
         else
         {
            this.§"n§ = 0;
            this.§-q§ = 0;
         }
         this.§^5§ = 0;
         this.§'a§ = 0;
         this.§>§ = param1.§09§;
         this.§[!U§ = param1.§1!%§;
         this.§%!=§ = null;
         this.§1!T§ = 0;
      }
      
      private function §0_§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§'C§().y,param2.§'C§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§@T§(_loc5_,param2.§'C§());
         _loc6_ = b2Math.§;!-§(_loc6_,param2.§-1§());
         _loc6_ = b2Math.§@T§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§?e§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§?e§(param1.§'C§(),param2.§'C§())).Normalize();
         var _loc8_:* = b2Math.§7n§(param1.§'C§(),param2.§-1§()) > 0;
         param1.§do §(param2,_loc6_,_loc7_,_loc8_);
         param2.§3V§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §9!!§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§&!8§ = null;
         if(this.m_world.§2<§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§ V§(this,this.m_xf,param1);
         if(this.§0n§ & b2internal::<!U)
         {
            _loc3_ = this.m_world.§"L§.§1!;§;
            _loc2_.§&w§(_loc3_,this.m_xf);
         }
         _loc2_.§>!W§ = this.§%!=§;
         this.§%!=§ = _loc2_;
         ++this.§1!T§;
         _loc2_.m_body = this;
         if(_loc2_.§'Z§ > 0)
         {
            this.§4,§();
         }
         this.m_world.§0n§ |= b2World.§6U§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§9!!§(_loc3_);
      }
      
      public function §@=§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§&!8§ = null;
         if(this.m_world.§2<§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§%!=§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§>!W§ = param1.§>!W§;
               }
               else
               {
                  this.§%!=§ = param1.§>!W§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§>!W§;
         }
         var _loc5_:b2ContactEdge = this.§7!;§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§2j§;
            _loc5_ = _loc5_.§20§;
            _loc7_ = _loc6_.§40§();
            _loc8_ = _loc6_.§2!F§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§"L§.§"z§(_loc6_);
            }
         }
         if(this.§0n§ & b2internal::<!U)
         {
            _loc9_ = this.m_world.§"L§.§1!;§;
            param1.§-k§(_loc9_);
         }
         param1.§"z§();
         param1.m_body = null;
         param1.§>!W§ = null;
         --this.§1!T§;
         this.§4,§();
      }
      
      public function §"a§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§2<§() == true)
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
         var _loc6_:§&!8§ = this.m_world.§"L§.§1!;§;
         _loc3_ = this.§%!=§;
         while(_loc3_)
         {
            _loc3_.§&g§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§>!W§;
         }
         this.m_world.§"L§.§&>§();
      }
      
      public function §2r§(param1:b2Transform) : void
      {
         this.§"a§(param1.position,param1.GetAngle());
      }
      
      public function §[!4§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §9!]§(param1:b2Vec2) : void
      {
         this.§"a§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §'!L§(param1:Number) : void
      {
         this.§"a§(this.GetPosition(),param1);
      }
      
      public function §'!I§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §`!>§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§5! § == b2_staticBody)
         {
            return;
         }
         this.§2!G§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§2!G§;
      }
      
      public function §%!,§(param1:Number) : void
      {
         if(this.§5! § == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §,!D§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §5P§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§1!A§();
         _loc1_.§ f§ = (this.§0n§ & b2internal::^) == b2internal::^;
         _loc1_.angle = this.GetAngle();
         _loc1_.§^W§ = this.§=_§;
         _loc1_.§!!4§ = this.m_angularVelocity;
         _loc1_.§"t§ = (this.§0n§ & b2internal::[4) == b2internal::[4;
         _loc1_.§&!Q§ = (this.§0n§ & b2internal::?C) == b2internal::?C;
         _loc1_.§^!J§ = (this.§0n§ & b2internal::0!Y) == b2internal::0!Y;
         _loc1_.§;!?§ = this.§,?§;
         _loc1_.§,x§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§1!%§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §9!I§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5! § != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§+!#§.x += param1.x;
         this.§+!#§.y += param1.y;
         this.§=I§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §-c§(param1:Number) : void
      {
         if(this.§5! § != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§=I§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5! § != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§2!G§.x += this.§-q§ * param1.x;
         this.§2!G§.y += this.§-q§ * param1.y;
         this.m_angularVelocity += this.§'a§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §8!!§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§,!D§();
         var _loc4_:b2Vec2 = this.§'!I§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§=%§(this.§5P§());
         var _loc8_:b2Fixture = _loc5_.§%!=§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§>!W§;
               if(_loc7_)
               {
                  _loc7_.§>!W§ = _loc13_;
               }
               else
               {
                  _loc5_.§%!=§ = _loc13_;
               }
               --_loc5_.§1!T§;
               _loc8_.§>!W§ = _loc6_.§%!=§;
               _loc6_.§%!=§ = _loc8_;
               ++_loc6_.§1!T§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§>!W§;
            }
         }
         _loc5_.§4,§();
         _loc6_.§4,§();
         var _loc9_:b2Vec2 = _loc5_.§'!I§();
         var _loc10_:b2Vec2 = _loc6_.§'!I§();
         var _loc11_:b2Vec2 = b2Math.§?e§(_loc2_,b2Math.§6!D§(_loc3_,b2Math.§;!-§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§?e§(_loc2_,b2Math.§6!D§(_loc3_,b2Math.§;!-§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§%!,§(_loc3_);
         _loc6_.§%!,§(_loc3_);
         _loc5_.§?!%§();
         _loc6_.§?!%§();
         return _loc6_;
      }
      
      public function § r§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§%!=§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§>!W§;
            --param1.§1!T§;
            _loc2_.§>!W§ = this.§%!=§;
            this.§%!=§ = _loc2_;
            ++this.§1!T§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§1!T§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§'!I§();
         var _loc6_:b2Vec2 = _loc4_.§'!I§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§,!D§();
         var _loc10_:Number = _loc4_.§,!D§();
         _loc3_.§4,§();
         this.§?!%§();
      }
      
      public function GetMass() : Number
      {
         return this.§"n§;
      }
      
      public function §2!B§() : Number
      {
         return this.§^5§;
      }
      
      public function §]r§(param1:b2MassData) : void
      {
         param1.§[![§ = this.§"n§;
         param1.§,!Z§ = this.§^5§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §4^§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§2<§() == false);
         if(this.m_world.§2<§() == true)
         {
            return;
         }
         if(this.§5! § != b2_dynamicBody)
         {
            return;
         }
         this.§-q§ = 0;
         this.§^5§ = 0;
         this.§'a§ = 0;
         this.§"n§ = param1.§[![§;
         if(this.§"n§ <= 0)
         {
            this.§"n§ = 1;
         }
         this.§-q§ = 1 / this.§"n§;
         if(param1.§,!Z§ > 0 && (this.§0n§ & b2internal::[4) == 0)
         {
            this.§^5§ = param1.§,!Z§ - this.§"n§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§'a§ = 1 / this.§^5§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§!r§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§2!G§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§2!G§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §4,§() : void
      {
         var _loc4_:b2MassData = null;
         this.§"n§ = 0;
         this.§-q§ = 0;
         this.§^5§ = 0;
         this.§'a§ = 0;
         this.m_sweep.localCenter.§<!5§();
         if(this.§5! § == b2_staticBody || this.§5! § == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§ !O§(0,0);
         var _loc2_:b2Fixture = this.§%!=§;
         while(_loc2_)
         {
            if(_loc2_.§'Z§ != 0)
            {
               _loc4_ = _loc2_.§]r§();
               this.§"n§ += _loc4_.§[![§;
               _loc1_.x += _loc4_.center.x * _loc4_.§[![§;
               _loc1_.y += _loc4_.center.y * _loc4_.§[![§;
               this.§^5§ += _loc4_.§,!Z§;
            }
            _loc2_ = _loc2_.§>!W§;
         }
         if(this.§"n§ > 0)
         {
            this.§-q§ = 1 / this.§"n§;
            _loc1_.x *= this.§-q§;
            _loc1_.y *= this.§-q§;
         }
         else
         {
            this.§"n§ = 1;
            this.§-q§ = 1;
         }
         if(this.§^5§ > 0 && (this.§0n§ & b2internal::[4) == 0)
         {
            this.§^5§ -= this.§"n§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§^5§ *= this.§>§;
            b2Settings.b2Assert(this.§^5§ > 0);
            this.§'a§ = 1 / this.§^5§;
         }
         else
         {
            this.§^5§ = 0;
            this.§'a§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§!r§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§2!G§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§2!G§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §var§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§@!H§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§^O§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§=!B§(this.m_xf.R,param1);
      }
      
      public function §@!0§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§2!G§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§2!G§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §0!@§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§2!G§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§2!G§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §`'§() : Number
      {
         return this.§,?§;
      }
      
      public function §[v§(param1:Number) : void
      {
         this.§,?§ = param1;
      }
      
      public function §4&§() : Number
      {
         return this.§=_§;
      }
      
      public function §#Z§(param1:Number) : void
      {
         this.§=_§ = param1;
      }
      
      public function §>s§(param1:uint) : void
      {
         if(this.§5! § == param1)
         {
            return;
         }
         this.§5! § = param1;
         this.§4,§();
         if(this.§5! § == b2_staticBody)
         {
            this.§2!G§.§<!5§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§+!#§.§<!5§();
         this.§=I§ = 0;
         var _loc2_:b2ContactEdge = this.§7!;§;
         while(_loc2_)
         {
            _loc2_.§2j§.§"D§();
            _loc2_ = _loc2_.§20§;
         }
      }
      
      public function §1!A§() : uint
      {
         return this.§5! §;
      }
      
      public function §1A§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0n§ |= b2internal::?C;
         }
         else
         {
            this.§0n§ &= ~b2internal::?C;
         }
      }
      
      public function §=!?§() : Boolean
      {
         return (this.§0n§ & b2internal::?C) == b2internal::?C;
      }
      
      public function §-+§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0n§ |= b2internal::^;
         }
         else
         {
            this.§0n§ &= ~b2internal::^;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0n§ |= b2internal::0!Y;
            this.§`!Q§ = 0;
         }
         else
         {
            this.§0n§ &= ~b2internal::0!Y;
            this.§`!Q§ = 0;
            this.§2!G§.§<!5§();
            this.m_angularVelocity = 0;
            this.§+!#§.§<!5§();
            this.§=I§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§0n§ & b2internal::0!Y) == b2internal::0!Y;
      }
      
      public function §+$§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0n§ |= b2internal::[4;
         }
         else
         {
            this.§0n§ &= ~b2internal::[4;
         }
         this.§4,§();
      }
      
      public function §5g§() : Boolean
      {
         return (this.§0n§ & b2internal::[4) == b2internal::[4;
      }
      
      public function §]G§(param1:Boolean) : void
      {
         var _loc2_:§&!8§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§[!N§())
         {
            return;
         }
         if(param1)
         {
            this.§0n§ |= b2internal::<!U;
            _loc2_ = this.m_world.§"L§.§1!;§;
            _loc3_ = this.§%!=§;
            while(_loc3_)
            {
               _loc3_.§&w§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§>!W§;
            }
         }
         else
         {
            this.§0n§ &= ~b2internal::<!U;
            _loc2_ = this.m_world.§"L§.§1!;§;
            _loc3_ = this.§%!=§;
            while(_loc3_)
            {
               _loc3_.§-k§(_loc2_);
               _loc3_ = _loc3_.§>!W§;
            }
            _loc4_ = this.§7!;§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§20§;
               this.m_world.§"L§.§"z§(_loc5_.§2j§);
            }
            this.§7!;§ = null;
         }
      }
      
      public function §[!N§() : Boolean
      {
         return (this.§0n§ & b2internal::<!U) == b2internal::<!U;
      }
      
      public function § d§() : Boolean
      {
         return (this.§0n§ & b2internal::^) == b2internal::^;
      }
      
      public function §6]§() : b2Fixture
      {
         return this.§%!=§;
      }
      
      public function §'B§() : b2JointEdge
      {
         return this.§`!T§;
      }
      
      public function §!6§() : b2ControllerEdge
      {
         return this.§8!'§;
      }
      
      public function §0U§() : b2ContactEdge
      {
         return this.§7!;§;
      }
      
      public function §%W§() : b2Body
      {
         return this.§>!W§;
      }
      
      public function GetUserData() : *
      {
         return this.§[!U§;
      }
      
      public function §"Z§(param1:*) : void
      {
         this.§[!U§ = param1;
      }
      
      public function §;+§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §?!%§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = § ! §;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§&!8§ = this.m_world.§"L§.§1!;§;
         _loc4_ = this.§%!=§;
         while(_loc4_)
         {
            _loc4_.§&g§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§>!W§;
         }
      }
      
      b2internal function §>W§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §2!]§(param1:b2Body) : Boolean
      {
         if(this.§5! § != b2_dynamicBody && param1.§5! § != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§`!T§;
         while(_loc2_)
         {
            if(_loc2_.§#C§ == param1)
            {
               if(_loc2_.§%!X§.§7!9§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§20§;
         }
         return true;
      }
      
      b2internal function §+!V§(param1:Number) : void
      {
         this.m_sweep.§+!V§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§>W§();
      }
   }
}
