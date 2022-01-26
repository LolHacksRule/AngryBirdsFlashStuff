package §9t§
{
   import §!!#§.§4!b§;
   import §!!L§.b2ControllerEdge;
   import §4! §.b2Settings;
   import §4! §.b2internal;
   import §=!P§.b2JointEdge;
   import §[!E§.b2EdgeShape;
   import §[!E§.b2MassData;
   import §[!E§.b2Shape;
   import §[-§.b2Contact;
   import §[-§.b2ContactEdge;
   import §^q§.b2Mat22;
   import §^q§.b2Math;
   import §^q§.b2Sweep;
   import §^q§.b2Transform;
   import §^q§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §<!G§:b2Transform = new b2Transform();
      
      b2internal static var §"`§:uint = 1;
      
      b2internal static var §8f§:uint = 2;
      
      b2internal static var §`!S§:uint = 4;
      
      b2internal static var §!k§:uint = 8;
      
      b2internal static var §-!<§:uint = 16;
      
      b2internal static var §8n§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var § -§:uint;
      
      b2internal var §3;§:int;
      
      b2internal var §%!O§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §"!N§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §]W§:b2Vec2;
      
      b2internal var §7!Q§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §&J§:b2Body;
      
      b2internal var §%m§:b2Body;
      
      b2internal var §9w§:b2Fixture;
      
      b2internal var §^!;§:int;
      
      b2internal var §,!+§:b2ControllerEdge;
      
      b2internal var §7%§:int;
      
      b2internal var §-!@§:b2JointEdge;
      
      b2internal var §]=§:b2ContactEdge;
      
      b2internal var §!!@§:Number;
      
      b2internal var §5Z§:Number;
      
      b2internal var §<!@§:Number;
      
      b2internal var §[S§:Number;
      
      b2internal var §?![§:Number;
      
      b2internal var §%J§:Number;
      
      b2internal var §5[§:Number;
      
      b2internal var §6!O§:Number;
      
      private var §,2§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§"!N§ = new b2Vec2();
         this.§]W§ = new b2Vec2();
         super();
         this.§ -§ = 0;
         if(param1.§7!8§)
         {
            this.§ -§ |= b2internal::!k;
         }
         if(param1.§?t§)
         {
            this.§ -§ |= b2internal::-!<;
         }
         if(param1.§8!1§)
         {
            this.§ -§ |= b2internal::`!S;
         }
         if(param1.§ !4§)
         {
            this.§ -§ |= b2internal::8f;
         }
         if(param1.§ ^§)
         {
            this.§ -§ |= b2internal::8n;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§0q§();
         this.m_sweep.§0N§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§-!@§ = null;
         this.§,!+§ = null;
         this.§]=§ = null;
         this.§7%§ = 0;
         this.§&J§ = null;
         this.§%m§ = null;
         this.§"!N§.SetV(param1.§?M§);
         this.m_angularVelocity = param1.§,!S§;
         this.§%J§ = param1.§2!Y§;
         this.§5[§ = param1.§&!O§;
         this.§]W§.Set(0,0);
         this.§7!Q§ = 0;
         this.§6!O§ = 0;
         this.§3;§ = param1.type;
         if(this.§3;§ == b2_dynamicBody)
         {
            this.§!!@§ = 1;
            this.§5Z§ = 1;
         }
         else
         {
            this.§!!@§ = 0;
            this.§5Z§ = 0;
         }
         this.§<!@§ = 0;
         this.§[S§ = 0;
         this.§?![§ = param1.§'!3§;
         this.§,2§ = param1.§]h§;
         this.§9w§ = null;
         this.§^!;§ = 0;
      }
      
      private function §%!&§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§>7§().y,param2.§>7§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§>w§(_loc5_,param2.§>7§());
         _loc6_ = b2Math.§#!F§(_loc6_,param2.§^e§());
         _loc6_ = b2Math.§>w§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§]f§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§]f§(param1.§>7§(),param2.§>7§())).Normalize();
         var _loc8_:* = b2Math.§2P§(param1.§>7§(),param2.§^e§()) > 0;
         param1.§5^§(param2,_loc6_,_loc7_,_loc8_);
         param2.§!!1§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §2Z§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§4!b§ = null;
         if(this.m_world.§6!2§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§1P§(this,this.m_xf,param1);
         if(this.§ -§ & b2internal::8n)
         {
            _loc3_ = this.m_world.§5L§.§8Z§;
            _loc2_.§+2§(_loc3_,this.m_xf);
         }
         _loc2_.§%m§ = this.§9w§;
         this.§9w§ = _loc2_;
         ++this.§^!;§;
         _loc2_.m_body = this;
         if(_loc2_.§>!2§ > 0)
         {
            this.§]!^§();
         }
         this.m_world.§ -§ |= b2World.§9+§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§2Z§(_loc3_);
      }
      
      public function §'8§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§4!b§ = null;
         if(this.m_world.§6!2§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§9w§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§%m§ = param1.§%m§;
               }
               else
               {
                  this.§9w§ = param1.§%m§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§%m§;
         }
         var _loc5_:b2ContactEdge = this.§]=§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§2L§;
            _loc5_ = _loc5_.§1!V§;
            _loc7_ = _loc6_.§>!b§();
            _loc8_ = _loc6_.§1t§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§5L§.§88§(_loc6_);
            }
         }
         if(this.§ -§ & b2internal::8n)
         {
            _loc9_ = this.m_world.§5L§.§8Z§;
            param1.§52§(_loc9_);
         }
         param1.§88§();
         param1.m_body = null;
         param1.§%m§ = null;
         --this.§^!;§;
         this.§]!^§();
      }
      
      public function §`!I§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§6!2§() == true)
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
         var _loc6_:§4!b§ = this.m_world.§5L§.§8Z§;
         _loc3_ = this.§9w§;
         while(_loc3_)
         {
            _loc3_.§]'§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§%m§;
         }
         this.m_world.§5L§.§6!>§();
      }
      
      public function §3O§(param1:b2Transform) : void
      {
         this.§`!I§(param1.position,param1.GetAngle());
      }
      
      public function §%!c§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §#!>§(param1:b2Vec2) : void
      {
         this.§`!I§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §"N§(param1:Number) : void
      {
         this.§`!I§(this.GetPosition(),param1);
      }
      
      public function §]&§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §-q§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§3;§ == b2_staticBody)
         {
            return;
         }
         this.§"!N§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§"!N§;
      }
      
      public function §`0§(param1:Number) : void
      {
         if(this.§3;§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §]@§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §"l§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§9P§();
         _loc1_.§8!1§ = (this.§ -§ & b2internal::`!S) == b2internal::`!S;
         _loc1_.angle = this.GetAngle();
         _loc1_.§&!O§ = this.§5[§;
         _loc1_.§,!S§ = this.m_angularVelocity;
         _loc1_.§?t§ = (this.§ -§ & b2internal::-!<) == b2internal::-!<;
         _loc1_.§7!8§ = (this.§ -§ & b2internal::!k) == b2internal::!k;
         _loc1_.§ !4§ = (this.§ -§ & b2internal::8f) == b2internal::8f;
         _loc1_.§2!Y§ = this.§%J§;
         _loc1_.§?M§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§]h§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §%S§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§3;§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§]W§.x += param1.x;
         this.§]W§.y += param1.y;
         this.§7!Q§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §false§(param1:Number) : void
      {
         if(this.§3;§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§7!Q§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§3;§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§"!N§.x += this.§5Z§ * param1.x;
         this.§"!N§.y += this.§5Z§ * param1.y;
         this.m_angularVelocity += this.§[S§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §%Z§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§]@§();
         var _loc4_:b2Vec2 = this.§]&§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§&X§(this.§"l§());
         var _loc8_:b2Fixture = _loc5_.§9w§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§%m§;
               if(_loc7_)
               {
                  _loc7_.§%m§ = _loc13_;
               }
               else
               {
                  _loc5_.§9w§ = _loc13_;
               }
               --_loc5_.§^!;§;
               _loc8_.§%m§ = _loc6_.§9w§;
               _loc6_.§9w§ = _loc8_;
               ++_loc6_.§^!;§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§%m§;
            }
         }
         _loc5_.§]!^§();
         _loc6_.§]!^§();
         var _loc9_:b2Vec2 = _loc5_.§]&§();
         var _loc10_:b2Vec2 = _loc6_.§]&§();
         var _loc11_:b2Vec2 = b2Math.§]f§(_loc2_,b2Math.§&![§(_loc3_,b2Math.§#!F§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§]f§(_loc2_,b2Math.§&![§(_loc3_,b2Math.§#!F§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§`0§(_loc3_);
         _loc6_.§`0§(_loc3_);
         _loc5_.§;4§();
         _loc6_.§;4§();
         return _loc6_;
      }
      
      public function §0! §(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§9w§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§%m§;
            --param1.§^!;§;
            _loc2_.§%m§ = this.§9w§;
            this.§9w§ = _loc2_;
            ++this.§^!;§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§^!;§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§]&§();
         var _loc6_:b2Vec2 = _loc4_.§]&§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§]@§();
         var _loc10_:Number = _loc4_.§]@§();
         _loc3_.§]!^§();
         this.§;4§();
      }
      
      public function GetMass() : Number
      {
         return this.§!!@§;
      }
      
      public function §-!b§() : Number
      {
         return this.§<!@§;
      }
      
      public function §1=§(param1:b2MassData) : void
      {
         param1.§-!9§ = this.§!!@§;
         param1.§#I§ = this.§<!@§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §3D§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§6!2§() == false);
         if(this.m_world.§6!2§() == true)
         {
            return;
         }
         if(this.§3;§ != b2_dynamicBody)
         {
            return;
         }
         this.§5Z§ = 0;
         this.§<!@§ = 0;
         this.§[S§ = 0;
         this.§!!@§ = param1.§-!9§;
         if(this.§!!@§ <= 0)
         {
            this.§!!@§ = 1;
         }
         this.§5Z§ = 1 / this.§!!@§;
         if(param1.§#I§ > 0 && (this.§ -§ & b2internal::-!<) == 0)
         {
            this.§<!@§ = param1.§#I§ - this.§!!@§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§[S§ = 1 / this.§<!@§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§1L§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§"!N§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§"!N§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §]!^§() : void
      {
         var _loc4_:b2MassData = null;
         this.§!!@§ = 0;
         this.§5Z§ = 0;
         this.§<!@§ = 0;
         this.§[S§ = 0;
         this.m_sweep.localCenter.§0q§();
         if(this.§3;§ == b2_staticBody || this.§3;§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§9!O§(0,0);
         var _loc2_:b2Fixture = this.§9w§;
         while(_loc2_)
         {
            if(_loc2_.§>!2§ != 0)
            {
               _loc4_ = _loc2_.§1=§();
               this.§!!@§ += _loc4_.§-!9§;
               _loc1_.x += _loc4_.center.x * _loc4_.§-!9§;
               _loc1_.y += _loc4_.center.y * _loc4_.§-!9§;
               this.§<!@§ += _loc4_.§#I§;
            }
            _loc2_ = _loc2_.§%m§;
         }
         if(this.§!!@§ > 0)
         {
            this.§5Z§ = 1 / this.§!!@§;
            _loc1_.x *= this.§5Z§;
            _loc1_.y *= this.§5Z§;
         }
         else
         {
            this.§!!@§ = 1;
            this.§5Z§ = 1;
         }
         if(this.§<!@§ > 0 && (this.§ -§ & b2internal::-!<) == 0)
         {
            this.§<!@§ -= this.§!!@§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§<!@§ *= this.§?![§;
            b2Settings.b2Assert(this.§<!@§ > 0);
            this.§[S§ = 1 / this.§<!@§;
         }
         else
         {
            this.§<!@§ = 0;
            this.§[S§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§1L§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§"!N§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§"!N§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §0!G§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§!X§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5!&§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%!7§(this.m_xf.R,param1);
      }
      
      public function §with§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§"!N§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§"!N§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §=!>§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§"!N§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§"!N§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §,;§() : Number
      {
         return this.§%J§;
      }
      
      public function §@X§(param1:Number) : void
      {
         this.§%J§ = param1;
      }
      
      public function §^!+§() : Number
      {
         return this.§5[§;
      }
      
      public function §>q§(param1:Number) : void
      {
         this.§5[§ = param1;
      }
      
      public function §4g§(param1:uint) : void
      {
         if(this.§3;§ == param1)
         {
            return;
         }
         this.§3;§ = param1;
         this.§]!^§();
         if(this.§3;§ == b2_staticBody)
         {
            this.§"!N§.§0q§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§]W§.§0q§();
         this.§7!Q§ = 0;
         var _loc2_:b2ContactEdge = this.§]=§;
         while(_loc2_)
         {
            _loc2_.§2L§.§0!3§();
            _loc2_ = _loc2_.§1!V§;
         }
      }
      
      public function §9P§() : uint
      {
         return this.§3;§;
      }
      
      public function §"!M§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ -§ |= b2internal::!k;
         }
         else
         {
            this.§ -§ &= ~b2internal::!k;
         }
      }
      
      public function §5m§() : Boolean
      {
         return (this.§ -§ & b2internal::!k) == b2internal::!k;
      }
      
      public function §7h§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ -§ |= b2internal::`!S;
         }
         else
         {
            this.§ -§ &= ~b2internal::`!S;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ -§ |= b2internal::8f;
            this.§6!O§ = 0;
         }
         else
         {
            this.§ -§ &= ~b2internal::8f;
            this.§6!O§ = 0;
            this.§"!N§.§0q§();
            this.m_angularVelocity = 0;
            this.§]W§.§0q§();
            this.§7!Q§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§ -§ & b2internal::8f) == b2internal::8f;
      }
      
      public function §-!G§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ -§ |= b2internal::-!<;
         }
         else
         {
            this.§ -§ &= ~b2internal::-!<;
         }
         this.§]!^§();
      }
      
      public function §`_§() : Boolean
      {
         return (this.§ -§ & b2internal::-!<) == b2internal::-!<;
      }
      
      public function §@!M§(param1:Boolean) : void
      {
         var _loc2_:§4!b§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§%!@§())
         {
            return;
         }
         if(param1)
         {
            this.§ -§ |= b2internal::8n;
            _loc2_ = this.m_world.§5L§.§8Z§;
            _loc3_ = this.§9w§;
            while(_loc3_)
            {
               _loc3_.§+2§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§%m§;
            }
         }
         else
         {
            this.§ -§ &= ~b2internal::8n;
            _loc2_ = this.m_world.§5L§.§8Z§;
            _loc3_ = this.§9w§;
            while(_loc3_)
            {
               _loc3_.§52§(_loc2_);
               _loc3_ = _loc3_.§%m§;
            }
            _loc4_ = this.§]=§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§1!V§;
               this.m_world.§5L§.§88§(_loc5_.§2L§);
            }
            this.§]=§ = null;
         }
      }
      
      public function §%!@§() : Boolean
      {
         return (this.§ -§ & b2internal::8n) == b2internal::8n;
      }
      
      public function §;C§() : Boolean
      {
         return (this.§ -§ & b2internal::`!S) == b2internal::`!S;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§9w§;
      }
      
      public function §=!!§() : b2JointEdge
      {
         return this.§-!@§;
      }
      
      public function §]!G§() : b2ControllerEdge
      {
         return this.§,!+§;
      }
      
      public function §!u§() : b2ContactEdge
      {
         return this.§]=§;
      }
      
      public function §&!V§() : b2Body
      {
         return this.§%m§;
      }
      
      public function GetUserData() : *
      {
         return this.§,2§;
      }
      
      public function §]4§(param1:*) : void
      {
         this.§,2§ = param1;
      }
      
      public function §]i§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §;4§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §<!G§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§4!b§ = this.m_world.§5L§.§8Z§;
         _loc4_ = this.§9w§;
         while(_loc4_)
         {
            _loc4_.§]'§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§%m§;
         }
      }
      
      b2internal function §`%§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §,!3§(param1:b2Body) : Boolean
      {
         if(this.§3;§ != b2_dynamicBody && param1.§3;§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§-!@§;
         while(_loc2_)
         {
            if(_loc2_.§5C§ == param1)
            {
               if(_loc2_.§'!B§.§;!Q§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§1!V§;
         }
         return true;
      }
      
      b2internal function §]^§(param1:Number) : void
      {
         this.m_sweep.§]^§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§`%§();
      }
   }
}
