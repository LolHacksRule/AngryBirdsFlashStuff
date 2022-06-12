package §&!Y§
{
   import § !0§.§[!8§;
   import § "D§.b2ControllerEdge;
   import §"G§.b2JointEdge;
   import §+!d§.b2EdgeShape;
   import §+!d§.b2MassData;
   import §+!d§.b2Shape;
   import §4!2§.b2Contact;
   import §4!2§.b2ContactEdge;
   import §7F§.b2Mat22;
   import §7F§.b2Math;
   import §7F§.b2Sweep;
   import §7F§.b2Transform;
   import §7F§.b2Vec2;
   import §@!a§.b2Settings;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §!"%§:b2Transform = new b2Transform();
      
      b2internal static var §3u§:uint = 1;
      
      b2internal static var §<!V§:uint = 2;
      
      b2internal static var §+"9§:uint = 4;
      
      b2internal static var §[!C§:uint = 8;
      
      b2internal static var §%!P§:uint = 16;
      
      b2internal static var §8!N§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §^Q§:uint;
      
      b2internal var §6N§:int;
      
      b2internal var §5!3§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §,!1§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §="F§:b2Vec2;
      
      b2internal var §',§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §>b§:b2Body;
      
      b2internal var §&!n§:b2Body;
      
      b2internal var §-!<§:b2Fixture;
      
      b2internal var §@! §:int;
      
      b2internal var §1!x§:b2ControllerEdge;
      
      b2internal var §>^§:int;
      
      b2internal var §,!n§:b2JointEdge;
      
      b2internal var §;!o§:b2ContactEdge;
      
      b2internal var §#!u§:Number;
      
      b2internal var §6!j§:Number;
      
      b2internal var §;e§:Number;
      
      b2internal var §6!$§:Number;
      
      b2internal var §&!z§:Number;
      
      b2internal var §[8§:Number;
      
      b2internal var §'!K§:Number;
      
      b2internal var §4"4§:Number;
      
      private var §>!G§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§,!1§ = new b2Vec2();
         this.§="F§ = new b2Vec2();
         super();
         this.§^Q§ = 0;
         if(param1.§4!#§)
         {
            this.§^Q§ |= b2internal::[!C;
         }
         if(param1.§"Z§)
         {
            this.§^Q§ |= b2internal::%!P;
         }
         if(param1.§>J§)
         {
            this.§^Q§ |= b2internal::+"9;
         }
         if(param1.§ !T§)
         {
            this.§^Q§ |= b2internal::<!V;
         }
         if(param1.§;!R§)
         {
            this.§^Q§ |= b2internal::8!N;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§%"0§();
         this.m_sweep.§%M§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§,!n§ = null;
         this.§1!x§ = null;
         this.§;!o§ = null;
         this.§>^§ = 0;
         this.§>b§ = null;
         this.§&!n§ = null;
         this.§,!1§.SetV(param1.§]!%§);
         this.m_angularVelocity = param1.§`!z§;
         this.§[8§ = param1.§?!b§;
         this.§'!K§ = param1.§5v§;
         this.§="F§.Set(0,0);
         this.§',§ = 0;
         this.§4"4§ = 0;
         this.§6N§ = param1.type;
         if(this.§6N§ == b2_dynamicBody)
         {
            this.§#!u§ = 1;
            this.§6!j§ = 1;
         }
         else
         {
            this.§#!u§ = 0;
            this.§6!j§ = 0;
         }
         this.§;e§ = 0;
         this.§6!$§ = 0;
         this.§&!z§ = param1.§]!J§;
         this.§>!G§ = param1.§5!R§;
         this.§-!<§ = null;
         this.§@! § = 0;
      }
      
      private function §4",§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§3>§().y,param2.§3>§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§<g§(_loc5_,param2.§3>§());
         _loc6_ = b2Math.§5x§(_loc6_,param2.§@_§());
         _loc6_ = b2Math.§<g§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§'O§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§'O§(param1.§3>§(),param2.§3>§())).Normalize();
         var _loc8_:* = b2Math.§"V§(param1.§3>§(),param2.§@_§()) > 0;
         param1.§`!e§(param2,_loc6_,_loc7_,_loc8_);
         param2.§&_§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §[!7§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§[!8§ = null;
         if(this.m_world.§!!E§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§]!e§(this,this.m_xf,param1);
         if(this.§^Q§ & b2internal::8!N)
         {
            _loc3_ = this.m_world.§=!1§.§]!;§;
            _loc2_.§"!f§(_loc3_,this.m_xf);
         }
         _loc2_.§&!n§ = this.§-!<§;
         this.§-!<§ = _loc2_;
         ++this.§@! §;
         _loc2_.m_body = this;
         if(_loc2_.§#1§ > 0)
         {
            this.§;!l§();
         }
         this.m_world.§^Q§ |= b2World.§8!I§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§[!7§(_loc3_);
      }
      
      public function §?!q§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§[!8§ = null;
         if(this.m_world.§!!E§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§-!<§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§&!n§ = param1.§&!n§;
               }
               else
               {
                  this.§-!<§ = param1.§&!n§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§&!n§;
         }
         var _loc5_:b2ContactEdge = this.§;!o§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§7!K§;
            _loc5_ = _loc5_.§<B§;
            _loc7_ = _loc6_.§-!x§();
            _loc8_ = _loc6_.§6$§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§=!1§.§]!f§(_loc6_);
            }
         }
         if(this.§^Q§ & b2internal::8!N)
         {
            _loc9_ = this.m_world.§=!1§.§]!;§;
            param1.§="G§(_loc9_);
         }
         param1.§]!f§();
         param1.m_body = null;
         param1.§&!n§ = null;
         --this.§@! §;
         this.§;!l§();
      }
      
      public function §+"<§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§!!E§() == true)
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
         var _loc6_:§[!8§ = this.m_world.§=!1§.§]!;§;
         _loc3_ = this.§-!<§;
         while(_loc3_)
         {
            _loc3_.§2S§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§&!n§;
         }
         this.m_world.§=!1§.§%!"§();
      }
      
      public function §<§(param1:b2Transform) : void
      {
         this.§+"<§(param1.position,param1.GetAngle());
      }
      
      public function §5j§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §+Q§(param1:b2Vec2) : void
      {
         this.§+"<§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §6j§(param1:Number) : void
      {
         this.§+"<§(this.GetPosition(),param1);
      }
      
      public function §[P§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §%"7§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§6N§ == b2_staticBody)
         {
            return;
         }
         this.§,!1§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§,!1§;
      }
      
      public function §23§(param1:Number) : void
      {
         if(this.§6N§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §&! §() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§;!w§();
         _loc1_.§>J§ = (this.§^Q§ & b2internal::+"9) == b2internal::+"9;
         _loc1_.angle = this.GetAngle();
         _loc1_.§5v§ = this.§'!K§;
         _loc1_.§`!z§ = this.m_angularVelocity;
         _loc1_.§"Z§ = (this.§^Q§ & b2internal::%!P) == b2internal::%!P;
         _loc1_.§4!#§ = (this.§^Q§ & b2internal::[!C) == b2internal::[!C;
         _loc1_.§ !T§ = (this.§^Q§ & b2internal::<!V) == b2internal::<!V;
         _loc1_.§?!b§ = this.§[8§;
         _loc1_.§]!%§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§5!R§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §`"@§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§6N§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§="F§.x += param1.x;
         this.§="F§.y += param1.y;
         this.§',§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §,";§(param1:Number) : void
      {
         if(this.§6N§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§',§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§6N§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§,!1§.x += this.§6!j§ * param1.x;
         this.§,!1§.y += this.§6!j§ * param1.y;
         this.m_angularVelocity += this.§6!$§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §>"!§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§[P§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§8!^§(this.§&! §());
         var _loc8_:b2Fixture = _loc5_.§-!<§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§&!n§;
               if(_loc7_)
               {
                  _loc7_.§&!n§ = _loc13_;
               }
               else
               {
                  _loc5_.§-!<§ = _loc13_;
               }
               --_loc5_.§@! §;
               _loc8_.§&!n§ = _loc6_.§-!<§;
               _loc6_.§-!<§ = _loc8_;
               ++_loc6_.§@! §;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§&!n§;
            }
         }
         _loc5_.§;!l§();
         _loc6_.§;!l§();
         var _loc9_:b2Vec2 = _loc5_.§[P§();
         var _loc10_:b2Vec2 = _loc6_.§[P§();
         var _loc11_:b2Vec2 = b2Math.§'O§(_loc2_,b2Math.§<M§(_loc3_,b2Math.§5x§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§'O§(_loc2_,b2Math.§<M§(_loc3_,b2Math.§5x§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§23§(_loc3_);
         _loc6_.§23§(_loc3_);
         _loc5_.§<!&§();
         _loc6_.§<!&§();
         return _loc6_;
      }
      
      public function §3"K§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§-!<§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§&!n§;
            --param1.§@! §;
            _loc2_.§&!n§ = this.§-!<§;
            this.§-!<§ = _loc2_;
            ++this.§@! §;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§@! § = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§[P§();
         var _loc6_:b2Vec2 = _loc4_.§[P§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§;!l§();
         this.§<!&§();
      }
      
      public function GetMass() : Number
      {
         return this.§#!u§;
      }
      
      public function §&!;§() : Number
      {
         return this.§;e§;
      }
      
      public function §>!>§(param1:b2MassData) : void
      {
         param1.§>!;§ = this.§#!u§;
         param1.§="?§ = this.§;e§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §]G§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§!!E§() == false);
         if(this.m_world.§!!E§() == true)
         {
            return;
         }
         if(this.§6N§ != b2_dynamicBody)
         {
            return;
         }
         this.§6!j§ = 0;
         this.§;e§ = 0;
         this.§6!$§ = 0;
         this.§#!u§ = param1.§>!;§;
         if(this.§#!u§ <= 0)
         {
            this.§#!u§ = 1;
         }
         this.§6!j§ = 1 / this.§#!u§;
         if(param1.§="?§ > 0 && (this.§^Q§ & b2internal::%!P) == 0)
         {
            this.§;e§ = param1.§="?§ - this.§#!u§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§6!$§ = 1 / this.§;e§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§]D§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§,!1§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§,!1§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §;!l§() : void
      {
         var _loc4_:b2MassData = null;
         this.§#!u§ = 0;
         this.§6!j§ = 0;
         this.§;e§ = 0;
         this.§6!$§ = 0;
         this.m_sweep.localCenter.§%"0§();
         if(this.§6N§ == b2_staticBody || this.§6N§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§'l§(0,0);
         var _loc2_:b2Fixture = this.§-!<§;
         while(_loc2_)
         {
            if(_loc2_.§#1§ != 0)
            {
               _loc4_ = _loc2_.§>!>§();
               this.§#!u§ += _loc4_.§>!;§;
               _loc1_.x += _loc4_.center.x * _loc4_.§>!;§;
               _loc1_.y += _loc4_.center.y * _loc4_.§>!;§;
               this.§;e§ += _loc4_.§="?§;
            }
            _loc2_ = _loc2_.§&!n§;
         }
         if(this.§#!u§ > 0)
         {
            this.§6!j§ = 1 / this.§#!u§;
            _loc1_.x *= this.§6!j§;
            _loc1_.y *= this.§6!j§;
         }
         else
         {
            this.§#!u§ = 1;
            this.§6!j§ = 1;
         }
         if(this.§;e§ > 0 && (this.§^Q§ & b2internal::%!P) == 0)
         {
            this.§;e§ -= this.§#!u§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§;e§ *= this.§&!z§;
            b2Settings.b2Assert(this.§;e§ > 0);
            this.§6!$§ = 1 / this.§;e§;
         }
         else
         {
            this.§;e§ = 0;
            this.§6!$§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§]D§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§,!1§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§,!1§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §;[§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§2!8§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§,a§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§>!J§(this.m_xf.R,param1);
      }
      
      public function §=!o§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§,!1§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§,!1§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §;!p§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§,!1§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§,!1§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §#!f§() : Number
      {
         return this.§[8§;
      }
      
      public function §8!_§(param1:Number) : void
      {
         this.§[8§ = param1;
      }
      
      public function §4,§() : Number
      {
         return this.§'!K§;
      }
      
      public function §<!$§(param1:Number) : void
      {
         this.§'!K§ = param1;
      }
      
      public function §+`§(param1:uint) : void
      {
         if(this.§6N§ == param1)
         {
            return;
         }
         this.§6N§ = param1;
         this.§;!l§();
         if(this.§6N§ == b2_staticBody)
         {
            this.§,!1§.§%"0§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§="F§.§%"0§();
         this.§',§ = 0;
         var _loc2_:b2ContactEdge = this.§;!o§;
         while(_loc2_)
         {
            _loc2_.§7!K§.§-g§();
            _loc2_ = _loc2_.§<B§;
         }
      }
      
      public function §;!w§() : uint
      {
         return this.§6N§;
      }
      
      public function §2!m§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^Q§ |= b2internal::[!C;
         }
         else
         {
            this.§^Q§ &= ~b2internal::[!C;
         }
      }
      
      public function §>!O§() : Boolean
      {
         return (this.§^Q§ & b2internal::[!C) == b2internal::[!C;
      }
      
      public function §'!]§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^Q§ |= b2internal::+"9;
         }
         else
         {
            this.§^Q§ &= ~b2internal::+"9;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^Q§ |= b2internal::<!V;
            this.§4"4§ = 0;
         }
         else
         {
            this.§^Q§ &= ~b2internal::<!V;
            this.§4"4§ = 0;
            this.§,!1§.§%"0§();
            this.m_angularVelocity = 0;
            this.§="F§.§%"0§();
            this.§',§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§^Q§ & b2internal::<!V) == b2internal::<!V;
      }
      
      public function §&m§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^Q§ |= b2internal::%!P;
         }
         else
         {
            this.§^Q§ &= ~b2internal::%!P;
         }
         this.§;!l§();
      }
      
      public function §`"H§() : Boolean
      {
         return (this.§^Q§ & b2internal::%!P) == b2internal::%!P;
      }
      
      public function §[t§(param1:Boolean) : void
      {
         var _loc2_:§[!8§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§!]§())
         {
            return;
         }
         if(param1)
         {
            this.§^Q§ |= b2internal::8!N;
            _loc2_ = this.m_world.§=!1§.§]!;§;
            _loc3_ = this.§-!<§;
            while(_loc3_)
            {
               _loc3_.§"!f§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§&!n§;
            }
         }
         else
         {
            this.§^Q§ &= ~b2internal::8!N;
            _loc2_ = this.m_world.§=!1§.§]!;§;
            _loc3_ = this.§-!<§;
            while(_loc3_)
            {
               _loc3_.§="G§(_loc2_);
               _loc3_ = _loc3_.§&!n§;
            }
            _loc4_ = this.§;!o§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§<B§;
               this.m_world.§=!1§.§]!f§(_loc5_.§7!K§);
            }
            this.§;!o§ = null;
         }
      }
      
      public function §!]§() : Boolean
      {
         return (this.§^Q§ & b2internal::8!N) == b2internal::8!N;
      }
      
      public function §4>§() : Boolean
      {
         return (this.§^Q§ & b2internal::+"9) == b2internal::+"9;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§-!<§;
      }
      
      public function §@!;§() : b2JointEdge
      {
         return this.§,!n§;
      }
      
      public function §5h§() : b2ControllerEdge
      {
         return this.§1!x§;
      }
      
      public function §!!?§() : b2ContactEdge
      {
         return this.§;!o§;
      }
      
      public function §+U§() : b2Body
      {
         return this.§&!n§;
      }
      
      public function GetUserData() : *
      {
         return this.§>!G§;
      }
      
      public function §#^§(param1:*) : void
      {
         this.§>!G§ = param1;
      }
      
      public function §!!,§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §<!&§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §!"%§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§[!8§ = this.m_world.§=!1§.§]!;§;
         _loc4_ = this.§-!<§;
         while(_loc4_)
         {
            _loc4_.§2S§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§&!n§;
         }
      }
      
      b2internal function §-v§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §+!!§(param1:b2Body) : Boolean
      {
         if(this.§6N§ != b2_dynamicBody && param1.§6N§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§,!n§;
         while(_loc2_)
         {
            if(_loc2_.§2Q§ == param1)
            {
               if(_loc2_.§&",§.§"!#§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§<B§;
         }
         return true;
      }
      
      b2internal function §?"H§(param1:Number) : void
      {
         this.m_sweep.§?"H§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§-v§();
      }
   }
}
