package §4!&§
{
   import § y§.b2EdgeShape;
   import § y§.b2MassData;
   import § y§.b2Shape;
   import §!!a§.b2ControllerEdge;
   import §&!+§.b2Mat22;
   import §&!+§.b2Math;
   import §&!+§.b2Sweep;
   import §&!+§.b2Transform;
   import §&!+§.b2Vec2;
   import §3Z§.b2Contact;
   import §3Z§.b2ContactEdge;
   import §7C§.b2JointEdge;
   import §8!%§.b2Settings;
   import §8!%§.b2internal;
   import §<!^§.§ !$§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var § W§:b2Transform = new b2Transform();
      
      b2internal static var §!4§:uint = 1;
      
      b2internal static var §+c§:uint = 2;
      
      b2internal static var §5;§:uint = 4;
      
      b2internal static var §-p§:uint = 8;
      
      b2internal static var §5!J§:uint = 16;
      
      b2internal static var §'!5§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §'z§:uint;
      
      b2internal var §"!V§:int;
      
      b2internal var §#r§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §5+§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §4s§:b2Vec2;
      
      b2internal var §4e§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §2!J§:b2Body;
      
      b2internal var §1!A§:b2Body;
      
      b2internal var §3!=§:b2Fixture;
      
      b2internal var §&1§:int;
      
      b2internal var §5!S§:b2ControllerEdge;
      
      b2internal var §8%§:int;
      
      b2internal var §8!a§:b2JointEdge;
      
      b2internal var §5!A§:b2ContactEdge;
      
      b2internal var §[`§:Number;
      
      b2internal var §=!P§:Number;
      
      b2internal var §=$§:Number;
      
      b2internal var §`!6§:Number;
      
      b2internal var §;u§:Number;
      
      b2internal var §-T§:Number;
      
      b2internal var §9!]§:Number;
      
      b2internal var §%<§:Number;
      
      private var §-!F§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§5+§ = new b2Vec2();
         this.§4s§ = new b2Vec2();
         super();
         this.§'z§ = 0;
         if(param1.§do §)
         {
            this.§'z§ |= b2internal::-p;
         }
         if(param1.§<!5§)
         {
            this.§'z§ |= b2internal::5!J;
         }
         if(param1.§6,§)
         {
            this.§'z§ |= b2internal::5;;
         }
         if(param1.§`9§)
         {
            this.§'z§ |= b2internal::+c;
         }
         if(param1.§'!-§)
         {
            this.§'z§ |= b2internal::'!5;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§8Q§();
         this.m_sweep.§6L§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§8!a§ = null;
         this.§5!S§ = null;
         this.§5!A§ = null;
         this.§8%§ = 0;
         this.§2!J§ = null;
         this.§1!A§ = null;
         this.§5+§.SetV(param1.§^;§);
         this.m_angularVelocity = param1.§";§;
         this.§-T§ = param1.§-!&§;
         this.§9!]§ = param1.§&t§;
         this.§4s§.Set(0,0);
         this.§4e§ = 0;
         this.§%<§ = 0;
         this.§"!V§ = param1.type;
         if(this.§"!V§ == b2_dynamicBody)
         {
            this.§[`§ = 1;
            this.§=!P§ = 1;
         }
         else
         {
            this.§[`§ = 0;
            this.§=!P§ = 0;
         }
         this.§=$§ = 0;
         this.§`!6§ = 0;
         this.§;u§ = param1.§3!#§;
         this.§-!F§ = param1.§3_§;
         this.§3!=§ = null;
         this.§&1§ = 0;
      }
      
      private function §<W§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§+!=§().y,param2.§+!=§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§3!K§(_loc5_,param2.§+!=§());
         _loc6_ = b2Math.§+w§(_loc6_,param2.§7!A§());
         _loc6_ = b2Math.§3!K§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§#'§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§#'§(param1.§+!=§(),param2.§+!=§())).Normalize();
         var _loc8_:* = b2Math.§9`§(param1.§+!=§(),param2.§7!A§()) > 0;
         param1.§-<§(param2,_loc6_,_loc7_,_loc8_);
         param2.§0<§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §-!3§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§ !$§ = null;
         if(this.m_world.§&z§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§?j§(this,this.m_xf,param1);
         if(this.§'z§ & b2internal::'!5)
         {
            _loc3_ = this.m_world.§!`§.§18§;
            _loc2_.§-!>§(_loc3_,this.m_xf);
         }
         _loc2_.§1!A§ = this.§3!=§;
         this.§3!=§ = _loc2_;
         ++this.§&1§;
         _loc2_.m_body = this;
         if(_loc2_.§2`§ > 0)
         {
            this.§6d§();
         }
         this.m_world.§'z§ |= b2World.§0i§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§-!3§(_loc3_);
      }
      
      public function §6Y§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§ !$§ = null;
         if(this.m_world.§&z§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§3!=§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§1!A§ = param1.§1!A§;
               }
               else
               {
                  this.§3!=§ = param1.§1!A§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§1!A§;
         }
         var _loc5_:b2ContactEdge = this.§5!A§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§+!#§;
            _loc5_ = _loc5_.§?c§;
            _loc7_ = _loc6_.§?7§();
            _loc8_ = _loc6_.§]!1§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§!`§.§4c§(_loc6_);
            }
         }
         if(this.§'z§ & b2internal::'!5)
         {
            _loc9_ = this.m_world.§!`§.§18§;
            param1.§2x§(_loc9_);
         }
         param1.§4c§();
         param1.m_body = null;
         param1.§1!A§ = null;
         --this.§&1§;
         this.§6d§();
      }
      
      public function §0!H§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§&z§() == true)
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
         var _loc6_:§ !$§ = this.m_world.§!`§.§18§;
         _loc3_ = this.§3!=§;
         while(_loc3_)
         {
            _loc3_.§'i§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§1!A§;
         }
         this.m_world.§!`§.§]L§();
      }
      
      public function §'6§(param1:b2Transform) : void
      {
         this.§0!H§(param1.position,param1.GetAngle());
      }
      
      public function §3!H§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §!!§(param1:b2Vec2) : void
      {
         this.§0!H§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §-!P§(param1:Number) : void
      {
         this.§0!H§(this.GetPosition(),param1);
      }
      
      public function §^!&§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §68§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§"!V§ == b2_staticBody)
         {
            return;
         }
         this.§5+§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§5+§;
      }
      
      public function §4h§(param1:Number) : void
      {
         if(this.§"!V§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §3!S§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §]i§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§?!S§();
         _loc1_.§6,§ = (this.§'z§ & b2internal::5;) == b2internal::5;;
         _loc1_.angle = this.GetAngle();
         _loc1_.§&t§ = this.§9!]§;
         _loc1_.§";§ = this.m_angularVelocity;
         _loc1_.§<!5§ = (this.§'z§ & b2internal::5!J) == b2internal::5!J;
         _loc1_.§do § = (this.§'z§ & b2internal::-p) == b2internal::-p;
         _loc1_.§`9§ = (this.§'z§ & b2internal::+c) == b2internal::+c;
         _loc1_.§-!&§ = this.§-T§;
         _loc1_.§^;§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§3_§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §6!V§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§"!V§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§4s§.x += param1.x;
         this.§4s§.y += param1.y;
         this.§4e§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §@U§(param1:Number) : void
      {
         if(this.§"!V§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§4e§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§"!V§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§5+§.x += this.§=!P§ * param1.x;
         this.§5+§.y += this.§=!P§ * param1.y;
         this.m_angularVelocity += this.§`!6§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §]!^§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§3!S§();
         var _loc4_:b2Vec2 = this.§^!&§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§?!$§(this.§]i§());
         var _loc8_:b2Fixture = _loc5_.§3!=§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§1!A§;
               if(_loc7_)
               {
                  _loc7_.§1!A§ = _loc13_;
               }
               else
               {
                  _loc5_.§3!=§ = _loc13_;
               }
               --_loc5_.§&1§;
               _loc8_.§1!A§ = _loc6_.§3!=§;
               _loc6_.§3!=§ = _loc8_;
               ++_loc6_.§&1§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§1!A§;
            }
         }
         _loc5_.§6d§();
         _loc6_.§6d§();
         var _loc9_:b2Vec2 = _loc5_.§^!&§();
         var _loc10_:b2Vec2 = _loc6_.§^!&§();
         var _loc11_:b2Vec2 = b2Math.§#'§(_loc2_,b2Math.§@!7§(_loc3_,b2Math.§+w§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§#'§(_loc2_,b2Math.§@!7§(_loc3_,b2Math.§+w§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§4h§(_loc3_);
         _loc6_.§4h§(_loc3_);
         _loc5_.§+§();
         _loc6_.§+§();
         return _loc6_;
      }
      
      public function § @§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§3!=§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§1!A§;
            --param1.§&1§;
            _loc2_.§1!A§ = this.§3!=§;
            this.§3!=§ = _loc2_;
            ++this.§&1§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§&1§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§^!&§();
         var _loc6_:b2Vec2 = _loc4_.§^!&§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§3!S§();
         var _loc10_:Number = _loc4_.§3!S§();
         _loc3_.§6d§();
         this.§+§();
      }
      
      public function GetMass() : Number
      {
         return this.§[`§;
      }
      
      public function §]!'§() : Number
      {
         return this.§=$§;
      }
      
      public function §=K§(param1:b2MassData) : void
      {
         param1.§>i§ = this.§[`§;
         param1.§0K§ = this.§=$§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §2W§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§&z§() == false);
         if(this.m_world.§&z§() == true)
         {
            return;
         }
         if(this.§"!V§ != b2_dynamicBody)
         {
            return;
         }
         this.§=!P§ = 0;
         this.§=$§ = 0;
         this.§`!6§ = 0;
         this.§[`§ = param1.§>i§;
         if(this.§[`§ <= 0)
         {
            this.§[`§ = 1;
         }
         this.§=!P§ = 1 / this.§[`§;
         if(param1.§0K§ > 0 && (this.§'z§ & b2internal::5!J) == 0)
         {
            this.§=$§ = param1.§0K§ - this.§[`§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§`!6§ = 1 / this.§=$§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§,d§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§5+§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§5+§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §6d§() : void
      {
         var _loc4_:b2MassData = null;
         this.§[`§ = 0;
         this.§=!P§ = 0;
         this.§=$§ = 0;
         this.§`!6§ = 0;
         this.m_sweep.localCenter.§8Q§();
         if(this.§"!V§ == b2_staticBody || this.§"!V§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§'4§(0,0);
         var _loc2_:b2Fixture = this.§3!=§;
         while(_loc2_)
         {
            if(_loc2_.§2`§ != 0)
            {
               _loc4_ = _loc2_.§=K§();
               this.§[`§ += _loc4_.§>i§;
               _loc1_.x += _loc4_.center.x * _loc4_.§>i§;
               _loc1_.y += _loc4_.center.y * _loc4_.§>i§;
               this.§=$§ += _loc4_.§0K§;
            }
            _loc2_ = _loc2_.§1!A§;
         }
         if(this.§[`§ > 0)
         {
            this.§=!P§ = 1 / this.§[`§;
            _loc1_.x *= this.§=!P§;
            _loc1_.y *= this.§=!P§;
         }
         else
         {
            this.§[`§ = 1;
            this.§=!P§ = 1;
         }
         if(this.§=$§ > 0 && (this.§'z§ & b2internal::5!J) == 0)
         {
            this.§=$§ -= this.§[`§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§=$§ *= this.§;u§;
            b2Settings.b2Assert(this.§=$§ > 0);
            this.§`!6§ = 1 / this.§=$§;
         }
         else
         {
            this.§=$§ = 0;
            this.§`!6§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§,d§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§5+§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§5+§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §4!V§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§4k§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§@k§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§,K§(this.m_xf.R,param1);
      }
      
      public function §4!O§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§5+§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§5+§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §>#§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§5+§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§5+§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §^u§() : Number
      {
         return this.§-T§;
      }
      
      public function §#!,§(param1:Number) : void
      {
         this.§-T§ = param1;
      }
      
      public function §`Z§() : Number
      {
         return this.§9!]§;
      }
      
      public function §5?§(param1:Number) : void
      {
         this.§9!]§ = param1;
      }
      
      public function §?@§(param1:uint) : void
      {
         if(this.§"!V§ == param1)
         {
            return;
         }
         this.§"!V§ = param1;
         this.§6d§();
         if(this.§"!V§ == b2_staticBody)
         {
            this.§5+§.§8Q§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§4s§.§8Q§();
         this.§4e§ = 0;
         var _loc2_:b2ContactEdge = this.§5!A§;
         while(_loc2_)
         {
            _loc2_.§+!#§.§=@§();
            _loc2_ = _loc2_.§?c§;
         }
      }
      
      public function §?!S§() : uint
      {
         return this.§"!V§;
      }
      
      public function §0!%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'z§ |= b2internal::-p;
         }
         else
         {
            this.§'z§ &= ~b2internal::-p;
         }
      }
      
      public function §2!Q§() : Boolean
      {
         return (this.§'z§ & b2internal::-p) == b2internal::-p;
      }
      
      public function §7!6§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'z§ |= b2internal::5;;
         }
         else
         {
            this.§'z§ &= ~b2internal::5;;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'z§ |= b2internal::+c;
            this.§%<§ = 0;
         }
         else
         {
            this.§'z§ &= ~b2internal::+c;
            this.§%<§ = 0;
            this.§5+§.§8Q§();
            this.m_angularVelocity = 0;
            this.§4s§.§8Q§();
            this.§4e§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§'z§ & b2internal::+c) == b2internal::+c;
      }
      
      public function §@-§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'z§ |= b2internal::5!J;
         }
         else
         {
            this.§'z§ &= ~b2internal::5!J;
         }
         this.§6d§();
      }
      
      public function §2!>§() : Boolean
      {
         return (this.§'z§ & b2internal::5!J) == b2internal::5!J;
      }
      
      public function §function§(param1:Boolean) : void
      {
         var _loc2_:§ !$§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§]3§())
         {
            return;
         }
         if(param1)
         {
            this.§'z§ |= b2internal::'!5;
            _loc2_ = this.m_world.§!`§.§18§;
            _loc3_ = this.§3!=§;
            while(_loc3_)
            {
               _loc3_.§-!>§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§1!A§;
            }
         }
         else
         {
            this.§'z§ &= ~b2internal::'!5;
            _loc2_ = this.m_world.§!`§.§18§;
            _loc3_ = this.§3!=§;
            while(_loc3_)
            {
               _loc3_.§2x§(_loc2_);
               _loc3_ = _loc3_.§1!A§;
            }
            _loc4_ = this.§5!A§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§?c§;
               this.m_world.§!`§.§4c§(_loc5_.§+!#§);
            }
            this.§5!A§ = null;
         }
      }
      
      public function §]3§() : Boolean
      {
         return (this.§'z§ & b2internal::'!5) == b2internal::'!5;
      }
      
      public function §^8§() : Boolean
      {
         return (this.§'z§ & b2internal::5;) == b2internal::5;;
      }
      
      public function §&S§() : b2Fixture
      {
         return this.§3!=§;
      }
      
      public function §!!8§() : b2JointEdge
      {
         return this.§8!a§;
      }
      
      public function §;!N§() : b2ControllerEdge
      {
         return this.§5!S§;
      }
      
      public function §5n§() : b2ContactEdge
      {
         return this.§5!A§;
      }
      
      public function §'&§() : b2Body
      {
         return this.§1!A§;
      }
      
      public function GetUserData() : *
      {
         return this.§-!F§;
      }
      
      public function §`!F§(param1:*) : void
      {
         this.§-!F§ = param1;
      }
      
      public function §6Z§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §+§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = § W§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§ !$§ = this.m_world.§!`§.§18§;
         _loc4_ = this.§3!=§;
         while(_loc4_)
         {
            _loc4_.§'i§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§1!A§;
         }
      }
      
      b2internal function §@d§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §2!$§(param1:b2Body) : Boolean
      {
         if(this.§"!V§ != b2_dynamicBody && param1.§"!V§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§8!a§;
         while(_loc2_)
         {
            if(_loc2_.§>+§ == param1)
            {
               if(_loc2_.§#7§.§3t§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§?c§;
         }
         return true;
      }
      
      b2internal function §?M§(param1:Number) : void
      {
         this.m_sweep.§?M§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§@d§();
      }
   }
}
