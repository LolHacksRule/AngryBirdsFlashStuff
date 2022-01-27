package §^!Z§
{
   import § !_§.b2Mat22;
   import § !_§.b2Math;
   import § !_§.b2Sweep;
   import § !_§.b2Transform;
   import § !_§.b2Vec2;
   import § X§.b2ControllerEdge;
   import §+&§.b2Settings;
   import §+&§.b2internal;
   import §-!!§.b2EdgeShape;
   import §-!!§.b2MassData;
   import §-!!§.b2Shape;
   import §3!A§.b2JointEdge;
   import §=_§.b2Contact;
   import §=_§.b2ContactEdge;
   import §^t§.§8]§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §-!V§:b2Transform = new b2Transform();
      
      b2internal static var § !5§:uint = 1;
      
      b2internal static var §7h§:uint = 2;
      
      b2internal static var §'u§:uint = 4;
      
      b2internal static var §^!5§:uint = 8;
      
      b2internal static var §<!3§:uint = 16;
      
      b2internal static var §@Q§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §=?§:uint;
      
      b2internal var §3!a§:int;
      
      b2internal var §6`§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §@!1§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §3Z§:b2Vec2;
      
      b2internal var §`n§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §9!@§:b2Body;
      
      b2internal var §]!8§:b2Body;
      
      b2internal var §7!J§:b2Fixture;
      
      b2internal var §#_§:int;
      
      b2internal var §,%§:b2ControllerEdge;
      
      b2internal var §=!'§:int;
      
      b2internal var §@!7§:b2JointEdge;
      
      b2internal var §4!D§:b2ContactEdge;
      
      b2internal var §6H§:Number;
      
      b2internal var §1!+§:Number;
      
      b2internal var §^!M§:Number;
      
      b2internal var §-!f§:Number;
      
      b2internal var §4o§:Number;
      
      b2internal var §`A§:Number;
      
      b2internal var §0p§:Number;
      
      b2internal var §1"§:Number;
      
      private var §=E§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§@!1§ = new b2Vec2();
         this.§3Z§ = new b2Vec2();
         super();
         this.§=?§ = 0;
         if(param1.§&,§)
         {
            this.§=?§ |= b2internal::^!5;
         }
         if(param1.§7p§)
         {
            this.§=?§ |= b2internal::<!3;
         }
         if(param1.§?i§)
         {
            this.§=?§ |= b2internal::'u;
         }
         if(param1.§=!c§)
         {
            this.§=?§ |= b2internal::7h;
         }
         if(param1.§2R§)
         {
            this.§=?§ |= b2internal::@Q;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§>!T§();
         this.m_sweep.§=<§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§@!7§ = null;
         this.§,%§ = null;
         this.§4!D§ = null;
         this.§=!'§ = 0;
         this.§9!@§ = null;
         this.§]!8§ = null;
         this.§@!1§.SetV(param1.§1!R§);
         this.m_angularVelocity = param1.§-!Q§;
         this.§`A§ = param1.§^!S§;
         this.§0p§ = param1.§`!J§;
         this.§3Z§.Set(0,0);
         this.§`n§ = 0;
         this.§1"§ = 0;
         this.§3!a§ = param1.type;
         if(this.§3!a§ == b2_dynamicBody)
         {
            this.§6H§ = 1;
            this.§1!+§ = 1;
         }
         else
         {
            this.§6H§ = 0;
            this.§1!+§ = 0;
         }
         this.§^!M§ = 0;
         this.§-!f§ = 0;
         this.§4o§ = param1.§^S§;
         this.§=E§ = param1.§<!=§;
         this.§7!J§ = null;
         this.§#_§ = 0;
      }
      
      private function §5c§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§-^§().y,param2.§-^§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§!!5§(_loc5_,param2.§-^§());
         _loc6_ = b2Math.§=`§(_loc6_,param2.§]o§());
         _loc6_ = b2Math.§!!5§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§`t§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§`t§(param1.§-^§(),param2.§-^§())).Normalize();
         var _loc8_:* = b2Math.§ h§(param1.§-^§(),param2.§]o§()) > 0;
         param1.§+1§(param2,_loc6_,_loc7_,_loc8_);
         param2.§"!&§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §"!,§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§8]§ = null;
         if(this.m_world.§@j§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§8b§(this,this.m_xf,param1);
         if(this.§=?§ & b2internal::@Q)
         {
            _loc3_ = this.m_world.§]y§.§ @§;
            _loc2_.§'W§(_loc3_,this.m_xf);
         }
         _loc2_.§]!8§ = this.§7!J§;
         this.§7!J§ = _loc2_;
         ++this.§#_§;
         _loc2_.m_body = this;
         if(_loc2_.§+!2§ > 0)
         {
            this.§[!U§();
         }
         this.m_world.§=?§ |= b2World.§2!_§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§"!,§(_loc3_);
      }
      
      public function §7!f§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§8]§ = null;
         if(this.m_world.§@j§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§7!J§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§]!8§ = param1.§]!8§;
               }
               else
               {
                  this.§7!J§ = param1.§]!8§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§]!8§;
         }
         var _loc5_:b2ContactEdge = this.§4!D§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§6!e§;
            _loc5_ = _loc5_.§9e§;
            _loc7_ = _loc6_.§]!4§();
            _loc8_ = _loc6_.§5#§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§]y§.§<a§(_loc6_);
            }
         }
         if(this.§=?§ & b2internal::@Q)
         {
            _loc9_ = this.m_world.§]y§.§ @§;
            param1.§+!%§(_loc9_);
         }
         param1.§<a§();
         param1.m_body = null;
         param1.§]!8§ = null;
         --this.§#_§;
         this.§[!U§();
      }
      
      public function §5!c§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§@j§() == true)
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
         var _loc6_:§8]§ = this.m_world.§]y§.§ @§;
         _loc3_ = this.§7!J§;
         while(_loc3_)
         {
            _loc3_.§=0§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§]!8§;
         }
         this.m_world.§]y§.§2a§();
      }
      
      public function §?!^§(param1:b2Transform) : void
      {
         this.§5!c§(param1.position,param1.GetAngle());
      }
      
      public function §<!2§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §return§(param1:b2Vec2) : void
      {
         this.§5!c§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §`M§(param1:Number) : void
      {
         this.§5!c§(this.GetPosition(),param1);
      }
      
      public function §#!R§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §=k§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§3!a§ == b2_staticBody)
         {
            return;
         }
         this.§@!1§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§@!1§;
      }
      
      public function §-V§(param1:Number) : void
      {
         if(this.§3!a§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §87§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §+R§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§6+§();
         _loc1_.§?i§ = (this.§=?§ & b2internal::'u) == b2internal::'u;
         _loc1_.angle = this.GetAngle();
         _loc1_.§`!J§ = this.§0p§;
         _loc1_.§-!Q§ = this.m_angularVelocity;
         _loc1_.§7p§ = (this.§=?§ & b2internal::<!3) == b2internal::<!3;
         _loc1_.§&,§ = (this.§=?§ & b2internal::^!5) == b2internal::^!5;
         _loc1_.§=!c§ = (this.§=?§ & b2internal::7h) == b2internal::7h;
         _loc1_.§^!S§ = this.§`A§;
         _loc1_.§1!R§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§<!=§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §7U§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§3!a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§3Z§.x += param1.x;
         this.§3Z§.y += param1.y;
         this.§`n§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §`!^§(param1:Number) : void
      {
         if(this.§3!a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§`n§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§3!a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§@!1§.x += this.§1!+§ * param1.x;
         this.§@!1§.y += this.§1!+§ * param1.y;
         this.m_angularVelocity += this.§-!f§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §%O§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§87§();
         var _loc4_:b2Vec2 = this.§#!R§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§;!"§(this.§+R§());
         var _loc8_:b2Fixture = _loc5_.§7!J§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§]!8§;
               if(_loc7_)
               {
                  _loc7_.§]!8§ = _loc13_;
               }
               else
               {
                  _loc5_.§7!J§ = _loc13_;
               }
               --_loc5_.§#_§;
               _loc8_.§]!8§ = _loc6_.§7!J§;
               _loc6_.§7!J§ = _loc8_;
               ++_loc6_.§#_§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§]!8§;
            }
         }
         _loc5_.§[!U§();
         _loc6_.§[!U§();
         var _loc9_:b2Vec2 = _loc5_.§#!R§();
         var _loc10_:b2Vec2 = _loc6_.§#!R§();
         var _loc11_:b2Vec2 = b2Math.§`t§(_loc2_,b2Math.§<!6§(_loc3_,b2Math.§=`§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§`t§(_loc2_,b2Math.§<!6§(_loc3_,b2Math.§=`§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§-V§(_loc3_);
         _loc6_.§-V§(_loc3_);
         _loc5_.§'!Q§();
         _loc6_.§'!Q§();
         return _loc6_;
      }
      
      public function §"!D§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§7!J§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§]!8§;
            --param1.§#_§;
            _loc2_.§]!8§ = this.§7!J§;
            this.§7!J§ = _loc2_;
            ++this.§#_§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§#_§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§#!R§();
         var _loc6_:b2Vec2 = _loc4_.§#!R§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§87§();
         var _loc10_:Number = _loc4_.§87§();
         _loc3_.§[!U§();
         this.§'!Q§();
      }
      
      public function GetMass() : Number
      {
         return this.§6H§;
      }
      
      public function §@!e§() : Number
      {
         return this.§^!M§;
      }
      
      public function §+!F§(param1:b2MassData) : void
      {
         param1.§ $§ = this.§6H§;
         param1.§#&§ = this.§^!M§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §`?§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§@j§() == false);
         if(this.m_world.§@j§() == true)
         {
            return;
         }
         if(this.§3!a§ != b2_dynamicBody)
         {
            return;
         }
         this.§1!+§ = 0;
         this.§^!M§ = 0;
         this.§-!f§ = 0;
         this.§6H§ = param1.§ $§;
         if(this.§6H§ <= 0)
         {
            this.§6H§ = 1;
         }
         this.§1!+§ = 1 / this.§6H§;
         if(param1.§#&§ > 0 && (this.§=?§ & b2internal::<!3) == 0)
         {
            this.§^!M§ = param1.§#&§ - this.§6H§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§-!f§ = 1 / this.§^!M§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§8!&§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§@!1§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§@!1§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §[!U§() : void
      {
         var _loc4_:b2MassData = null;
         this.§6H§ = 0;
         this.§1!+§ = 0;
         this.§^!M§ = 0;
         this.§-!f§ = 0;
         this.m_sweep.localCenter.§>!T§();
         if(this.§3!a§ == b2_staticBody || this.§3!a§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§0!&§(0,0);
         var _loc2_:b2Fixture = this.§7!J§;
         while(_loc2_)
         {
            if(_loc2_.§+!2§ != 0)
            {
               _loc4_ = _loc2_.§+!F§();
               this.§6H§ += _loc4_.§ $§;
               _loc1_.x += _loc4_.center.x * _loc4_.§ $§;
               _loc1_.y += _loc4_.center.y * _loc4_.§ $§;
               this.§^!M§ += _loc4_.§#&§;
            }
            _loc2_ = _loc2_.§]!8§;
         }
         if(this.§6H§ > 0)
         {
            this.§1!+§ = 1 / this.§6H§;
            _loc1_.x *= this.§1!+§;
            _loc1_.y *= this.§1!+§;
         }
         else
         {
            this.§6H§ = 1;
            this.§1!+§ = 1;
         }
         if(this.§^!M§ > 0 && (this.§=?§ & b2internal::<!3) == 0)
         {
            this.§^!M§ -= this.§6H§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§^!M§ *= this.§4o§;
            b2Settings.b2Assert(this.§^!M§ > 0);
            this.§-!f§ = 1 / this.§^!M§;
         }
         else
         {
            this.§^!M§ = 0;
            this.§-!f§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§8!&§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§@!1§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§@!1§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §<!d§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§"!a§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§<7§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§^!9§(this.m_xf.R,param1);
      }
      
      public function §;!2§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§@!1§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§@!1§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §^!7§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§@!1§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§@!1§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §[!7§() : Number
      {
         return this.§`A§;
      }
      
      public function §#$§(param1:Number) : void
      {
         this.§`A§ = param1;
      }
      
      public function §-&§() : Number
      {
         return this.§0p§;
      }
      
      public function §4]§(param1:Number) : void
      {
         this.§0p§ = param1;
      }
      
      public function §<!A§(param1:uint) : void
      {
         if(this.§3!a§ == param1)
         {
            return;
         }
         this.§3!a§ = param1;
         this.§[!U§();
         if(this.§3!a§ == b2_staticBody)
         {
            this.§@!1§.§>!T§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§3Z§.§>!T§();
         this.§`n§ = 0;
         var _loc2_:b2ContactEdge = this.§4!D§;
         while(_loc2_)
         {
            _loc2_.§6!e§.§#!N§();
            _loc2_ = _loc2_.§9e§;
         }
      }
      
      public function §6+§() : uint
      {
         return this.§3!a§;
      }
      
      public function §]`§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§=?§ |= b2internal::^!5;
         }
         else
         {
            this.§=?§ &= ~b2internal::^!5;
         }
      }
      
      public function §8Q§() : Boolean
      {
         return (this.§=?§ & b2internal::^!5) == b2internal::^!5;
      }
      
      public function §[R§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§=?§ |= b2internal::'u;
         }
         else
         {
            this.§=?§ &= ~b2internal::'u;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§=?§ |= b2internal::7h;
            this.§1"§ = 0;
         }
         else
         {
            this.§=?§ &= ~b2internal::7h;
            this.§1"§ = 0;
            this.§@!1§.§>!T§();
            this.m_angularVelocity = 0;
            this.§3Z§.§>!T§();
            this.§`n§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§=?§ & b2internal::7h) == b2internal::7h;
      }
      
      public function §>?§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§=?§ |= b2internal::<!3;
         }
         else
         {
            this.§=?§ &= ~b2internal::<!3;
         }
         this.§[!U§();
      }
      
      public function §3!6§() : Boolean
      {
         return (this.§=?§ & b2internal::<!3) == b2internal::<!3;
      }
      
      public function §6!'§(param1:Boolean) : void
      {
         var _loc2_:§8]§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§0!Q§())
         {
            return;
         }
         if(param1)
         {
            this.§=?§ |= b2internal::@Q;
            _loc2_ = this.m_world.§]y§.§ @§;
            _loc3_ = this.§7!J§;
            while(_loc3_)
            {
               _loc3_.§'W§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§]!8§;
            }
         }
         else
         {
            this.§=?§ &= ~b2internal::@Q;
            _loc2_ = this.m_world.§]y§.§ @§;
            _loc3_ = this.§7!J§;
            while(_loc3_)
            {
               _loc3_.§+!%§(_loc2_);
               _loc3_ = _loc3_.§]!8§;
            }
            _loc4_ = this.§4!D§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§9e§;
               this.m_world.§]y§.§<a§(_loc5_.§6!e§);
            }
            this.§4!D§ = null;
         }
      }
      
      public function §0!Q§() : Boolean
      {
         return (this.§=?§ & b2internal::@Q) == b2internal::@Q;
      }
      
      public function §6d§() : Boolean
      {
         return (this.§=?§ & b2internal::'u) == b2internal::'u;
      }
      
      public function §5X§() : b2Fixture
      {
         return this.§7!J§;
      }
      
      public function §%!#§() : b2JointEdge
      {
         return this.§@!7§;
      }
      
      public function §>N§() : b2ControllerEdge
      {
         return this.§,%§;
      }
      
      public function §>v§() : b2ContactEdge
      {
         return this.§4!D§;
      }
      
      public function §1![§() : b2Body
      {
         return this.§]!8§;
      }
      
      public function GetUserData() : *
      {
         return this.§=E§;
      }
      
      public function §0!@§(param1:*) : void
      {
         this.§=E§ = param1;
      }
      
      public function §&!D§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §'!Q§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §-!V§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§8]§ = this.m_world.§]y§.§ @§;
         _loc4_ = this.§7!J§;
         while(_loc4_)
         {
            _loc4_.§=0§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§]!8§;
         }
      }
      
      b2internal function §1&§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §^n§(param1:b2Body) : Boolean
      {
         if(this.§3!a§ != b2_dynamicBody && param1.§3!a§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§@!7§;
         while(_loc2_)
         {
            if(_loc2_.§-!_§ == param1)
            {
               if(_loc2_.§[!_§.§+!+§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§9e§;
         }
         return true;
      }
      
      b2internal function §<R§(param1:Number) : void
      {
         this.m_sweep.§<R§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§1&§();
      }
   }
}
