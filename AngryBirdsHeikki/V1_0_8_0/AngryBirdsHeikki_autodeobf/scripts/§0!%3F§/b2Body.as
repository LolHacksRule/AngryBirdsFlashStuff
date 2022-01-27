package §0!?§
{
   import §!O§.b2EdgeShape;
   import §!O§.b2MassData;
   import §!O§.b2Shape;
   import §%!H§.b2ControllerEdge;
   import §0!=§.b2Mat22;
   import §0!=§.b2Math;
   import §0!=§.b2Sweep;
   import §0!=§.b2Transform;
   import §0!=§.b2Vec2;
   import §0^§.b2Settings;
   import §0^§.b2internal;
   import §8<§.b2JointEdge;
   import §;!U§.b2Contact;
   import §;!U§.b2ContactEdge;
   import §`!E§.§'e§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §+!5§:b2Transform = new b2Transform();
      
      b2internal static var §^n§:uint = 1;
      
      b2internal static var §;=§:uint = 2;
      
      b2internal static var §%!O§:uint = 4;
      
      b2internal static var §=!G§:uint = 8;
      
      b2internal static var §1F§:uint = 16;
      
      b2internal static var §#D§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §&W§:uint;
      
      b2internal var §%P§:int;
      
      b2internal var §?8§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §#P§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §%!3§:b2Vec2;
      
      b2internal var §24§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §4!_§:b2Body;
      
      b2internal var §=!T§:b2Body;
      
      b2internal var §&c§:b2Fixture;
      
      b2internal var §2H§:int;
      
      b2internal var §<!X§:b2ControllerEdge;
      
      b2internal var §^c§:int;
      
      b2internal var §1=§:b2JointEdge;
      
      b2internal var §+!D§:b2ContactEdge;
      
      b2internal var §[J§:Number;
      
      b2internal var §!q§:Number;
      
      b2internal var §,W§:Number;
      
      b2internal var §&!Y§:Number;
      
      b2internal var § !L§:Number;
      
      b2internal var §4h§:Number;
      
      b2internal var §@u§:Number;
      
      b2internal var §<D§:Number;
      
      private var §`!0§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§#P§ = new b2Vec2();
         this.§%!3§ = new b2Vec2();
         super();
         this.§&W§ = 0;
         if(param1.§7!b§)
         {
            this.§&W§ |= b2internal::=!G;
         }
         if(param1.§]!?§)
         {
            this.§&W§ |= b2internal::1F;
         }
         if(param1.§^!C§)
         {
            this.§&W§ |= b2internal::%!O;
         }
         if(param1.§,!G§)
         {
            this.§&W§ |= b2internal::;=;
         }
         if(param1.§4w§)
         {
            this.§&W§ |= b2internal::#D;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§0'§();
         this.m_sweep.§5!K§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§1=§ = null;
         this.§<!X§ = null;
         this.§+!D§ = null;
         this.§^c§ = 0;
         this.§4!_§ = null;
         this.§=!T§ = null;
         this.§#P§.SetV(param1.§ for§);
         this.m_angularVelocity = param1.§4O§;
         this.§4h§ = param1.§1[§;
         this.§@u§ = param1.§9+§;
         this.§%!3§.Set(0,0);
         this.§24§ = 0;
         this.§<D§ = 0;
         this.§%P§ = param1.type;
         if(this.§%P§ == b2_dynamicBody)
         {
            this.§[J§ = 1;
            this.§!q§ = 1;
         }
         else
         {
            this.§[J§ = 0;
            this.§!q§ = 0;
         }
         this.§,W§ = 0;
         this.§&!Y§ = 0;
         this.§ !L§ = param1.§&!]§;
         this.§`!0§ = param1.§2=§;
         this.§&c§ = null;
         this.§2H§ = 0;
      }
      
      private function §3I§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§-!K§().y,param2.§-!K§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§,I§(_loc5_,param2.§-!K§());
         _loc6_ = b2Math.§2V§(_loc6_,param2.§2c§());
         _loc6_ = b2Math.§,I§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§8!+§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§8!+§(param1.§-!K§(),param2.§-!K§())).Normalize();
         var _loc8_:* = b2Math.§3!2§(param1.§-!K§(),param2.§2c§()) > 0;
         param1.§0U§(param2,_loc6_,_loc7_,_loc8_);
         param2.§9?§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §-5§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§'e§ = null;
         if(this.m_world.§%X§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§6>§(this,this.m_xf,param1);
         if(this.§&W§ & b2internal::#D)
         {
            _loc3_ = this.m_world.§<!8§.§;t§;
            _loc2_.§<R§(_loc3_,this.m_xf);
         }
         _loc2_.§=!T§ = this.§&c§;
         this.§&c§ = _loc2_;
         ++this.§2H§;
         _loc2_.m_body = this;
         if(_loc2_.§'[§ > 0)
         {
            this.§,C§();
         }
         this.m_world.§&W§ |= b2World.§?S§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§-5§(_loc3_);
      }
      
      public function §@Y§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§'e§ = null;
         if(this.m_world.§%X§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§&c§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§=!T§ = param1.§=!T§;
               }
               else
               {
                  this.§&c§ = param1.§=!T§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§=!T§;
         }
         var _loc5_:b2ContactEdge = this.§+!D§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§<!C§;
            _loc5_ = _loc5_.§^T§;
            _loc7_ = _loc6_.§!^§();
            _loc8_ = _loc6_.§"P§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§<!8§.§>s§(_loc6_);
            }
         }
         if(this.§&W§ & b2internal::#D)
         {
            _loc9_ = this.m_world.§<!8§.§;t§;
            param1.§'!F§(_loc9_);
         }
         param1.§>s§();
         param1.m_body = null;
         param1.§=!T§ = null;
         --this.§2H§;
         this.§,C§();
      }
      
      public function §,F§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§%X§() == true)
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
         var _loc6_:§'e§ = this.m_world.§<!8§.§;t§;
         _loc3_ = this.§&c§;
         while(_loc3_)
         {
            _loc3_.§7y§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§=!T§;
         }
         this.m_world.§<!8§.§%!"§();
      }
      
      public function §4!J§(param1:b2Transform) : void
      {
         this.§,F§(param1.position,param1.GetAngle());
      }
      
      public function §6!a§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §"M§(param1:b2Vec2) : void
      {
         this.§,F§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §49§(param1:Number) : void
      {
         this.§,F§(this.GetPosition(),param1);
      }
      
      public function §^l§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §6A§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§%P§ == b2_staticBody)
         {
            return;
         }
         this.§#P§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§#P§;
      }
      
      public function §?O§(param1:Number) : void
      {
         if(this.§%P§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §0!L§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §5P§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§7"§();
         _loc1_.§^!C§ = (this.§&W§ & b2internal::%!O) == b2internal::%!O;
         _loc1_.angle = this.GetAngle();
         _loc1_.§9+§ = this.§@u§;
         _loc1_.§4O§ = this.m_angularVelocity;
         _loc1_.§]!?§ = (this.§&W§ & b2internal::1F) == b2internal::1F;
         _loc1_.§7!b§ = (this.§&W§ & b2internal::=!G) == b2internal::=!G;
         _loc1_.§,!G§ = (this.§&W§ & b2internal::;=) == b2internal::;=;
         _loc1_.§1[§ = this.§4h§;
         _loc1_.§ for§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§2=§ = this.GetUserData();
         return _loc1_;
      }
      
      public function § !M§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§%P§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§%!3§.x += param1.x;
         this.§%!3§.y += param1.y;
         this.§24§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §'!P§(param1:Number) : void
      {
         if(this.§%P§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§24§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§%P§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§#P§.x += this.§!q§ * param1.x;
         this.§#P§.y += this.§!q§ * param1.y;
         this.m_angularVelocity += this.§&!Y§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function § u§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§0!L§();
         var _loc4_:b2Vec2 = this.§^l§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§4'§(this.§5P§());
         var _loc8_:b2Fixture = _loc5_.§&c§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§=!T§;
               if(_loc7_)
               {
                  _loc7_.§=!T§ = _loc13_;
               }
               else
               {
                  _loc5_.§&c§ = _loc13_;
               }
               --_loc5_.§2H§;
               _loc8_.§=!T§ = _loc6_.§&c§;
               _loc6_.§&c§ = _loc8_;
               ++_loc6_.§2H§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§=!T§;
            }
         }
         _loc5_.§,C§();
         _loc6_.§,C§();
         var _loc9_:b2Vec2 = _loc5_.§^l§();
         var _loc10_:b2Vec2 = _loc6_.§^l§();
         var _loc11_:b2Vec2 = b2Math.§8!+§(_loc2_,b2Math.§39§(_loc3_,b2Math.§2V§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§8!+§(_loc2_,b2Math.§39§(_loc3_,b2Math.§2V§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§?O§(_loc3_);
         _loc6_.§?O§(_loc3_);
         _loc5_.§=+§();
         _loc6_.§=+§();
         return _loc6_;
      }
      
      public function §`!O§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§&c§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§=!T§;
            --param1.§2H§;
            _loc2_.§=!T§ = this.§&c§;
            this.§&c§ = _loc2_;
            ++this.§2H§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§2H§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§^l§();
         var _loc6_:b2Vec2 = _loc4_.§^l§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§0!L§();
         var _loc10_:Number = _loc4_.§0!L§();
         _loc3_.§,C§();
         this.§=+§();
      }
      
      public function GetMass() : Number
      {
         return this.§[J§;
      }
      
      public function §0n§() : Number
      {
         return this.§,W§;
      }
      
      public function §'!X§(param1:b2MassData) : void
      {
         param1.§6!O§ = this.§[J§;
         param1.§9A§ = this.§,W§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §]!d§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§%X§() == false);
         if(this.m_world.§%X§() == true)
         {
            return;
         }
         if(this.§%P§ != b2_dynamicBody)
         {
            return;
         }
         this.§!q§ = 0;
         this.§,W§ = 0;
         this.§&!Y§ = 0;
         this.§[J§ = param1.§6!O§;
         if(this.§[J§ <= 0)
         {
            this.§[J§ = 1;
         }
         this.§!q§ = 1 / this.§[J§;
         if(param1.§9A§ > 0 && (this.§&W§ & b2internal::1F) == 0)
         {
            this.§,W§ = param1.§9A§ - this.§[J§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§&!Y§ = 1 / this.§,W§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§]!O§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§#P§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§#P§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §,C§() : void
      {
         var _loc4_:b2MassData = null;
         this.§[J§ = 0;
         this.§!q§ = 0;
         this.§,W§ = 0;
         this.§&!Y§ = 0;
         this.m_sweep.localCenter.§0'§();
         if(this.§%P§ == b2_staticBody || this.§%P§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§&D§(0,0);
         var _loc2_:b2Fixture = this.§&c§;
         while(_loc2_)
         {
            if(_loc2_.§'[§ != 0)
            {
               _loc4_ = _loc2_.§'!X§();
               this.§[J§ += _loc4_.§6!O§;
               _loc1_.x += _loc4_.center.x * _loc4_.§6!O§;
               _loc1_.y += _loc4_.center.y * _loc4_.§6!O§;
               this.§,W§ += _loc4_.§9A§;
            }
            _loc2_ = _loc2_.§=!T§;
         }
         if(this.§[J§ > 0)
         {
            this.§!q§ = 1 / this.§[J§;
            _loc1_.x *= this.§!q§;
            _loc1_.y *= this.§!q§;
         }
         else
         {
            this.§[J§ = 1;
            this.§!q§ = 1;
         }
         if(this.§,W§ > 0 && (this.§&W§ & b2internal::1F) == 0)
         {
            this.§,W§ -= this.§[J§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§,W§ *= this.§ !L§;
            b2Settings.b2Assert(this.§,W§ > 0);
            this.§&!Y§ = 1 / this.§,W§;
         }
         else
         {
            this.§,W§ = 0;
            this.§&!Y§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§]!O§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§#P§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§#P§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §[@§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§3D§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§=!"§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§"!O§(this.m_xf.R,param1);
      }
      
      public function §]!%§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§#P§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§#P§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §'!Z§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§#P§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§#P§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §+!N§() : Number
      {
         return this.§4h§;
      }
      
      public function §^!L§(param1:Number) : void
      {
         this.§4h§ = param1;
      }
      
      public function §2D§() : Number
      {
         return this.§@u§;
      }
      
      public function §+!@§(param1:Number) : void
      {
         this.§@u§ = param1;
      }
      
      public function §[_§(param1:uint) : void
      {
         if(this.§%P§ == param1)
         {
            return;
         }
         this.§%P§ = param1;
         this.§,C§();
         if(this.§%P§ == b2_staticBody)
         {
            this.§#P§.§0'§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§%!3§.§0'§();
         this.§24§ = 0;
         var _loc2_:b2ContactEdge = this.§+!D§;
         while(_loc2_)
         {
            _loc2_.§<!C§.§#<§();
            _loc2_ = _loc2_.§^T§;
         }
      }
      
      public function §7"§() : uint
      {
         return this.§%P§;
      }
      
      public function §0!T§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&W§ |= b2internal::=!G;
         }
         else
         {
            this.§&W§ &= ~b2internal::=!G;
         }
      }
      
      public function §^R§() : Boolean
      {
         return (this.§&W§ & b2internal::=!G) == b2internal::=!G;
      }
      
      public function §&!b§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&W§ |= b2internal::%!O;
         }
         else
         {
            this.§&W§ &= ~b2internal::%!O;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&W§ |= b2internal::;=;
            this.§<D§ = 0;
         }
         else
         {
            this.§&W§ &= ~b2internal::;=;
            this.§<D§ = 0;
            this.§#P§.§0'§();
            this.m_angularVelocity = 0;
            this.§%!3§.§0'§();
            this.§24§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§&W§ & b2internal::;=) == b2internal::;=;
      }
      
      public function §+S§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&W§ |= b2internal::1F;
         }
         else
         {
            this.§&W§ &= ~b2internal::1F;
         }
         this.§,C§();
      }
      
      public function §[f§() : Boolean
      {
         return (this.§&W§ & b2internal::1F) == b2internal::1F;
      }
      
      public function §6`§(param1:Boolean) : void
      {
         var _loc2_:§'e§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§5!`§())
         {
            return;
         }
         if(param1)
         {
            this.§&W§ |= b2internal::#D;
            _loc2_ = this.m_world.§<!8§.§;t§;
            _loc3_ = this.§&c§;
            while(_loc3_)
            {
               _loc3_.§<R§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§=!T§;
            }
         }
         else
         {
            this.§&W§ &= ~b2internal::#D;
            _loc2_ = this.m_world.§<!8§.§;t§;
            _loc3_ = this.§&c§;
            while(_loc3_)
            {
               _loc3_.§'!F§(_loc2_);
               _loc3_ = _loc3_.§=!T§;
            }
            _loc4_ = this.§+!D§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§^T§;
               this.m_world.§<!8§.§>s§(_loc5_.§<!C§);
            }
            this.§+!D§ = null;
         }
      }
      
      public function §5!`§() : Boolean
      {
         return (this.§&W§ & b2internal::#D) == b2internal::#D;
      }
      
      public function §#h§() : Boolean
      {
         return (this.§&W§ & b2internal::%!O) == b2internal::%!O;
      }
      
      public function §09§() : b2Fixture
      {
         return this.§&c§;
      }
      
      public function §>§() : b2JointEdge
      {
         return this.§1=§;
      }
      
      public function §,!§() : b2ControllerEdge
      {
         return this.§<!X§;
      }
      
      public function §+!1§() : b2ContactEdge
      {
         return this.§+!D§;
      }
      
      public function §=t§() : b2Body
      {
         return this.§=!T§;
      }
      
      public function GetUserData() : *
      {
         return this.§`!0§;
      }
      
      public function §^!M§(param1:*) : void
      {
         this.§`!0§ = param1;
      }
      
      public function §,R§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §=+§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §+!5§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§'e§ = this.m_world.§<!8§.§;t§;
         _loc4_ = this.§&c§;
         while(_loc4_)
         {
            _loc4_.§7y§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§=!T§;
         }
      }
      
      b2internal function § L§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §"7§(param1:b2Body) : Boolean
      {
         if(this.§%P§ != b2_dynamicBody && param1.§%P§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§1=§;
         while(_loc2_)
         {
            if(_loc2_.§5d§ == param1)
            {
               if(_loc2_.§3C§.§?4§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§^T§;
         }
         return true;
      }
      
      b2internal function §<!&§(param1:Number) : void
      {
         this.m_sweep.§<!&§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§ L§();
      }
   }
}
