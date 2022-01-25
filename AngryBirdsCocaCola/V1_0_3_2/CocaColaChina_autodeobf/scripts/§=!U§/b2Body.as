package §=!U§
{
   import §"!R§.b2Settings;
   import §"!R§.b2internal;
   import §'&§.b2EdgeShape;
   import §'&§.b2MassData;
   import §'&§.b2Shape;
   import §2!2§.b2ControllerEdge;
   import §4N§.b2JointEdge;
   import §;!7§.§>c§;
   import §@M§.b2Contact;
   import §@M§.b2ContactEdge;
   import §implements§.b2Mat22;
   import §implements§.b2Math;
   import §implements§.b2Sweep;
   import §implements§.b2Transform;
   import §implements§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §;!X§:b2Transform = new b2Transform();
      
      b2internal static var §#!]§:uint = 1;
      
      b2internal static var §]!3§:uint = 2;
      
      b2internal static var §1!,§:uint = 4;
      
      b2internal static var §2;§:uint = 8;
      
      b2internal static var §=4§:uint = 16;
      
      b2internal static var §<!1§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §"_§:uint;
      
      b2internal var §;>§:int;
      
      b2internal var §"T§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §,!@§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §"-§:b2Vec2;
      
      b2internal var §>E§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §-s§:b2Body;
      
      b2internal var §9`§:b2Body;
      
      b2internal var §&,§:b2Fixture;
      
      b2internal var §1!N§:int;
      
      b2internal var §,h§:b2ControllerEdge;
      
      b2internal var §%#§:int;
      
      b2internal var §6R§:b2JointEdge;
      
      b2internal var §,!d§:b2ContactEdge;
      
      b2internal var §9^§:Number;
      
      b2internal var §1!G§:Number;
      
      b2internal var §#l§:Number;
      
      b2internal var §+$§:Number;
      
      b2internal var §?S§:Number;
      
      b2internal var §2#§:Number;
      
      b2internal var §8!G§:Number;
      
      b2internal var §",§:Number;
      
      private var §9!M§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§,!@§ = new b2Vec2();
         this.§"-§ = new b2Vec2();
         super();
         this.§"_§ = 0;
         if(param1.§0-§)
         {
            this.§"_§ |= b2internal::2;;
         }
         if(param1.§9!;§)
         {
            this.§"_§ |= b2internal::=4;
         }
         if(param1.§,V§)
         {
            this.§"_§ |= b2internal::1!,;
         }
         if(param1.§3!6§)
         {
            this.§"_§ |= b2internal::]!3;
         }
         if(param1.§]!5§)
         {
            this.§"_§ |= b2internal::<!1;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§^!&§();
         this.m_sweep.§@!7§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§6R§ = null;
         this.§,h§ = null;
         this.§,!d§ = null;
         this.§%#§ = 0;
         this.§-s§ = null;
         this.§9`§ = null;
         this.§,!@§.SetV(param1.§]$§);
         this.m_angularVelocity = param1.§?M§;
         this.§2#§ = param1.§';§;
         this.§8!G§ = param1.§,w§;
         this.§"-§.Set(0,0);
         this.§>E§ = 0;
         this.§",§ = 0;
         this.§;>§ = param1.type;
         if(this.§;>§ == b2_dynamicBody)
         {
            this.§9^§ = 1;
            this.§1!G§ = 1;
         }
         else
         {
            this.§9^§ = 0;
            this.§1!G§ = 0;
         }
         this.§#l§ = 0;
         this.§+$§ = 0;
         this.§?S§ = param1.§`g§;
         this.§9!M§ = param1.§`!`§;
         this.§&,§ = null;
         this.§1!N§ = 0;
      }
      
      private function §+e§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§3V§().y,param2.§3V§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§@>§(_loc5_,param2.§3V§());
         _loc6_ = b2Math.§^!J§(_loc6_,param2.§-k§());
         _loc6_ = b2Math.§@>§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§?9§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§?9§(param1.§3V§(),param2.§3V§())).Normalize();
         var _loc8_:* = b2Math.§>i§(param1.§3V§(),param2.§-k§()) > 0;
         param1.§1^§(param2,_loc6_,_loc7_,_loc8_);
         param2.§0!O§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §"q§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§>c§ = null;
         if(this.m_world.§"0§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§0!^§(this,this.m_xf,param1);
         if(this.§"_§ & b2internal::<!1)
         {
            _loc3_ = this.m_world.§0w§.§6M§;
            _loc2_.§]!0§(_loc3_,this.m_xf);
         }
         _loc2_.§9`§ = this.§&,§;
         this.§&,§ = _loc2_;
         ++this.§1!N§;
         _loc2_.m_body = this;
         if(_loc2_.§62§ > 0)
         {
            this.§4!>§();
         }
         this.m_world.§"_§ |= b2World.§;!$§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§"q§(_loc3_);
      }
      
      public function §+T§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§>c§ = null;
         if(this.m_world.§"0§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§&,§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§9`§ = param1.§9`§;
               }
               else
               {
                  this.§&,§ = param1.§9`§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§9`§;
         }
         var _loc5_:b2ContactEdge = this.§,!d§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§#^§;
            _loc5_ = _loc5_.§>C§;
            _loc7_ = _loc6_.§ !N§();
            _loc8_ = _loc6_.§^9§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§0w§.§9!K§(_loc6_);
            }
         }
         if(this.§"_§ & b2internal::<!1)
         {
            _loc9_ = this.m_world.§0w§.§6M§;
            param1.§8!V§(_loc9_);
         }
         param1.§9!K§();
         param1.m_body = null;
         param1.§9`§ = null;
         --this.§1!N§;
         this.§4!>§();
      }
      
      public function §^!Y§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§"0§() == true)
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
         var _loc6_:§>c§ = this.m_world.§0w§.§6M§;
         _loc3_ = this.§&,§;
         while(_loc3_)
         {
            _loc3_.§[! §(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§9`§;
         }
         this.m_world.§0w§.§<P§();
      }
      
      public function §7!;§(param1:b2Transform) : void
      {
         this.§^!Y§(param1.position,param1.GetAngle());
      }
      
      public function §'_§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §-y§(param1:b2Vec2) : void
      {
         this.§^!Y§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §+!O§(param1:Number) : void
      {
         this.§^!Y§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §&!D§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§;>§ == b2_staticBody)
         {
            return;
         }
         this.§,!@§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§,!@§;
      }
      
      public function §0z§(param1:Number) : void
      {
         if(this.§;>§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §@J§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§@e§();
         _loc1_.§,V§ = (this.§"_§ & b2internal::1!,) == b2internal::1!,;
         _loc1_.angle = this.GetAngle();
         _loc1_.§,w§ = this.§8!G§;
         _loc1_.§?M§ = this.m_angularVelocity;
         _loc1_.§9!;§ = (this.§"_§ & b2internal::=4) == b2internal::=4;
         _loc1_.§0-§ = (this.§"_§ & b2internal::2;) == b2internal::2;;
         _loc1_.§3!6§ = (this.§"_§ & b2internal::]!3) == b2internal::]!3;
         _loc1_.§';§ = this.§2#§;
         _loc1_.§]$§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§`!`§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §'!?§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§;>§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§"-§.x += param1.x;
         this.§"-§.y += param1.y;
         this.§>E§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §^j§(param1:Number) : void
      {
         if(this.§;>§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§>E§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§;>§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§,!@§.x += this.§1!G§ * param1.x;
         this.§,!@§.y += this.§1!G§ * param1.y;
         this.m_angularVelocity += this.§+$§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §56§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§6G§(this.§@J§());
         var _loc8_:b2Fixture = _loc5_.§&,§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§9`§;
               if(_loc7_)
               {
                  _loc7_.§9`§ = _loc13_;
               }
               else
               {
                  _loc5_.§&,§ = _loc13_;
               }
               --_loc5_.§1!N§;
               _loc8_.§9`§ = _loc6_.§&,§;
               _loc6_.§&,§ = _loc8_;
               ++_loc6_.§1!N§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§9`§;
            }
         }
         _loc5_.§4!>§();
         _loc6_.§4!>§();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§?9§(_loc2_,b2Math.§"!L§(_loc3_,b2Math.§^!J§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§?9§(_loc2_,b2Math.§"!L§(_loc3_,b2Math.§^!J§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§0z§(_loc3_);
         _loc6_.§0z§(_loc3_);
         _loc5_.§%!G§();
         _loc6_.§%!G§();
         return _loc6_;
      }
      
      public function § 8§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§&,§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§9`§;
            --param1.§1!N§;
            _loc2_.§9`§ = this.§&,§;
            this.§&,§ = _loc2_;
            ++this.§1!N§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§1!N§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§4!>§();
         this.§%!G§();
      }
      
      public function GetMass() : Number
      {
         return this.§9^§;
      }
      
      public function §5p§() : Number
      {
         return this.§#l§;
      }
      
      public function §6d§(param1:b2MassData) : void
      {
         param1.§3!Z§ = this.§9^§;
         param1.§=!#§ = this.§#l§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §%i§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§"0§() == false);
         if(this.m_world.§"0§() == true)
         {
            return;
         }
         if(this.§;>§ != b2_dynamicBody)
         {
            return;
         }
         this.§1!G§ = 0;
         this.§#l§ = 0;
         this.§+$§ = 0;
         this.§9^§ = param1.§3!Z§;
         if(this.§9^§ <= 0)
         {
            this.§9^§ = 1;
         }
         this.§1!G§ = 1 / this.§9^§;
         if(param1.§=!#§ > 0 && (this.§"_§ & b2internal::=4) == 0)
         {
            this.§#l§ = param1.§=!#§ - this.§9^§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§+$§ = 1 / this.§#l§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§'!2§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§,!@§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§,!@§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §4!>§() : void
      {
         var _loc4_:b2MassData = null;
         this.§9^§ = 0;
         this.§1!G§ = 0;
         this.§#l§ = 0;
         this.§+$§ = 0;
         this.m_sweep.localCenter.§^!&§();
         if(this.§;>§ == b2_staticBody || this.§;>§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§2!$§(0,0);
         var _loc2_:b2Fixture = this.§&,§;
         while(_loc2_)
         {
            if(_loc2_.§62§ != 0)
            {
               _loc4_ = _loc2_.§6d§();
               this.§9^§ += _loc4_.§3!Z§;
               _loc1_.x += _loc4_.center.x * _loc4_.§3!Z§;
               _loc1_.y += _loc4_.center.y * _loc4_.§3!Z§;
               this.§#l§ += _loc4_.§=!#§;
            }
            _loc2_ = _loc2_.§9`§;
         }
         if(this.§9^§ > 0)
         {
            this.§1!G§ = 1 / this.§9^§;
            _loc1_.x *= this.§1!G§;
            _loc1_.y *= this.§1!G§;
         }
         else
         {
            this.§9^§ = 1;
            this.§1!G§ = 1;
         }
         if(this.§#l§ > 0 && (this.§"_§ & b2internal::=4) == 0)
         {
            this.§#l§ -= this.§9^§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§#l§ *= this.§?S§;
            b2Settings.b2Assert(this.§#l§ > 0);
            this.§+$§ = 1 / this.§#l§;
         }
         else
         {
            this.§#l§ = 0;
            this.§+$§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§'!2§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§,!@§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§,!@§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §@q§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`e§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§;5§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§4![§(this.m_xf.R,param1);
      }
      
      public function §-l§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§,!@§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§,!@§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §5!§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§,!@§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§,!@§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §&!U§() : Number
      {
         return this.§2#§;
      }
      
      public function §-!Z§(param1:Number) : void
      {
         this.§2#§ = param1;
      }
      
      public function §`]§() : Number
      {
         return this.§8!G§;
      }
      
      public function §"!Z§(param1:Number) : void
      {
         this.§8!G§ = param1;
      }
      
      public function §[!P§(param1:uint) : void
      {
         if(this.§;>§ == param1)
         {
            return;
         }
         this.§;>§ = param1;
         this.§4!>§();
         if(this.§;>§ == b2_staticBody)
         {
            this.§,!@§.§^!&§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§"-§.§^!&§();
         this.§>E§ = 0;
         var _loc2_:b2ContactEdge = this.§,!d§;
         while(_loc2_)
         {
            _loc2_.§#^§.§%!=§();
            _loc2_ = _loc2_.§>C§;
         }
      }
      
      public function §@e§() : uint
      {
         return this.§;>§;
      }
      
      public function §&!§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"_§ |= b2internal::2;;
         }
         else
         {
            this.§"_§ &= ~b2internal::2;;
         }
      }
      
      public function §6u§() : Boolean
      {
         return (this.§"_§ & b2internal::2;) == b2internal::2;;
      }
      
      public function §[F§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"_§ |= b2internal::1!,;
         }
         else
         {
            this.§"_§ &= ~b2internal::1!,;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"_§ |= b2internal::]!3;
            this.§",§ = 0;
         }
         else
         {
            this.§"_§ &= ~b2internal::]!3;
            this.§",§ = 0;
            this.§,!@§.§^!&§();
            this.m_angularVelocity = 0;
            this.§"-§.§^!&§();
            this.§>E§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§"_§ & b2internal::]!3) == b2internal::]!3;
      }
      
      public function §1>§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"_§ |= b2internal::=4;
         }
         else
         {
            this.§"_§ &= ~b2internal::=4;
         }
         this.§4!>§();
      }
      
      public function §,!]§() : Boolean
      {
         return (this.§"_§ & b2internal::=4) == b2internal::=4;
      }
      
      public function §=P§(param1:Boolean) : void
      {
         var _loc2_:§>c§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§]!_§())
         {
            return;
         }
         if(param1)
         {
            this.§"_§ |= b2internal::<!1;
            _loc2_ = this.m_world.§0w§.§6M§;
            _loc3_ = this.§&,§;
            while(_loc3_)
            {
               _loc3_.§]!0§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§9`§;
            }
         }
         else
         {
            this.§"_§ &= ~b2internal::<!1;
            _loc2_ = this.m_world.§0w§.§6M§;
            _loc3_ = this.§&,§;
            while(_loc3_)
            {
               _loc3_.§8!V§(_loc2_);
               _loc3_ = _loc3_.§9`§;
            }
            _loc4_ = this.§,!d§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§>C§;
               this.m_world.§0w§.§9!K§(_loc5_.§#^§);
            }
            this.§,!d§ = null;
         }
      }
      
      public function §]!_§() : Boolean
      {
         return (this.§"_§ & b2internal::<!1) == b2internal::<!1;
      }
      
      public function each() : Boolean
      {
         return (this.§"_§ & b2internal::1!,) == b2internal::1!,;
      }
      
      public function §7!c§() : b2Fixture
      {
         return this.§&,§;
      }
      
      public function §52§() : b2JointEdge
      {
         return this.§6R§;
      }
      
      public function §1!7§() : b2ControllerEdge
      {
         return this.§,h§;
      }
      
      public function §8!=§() : b2ContactEdge
      {
         return this.§,!d§;
      }
      
      public function §^r§() : b2Body
      {
         return this.§9`§;
      }
      
      public function GetUserData() : *
      {
         return this.§9!M§;
      }
      
      public function §=!=§(param1:*) : void
      {
         this.§9!M§ = param1;
      }
      
      public function §=9§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §%!G§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §;!X§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§>c§ = this.m_world.§0w§.§6M§;
         _loc4_ = this.§&,§;
         while(_loc4_)
         {
            _loc4_.§[! §(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§9`§;
         }
      }
      
      b2internal function §<8§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §]=§(param1:b2Body) : Boolean
      {
         if(this.§;>§ != b2_dynamicBody && param1.§;>§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§6R§;
         while(_loc2_)
         {
            if(_loc2_.§0!=§ == param1)
            {
               if(_loc2_.§&C§.§<!M§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§>C§;
         }
         return true;
      }
      
      b2internal function §`U§(param1:Number) : void
      {
         this.m_sweep.§`U§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§<8§();
      }
   }
}
