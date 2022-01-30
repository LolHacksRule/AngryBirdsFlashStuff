package §?!E§
{
   import §!t§.b2JointEdge;
   import §&!n§.§7W§;
   import §2!Q§.b2EdgeShape;
   import §2!Q§.b2MassData;
   import §2!Q§.b2Shape;
   import §8,§.b2Settings;
   import §8,§.b2internal;
   import §9v§.b2Mat22;
   import §9v§.b2Math;
   import §9v§.b2Sweep;
   import §9v§.b2Transform;
   import §9v§.b2Vec2;
   import §`§.b2Contact;
   import §`§.b2ContactEdge;
   import §`U§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §[t§:b2Transform = new b2Transform();
      
      b2internal static var §3!h§:uint = 1;
      
      b2internal static var §-!f§:uint = 2;
      
      b2internal static var §9W§:uint = 4;
      
      b2internal static var §3!Y§:uint = 8;
      
      b2internal static var §2!Y§:uint = 16;
      
      b2internal static var §8%§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §5"4§:uint;
      
      b2internal var §;M§:int;
      
      b2internal var §!!Q§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §?!%§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §[!^§:b2Vec2;
      
      b2internal var §^<§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §2<§:b2Body;
      
      b2internal var §-!7§:b2Body;
      
      b2internal var §1!3§:b2Fixture;
      
      b2internal var §8!d§:int;
      
      b2internal var §+!H§:b2ControllerEdge;
      
      b2internal var §?!=§:int;
      
      b2internal var §4!N§:b2JointEdge;
      
      b2internal var §2v§:b2ContactEdge;
      
      b2internal var §>?§:Number;
      
      b2internal var §-!P§:Number;
      
      b2internal var §>C§:Number;
      
      b2internal var §;c§:Number;
      
      b2internal var §,""§:Number;
      
      b2internal var §>"'§:Number;
      
      b2internal var §]!o§:Number;
      
      b2internal var §5!E§:Number;
      
      private var §!!K§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§?!%§ = new b2Vec2();
         this.§[!^§ = new b2Vec2();
         super();
         this.§5"4§ = 0;
         if(param1.§^6§)
         {
            this.§5"4§ |= b2internal::3!Y;
         }
         if(param1.§]!y§)
         {
            this.§5"4§ |= b2internal::2!Y;
         }
         if(param1.§-"0§)
         {
            this.§5"4§ |= b2internal::9W;
         }
         if(param1.§1!"§)
         {
            this.§5"4§ |= b2internal::-!f;
         }
         if(param1.§%!W§)
         {
            this.§5"4§ |= b2internal::8%;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§6V§();
         this.m_sweep.§#b§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§4!N§ = null;
         this.§+!H§ = null;
         this.§2v§ = null;
         this.§?!=§ = 0;
         this.§2<§ = null;
         this.§-!7§ = null;
         this.§?!%§.SetV(param1.§]!@§);
         this.m_angularVelocity = param1.§"!7§;
         this.§>"'§ = param1.§0!i§;
         this.§]!o§ = param1.§`_§;
         this.§[!^§.Set(0,0);
         this.§^<§ = 0;
         this.§5!E§ = 0;
         this.§;M§ = param1.type;
         if(this.§;M§ == b2_dynamicBody)
         {
            this.§>?§ = 1;
            this.§-!P§ = 1;
         }
         else
         {
            this.§>?§ = 0;
            this.§-!P§ = 0;
         }
         this.§>C§ = 0;
         this.§;c§ = 0;
         this.§,""§ = param1.§5C§;
         this.§!!K§ = param1.§-!j§;
         this.§1!3§ = null;
         this.§8!d§ = 0;
      }
      
      private function §-!E§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§set §().y,param2.§set §().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§'"4§(_loc5_,param2.§set §());
         _loc6_ = b2Math.§-=§(_loc6_,param2.§%%§());
         _loc6_ = b2Math.§'"4§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§3C§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§3C§(param1.§set §(),param2.§set §())).Normalize();
         var _loc8_:* = b2Math.§%m§(param1.§set §(),param2.§%%§()) > 0;
         param1.§^!^§(param2,_loc6_,_loc7_,_loc8_);
         param2.§&!9§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §!!G§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§7W§ = null;
         if(this.m_world.§%Q§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§-"$§(this,this.m_xf,param1);
         if(this.§5"4§ & b2internal::8%)
         {
            _loc3_ = this.m_world.§`![§.§'!G§;
            _loc2_.§[2§(_loc3_,this.m_xf);
         }
         _loc2_.§-!7§ = this.§1!3§;
         this.§1!3§ = _loc2_;
         ++this.§8!d§;
         _loc2_.m_body = this;
         if(_loc2_.§8"$§ > 0)
         {
            this.§0!A§();
         }
         this.m_world.§5"4§ |= b2World.§5!L§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§!!G§(_loc3_);
      }
      
      public function §1U§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§7W§ = null;
         if(this.m_world.§%Q§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§1!3§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§-!7§ = param1.§-!7§;
               }
               else
               {
                  this.§1!3§ = param1.§-!7§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§-!7§;
         }
         var _loc5_:b2ContactEdge = this.§2v§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§^!;§;
            _loc5_ = _loc5_.§9"#§;
            _loc7_ = _loc6_.§2&§();
            _loc8_ = _loc6_.§=!C§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§`![§.§@!,§(_loc6_);
            }
         }
         if(this.§5"4§ & b2internal::8%)
         {
            _loc9_ = this.m_world.§`![§.§'!G§;
            param1.§+!<§(_loc9_);
         }
         param1.§@!,§();
         param1.m_body = null;
         param1.§-!7§ = null;
         --this.§8!d§;
         this.§0!A§();
      }
      
      public function §!!5§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§%Q§() == true)
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
         var _loc6_:§7W§ = this.m_world.§`![§.§'!G§;
         _loc3_ = this.§1!3§;
         while(_loc3_)
         {
            _loc3_.§^!q§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§-!7§;
         }
         this.m_world.§`![§.§9!!§();
      }
      
      public function §'K§(param1:b2Transform) : void
      {
         this.§!!5§(param1.position,param1.GetAngle());
      }
      
      public function §@w§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §#!V§(param1:b2Vec2) : void
      {
         this.§!!5§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §?i§(param1:Number) : void
      {
         this.§!!5§(this.GetPosition(),param1);
      }
      
      public function §=v§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §[!&§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§;M§ == b2_staticBody)
         {
            return;
         }
         this.§?!%§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§?!%§;
      }
      
      public function §1o§(param1:Number) : void
      {
         if(this.§;M§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §4Z§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §#"5§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§7![§();
         _loc1_.§-"0§ = (this.§5"4§ & b2internal::9W) == b2internal::9W;
         _loc1_.angle = this.GetAngle();
         _loc1_.§`_§ = this.§]!o§;
         _loc1_.§"!7§ = this.m_angularVelocity;
         _loc1_.§]!y§ = (this.§5"4§ & b2internal::2!Y) == b2internal::2!Y;
         _loc1_.§^6§ = (this.§5"4§ & b2internal::3!Y) == b2internal::3!Y;
         _loc1_.§1!"§ = (this.§5"4§ & b2internal::-!f) == b2internal::-!f;
         _loc1_.§0!i§ = this.§>"'§;
         _loc1_.§]!@§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§-!j§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §3!5§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§;M§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§[!^§.x += param1.x;
         this.§[!^§.y += param1.y;
         this.§^<§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §>6§(param1:Number) : void
      {
         if(this.§;M§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§^<§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§;M§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§?!%§.x += this.§-!P§ * param1.x;
         this.§?!%§.y += this.§-!P§ * param1.y;
         this.m_angularVelocity += this.§;c§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §["#§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§4Z§();
         var _loc4_:b2Vec2 = this.§=v§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§&h§(this.§#"5§());
         var _loc8_:b2Fixture = _loc5_.§1!3§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§-!7§;
               if(_loc7_)
               {
                  _loc7_.§-!7§ = _loc13_;
               }
               else
               {
                  _loc5_.§1!3§ = _loc13_;
               }
               --_loc5_.§8!d§;
               _loc8_.§-!7§ = _loc6_.§1!3§;
               _loc6_.§1!3§ = _loc8_;
               ++_loc6_.§8!d§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§-!7§;
            }
         }
         _loc5_.§0!A§();
         _loc6_.§0!A§();
         var _loc9_:b2Vec2 = _loc5_.§=v§();
         var _loc10_:b2Vec2 = _loc6_.§=v§();
         var _loc11_:b2Vec2 = b2Math.§3C§(_loc2_,b2Math.§3!X§(_loc3_,b2Math.§-=§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§3C§(_loc2_,b2Math.§3!X§(_loc3_,b2Math.§-=§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§1o§(_loc3_);
         _loc6_.§1o§(_loc3_);
         _loc5_.§<!w§();
         _loc6_.§<!w§();
         return _loc6_;
      }
      
      public function §<!%§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§1!3§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§-!7§;
            --param1.§8!d§;
            _loc2_.§-!7§ = this.§1!3§;
            this.§1!3§ = _loc2_;
            ++this.§8!d§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§8!d§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§=v§();
         var _loc6_:b2Vec2 = _loc4_.§=v§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§4Z§();
         var _loc10_:Number = _loc4_.§4Z§();
         _loc3_.§0!A§();
         this.§<!w§();
      }
      
      public function GetMass() : Number
      {
         return this.§>?§;
      }
      
      public function §<G§() : Number
      {
         return this.§>C§;
      }
      
      public function §#!@§(param1:b2MassData) : void
      {
         param1.§ !v§ = this.§>?§;
         param1.I = this.§>C§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §4H§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§%Q§() == false);
         if(this.m_world.§%Q§() == true)
         {
            return;
         }
         if(this.§;M§ != b2_dynamicBody)
         {
            return;
         }
         this.§-!P§ = 0;
         this.§>C§ = 0;
         this.§;c§ = 0;
         this.§>?§ = param1.§ !v§;
         if(this.§>?§ <= 0)
         {
            this.§>?§ = 1;
         }
         this.§-!P§ = 1 / this.§>?§;
         if(param1.I > 0 && (this.§5"4§ & b2internal::2!Y) == 0)
         {
            this.§>C§ = param1.I - this.§>?§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§;c§ = 1 / this.§>C§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§;!N§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§?!%§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§?!%§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §0!A§() : void
      {
         var _loc4_:b2MassData = null;
         this.§>?§ = 0;
         this.§-!P§ = 0;
         this.§>C§ = 0;
         this.§;c§ = 0;
         this.m_sweep.localCenter.§6V§();
         if(this.§;M§ == b2_staticBody || this.§;M§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§6q§(0,0);
         var _loc2_:b2Fixture = this.§1!3§;
         while(_loc2_)
         {
            if(_loc2_.§8"$§ != 0)
            {
               _loc4_ = _loc2_.§#!@§();
               this.§>?§ += _loc4_.§ !v§;
               _loc1_.x += _loc4_.center.x * _loc4_.§ !v§;
               _loc1_.y += _loc4_.center.y * _loc4_.§ !v§;
               this.§>C§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§-!7§;
         }
         if(this.§>?§ > 0)
         {
            this.§-!P§ = 1 / this.§>?§;
            _loc1_.x *= this.§-!P§;
            _loc1_.y *= this.§-!P§;
         }
         else
         {
            this.§>?§ = 1;
            this.§-!P§ = 1;
         }
         if(this.§>C§ > 0 && (this.§5"4§ & b2internal::2!Y) == 0)
         {
            this.§>C§ -= this.§>?§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§>C§ *= this.§,""§;
            b2Settings.b2Assert(this.§>C§ > 0);
            this.§;c§ = 1 / this.§>C§;
         }
         else
         {
            this.§>C§ = 0;
            this.§;c§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§;!N§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§?!%§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§?!%§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §-e§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§2!U§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§3! §(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§^P§(this.m_xf.R,param1);
      }
      
      public function §?! §(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§?!%§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§?!%§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §+U§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§?!%§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§?!%§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §59§() : Number
      {
         return this.§>"'§;
      }
      
      public function §?!2§(param1:Number) : void
      {
         this.§>"'§ = param1;
      }
      
      public function §]!S§() : Number
      {
         return this.§]!o§;
      }
      
      public function §%!u§(param1:Number) : void
      {
         this.§]!o§ = param1;
      }
      
      public function §1>§(param1:uint) : void
      {
         if(this.§;M§ == param1)
         {
            return;
         }
         this.§;M§ = param1;
         this.§0!A§();
         if(this.§;M§ == b2_staticBody)
         {
            this.§?!%§.§6V§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§[!^§.§6V§();
         this.§^<§ = 0;
         var _loc2_:b2ContactEdge = this.§2v§;
         while(_loc2_)
         {
            _loc2_.§^!;§.§^G§();
            _loc2_ = _loc2_.§9"#§;
         }
      }
      
      public function §7![§() : uint
      {
         return this.§;M§;
      }
      
      public function §@"%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5"4§ |= b2internal::3!Y;
         }
         else
         {
            this.§5"4§ &= ~b2internal::3!Y;
         }
      }
      
      public function §6!?§() : Boolean
      {
         return (this.§5"4§ & b2internal::3!Y) == b2internal::3!Y;
      }
      
      public function §^t§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5"4§ |= b2internal::9W;
         }
         else
         {
            this.§5"4§ &= ~b2internal::9W;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5"4§ |= b2internal::-!f;
            this.§5!E§ = 0;
         }
         else
         {
            this.§5"4§ &= ~b2internal::-!f;
            this.§5!E§ = 0;
            this.§?!%§.§6V§();
            this.m_angularVelocity = 0;
            this.§[!^§.§6V§();
            this.§^<§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§5"4§ & b2internal::-!f) == b2internal::-!f;
      }
      
      public function §]!>§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5"4§ |= b2internal::2!Y;
         }
         else
         {
            this.§5"4§ &= ~b2internal::2!Y;
         }
         this.§0!A§();
      }
      
      public function §4!@§() : Boolean
      {
         return (this.§5"4§ & b2internal::2!Y) == b2internal::2!Y;
      }
      
      public function §^Q§(param1:Boolean) : void
      {
         var _loc2_:§7W§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§0!Q§())
         {
            return;
         }
         if(param1)
         {
            this.§5"4§ |= b2internal::8%;
            _loc2_ = this.m_world.§`![§.§'!G§;
            _loc3_ = this.§1!3§;
            while(_loc3_)
            {
               _loc3_.§[2§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§-!7§;
            }
         }
         else
         {
            this.§5"4§ &= ~b2internal::8%;
            _loc2_ = this.m_world.§`![§.§'!G§;
            _loc3_ = this.§1!3§;
            while(_loc3_)
            {
               _loc3_.§+!<§(_loc2_);
               _loc3_ = _loc3_.§-!7§;
            }
            _loc4_ = this.§2v§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§9"#§;
               this.m_world.§`![§.§@!,§(_loc5_.§^!;§);
            }
            this.§2v§ = null;
         }
      }
      
      public function §0!Q§() : Boolean
      {
         return (this.§5"4§ & b2internal::8%) == b2internal::8%;
      }
      
      public function §,9§() : Boolean
      {
         return (this.§5"4§ & b2internal::9W) == b2internal::9W;
      }
      
      public function §3!G§() : b2Fixture
      {
         return this.§1!3§;
      }
      
      public function §@`§() : b2JointEdge
      {
         return this.§4!N§;
      }
      
      public function §5!n§() : b2ControllerEdge
      {
         return this.§+!H§;
      }
      
      public function §>!I§() : b2ContactEdge
      {
         return this.§2v§;
      }
      
      public function §%T§() : b2Body
      {
         return this.§-!7§;
      }
      
      public function GetUserData() : *
      {
         return this.§!!K§;
      }
      
      public function §^x§(param1:*) : void
      {
         this.§!!K§ = param1;
      }
      
      public function §-7§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §<!w§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §[t§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§7W§ = this.m_world.§`![§.§'!G§;
         _loc4_ = this.§1!3§;
         while(_loc4_)
         {
            _loc4_.§^!q§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§-!7§;
         }
      }
      
      b2internal function §]!k§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §`!r§(param1:b2Body) : Boolean
      {
         if(this.§;M§ != b2_dynamicBody && param1.§;M§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§4!N§;
         while(_loc2_)
         {
            if(_loc2_.§6!,§ == param1)
            {
               if(_loc2_.§&!t§.§7!@§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§9"#§;
         }
         return true;
      }
      
      b2internal function §"!$§(param1:Number) : void
      {
         this.m_sweep.§"!$§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§]!k§();
      }
   }
}
