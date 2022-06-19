package §`j§
{
   import §&U§.b2EdgeShape;
   import §&U§.b2MassData;
   import §&U§.b2Shape;
   import §0!G§.b2Mat22;
   import §0!G§.b2Math;
   import §0!G§.b2Sweep;
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!+§.b2ControllerEdge;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §8Y§.b2Contact;
   import §8Y§.b2ContactEdge;
   import §9"§.§>![§;
   import §[!8§.b2JointEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §6z§:b2Transform = new b2Transform();
      
      b2internal static var §finally§:uint = 1;
      
      b2internal static var §=!§:uint = 2;
      
      b2internal static var §&!?§:uint = 4;
      
      b2internal static var §>!N§:uint = 8;
      
      b2internal static var §%!0§:uint = 16;
      
      b2internal static var §&!N§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §@x§:uint;
      
      b2internal var §8!J§:int;
      
      b2internal var §^V§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §,?§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §1!1§:b2Vec2;
      
      b2internal var §3!S§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §8`§:b2Body;
      
      b2internal var §#!&§:b2Body;
      
      b2internal var §#j§:b2Fixture;
      
      b2internal var §+![§:int;
      
      b2internal var §6V§:b2ControllerEdge;
      
      b2internal var §+!V§:int;
      
      b2internal var §1v§:b2JointEdge;
      
      b2internal var §=-§:b2ContactEdge;
      
      b2internal var §3!7§:Number;
      
      b2internal var §#!D§:Number;
      
      b2internal var §8S§:Number;
      
      b2internal var §?8§:Number;
      
      b2internal var §2!&§:Number;
      
      b2internal var §-Z§:Number;
      
      b2internal var §3p§:Number;
      
      b2internal var §&Q§:Number;
      
      private var §'8§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§,?§ = new b2Vec2();
         this.§1!1§ = new b2Vec2();
         super();
         this.§@x§ = 0;
         if(param1.§<!;§)
         {
            this.§@x§ |= b2internal::>!N;
         }
         if(param1.§<K§)
         {
            this.§@x§ |= b2internal::%!0;
         }
         if(param1.§9W§)
         {
            this.§@x§ |= b2internal::&!?;
         }
         if(param1.§0-§)
         {
            this.§@x§ |= b2internal::=!;
         }
         if(param1.§3?§)
         {
            this.§@x§ |= b2internal::&!N;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§3a§();
         this.m_sweep.§]p§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§1v§ = null;
         this.§6V§ = null;
         this.§=-§ = null;
         this.§+!V§ = 0;
         this.§8`§ = null;
         this.§#!&§ = null;
         this.§,?§.SetV(param1.§^!T§);
         this.m_angularVelocity = param1.§6s§;
         this.§-Z§ = param1.§+!9§;
         this.§3p§ = param1.§?!'§;
         this.§1!1§.Set(0,0);
         this.§3!S§ = 0;
         this.§&Q§ = 0;
         this.§8!J§ = param1.type;
         if(this.§8!J§ == b2_dynamicBody)
         {
            this.§3!7§ = 1;
            this.§#!D§ = 1;
         }
         else
         {
            this.§3!7§ = 0;
            this.§#!D§ = 0;
         }
         this.§8S§ = 0;
         this.§?8§ = 0;
         this.§2!&§ = param1.§'!>§;
         this.§'8§ = param1.§4!E§;
         this.§#j§ = null;
         this.§+![§ = 0;
      }
      
      private function §6J§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§<N§().y,param2.§<N§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§ X§(_loc5_,param2.§<N§());
         _loc6_ = b2Math.§4_§(_loc6_,param2.§3c§());
         _loc6_ = b2Math.§ X§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§do §(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§do §(param1.§<N§(),param2.§<N§())).Normalize();
         var _loc8_:* = b2Math.static(param1.§<N§(),param2.§3c§()) > 0;
         param1.§ !-§(param2,_loc6_,_loc7_,_loc8_);
         param2.§1!H§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §!"§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§>![§ = null;
         if(this.m_world.§'E§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§>y§(this,this.m_xf,param1);
         if(this.§@x§ & b2internal::&!N)
         {
            _loc3_ = this.m_world.§7-§.§;!=§;
            _loc2_.§case§(_loc3_,this.m_xf);
         }
         _loc2_.§#!&§ = this.§#j§;
         this.§#j§ = _loc2_;
         ++this.§+![§;
         _loc2_.m_body = this;
         if(_loc2_.§4U§ > 0)
         {
            this.§&=§();
         }
         this.m_world.§@x§ |= b2World.§5S§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§!"§(_loc3_);
      }
      
      public function § each§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§>![§ = null;
         if(this.m_world.§'E§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§#j§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§#!&§ = param1.§#!&§;
               }
               else
               {
                  this.§#j§ = param1.§#!&§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§#!&§;
         }
         var _loc5_:b2ContactEdge = this.§=-§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§"!$§;
            _loc5_ = _loc5_.§%Y§;
            _loc7_ = _loc6_.§&^§();
            _loc8_ = _loc6_.§7I§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§7-§.§;@§(_loc6_);
            }
         }
         if(this.§@x§ & b2internal::&!N)
         {
            _loc9_ = this.m_world.§7-§.§;!=§;
            param1.§^<§(_loc9_);
         }
         param1.§;@§();
         param1.m_body = null;
         param1.§#!&§ = null;
         --this.§+![§;
         this.§&=§();
      }
      
      public function §,R§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§'E§() == true)
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
         var _loc6_:§>![§ = this.m_world.§7-§.§;!=§;
         _loc3_ = this.§#j§;
         while(_loc3_)
         {
            _loc3_.§=!P§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§#!&§;
         }
         this.m_world.§7-§.§&k§();
      }
      
      public function §!!]§(param1:b2Transform) : void
      {
         this.§,R§(param1.position,param1.GetAngle());
      }
      
      public function §4!P§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §%!U§(param1:b2Vec2) : void
      {
         this.§,R§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function § !K§(param1:Number) : void
      {
         this.§,R§(this.GetPosition(),param1);
      }
      
      public function §2!K§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §8c§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§8!J§ == b2_staticBody)
         {
            return;
         }
         this.§,?§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§,?§;
      }
      
      public function §4K§(param1:Number) : void
      {
         if(this.§8!J§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §=l§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§"!M§();
         _loc1_.§9W§ = (this.§@x§ & b2internal::&!?) == b2internal::&!?;
         _loc1_.angle = this.GetAngle();
         _loc1_.§?!'§ = this.§3p§;
         _loc1_.§6s§ = this.m_angularVelocity;
         _loc1_.§<K§ = (this.§@x§ & b2internal::%!0) == b2internal::%!0;
         _loc1_.§<!;§ = (this.§@x§ & b2internal::>!N) == b2internal::>!N;
         _loc1_.§0-§ = (this.§@x§ & b2internal::=!) == b2internal::=!;
         _loc1_.§+!9§ = this.§-Z§;
         _loc1_.§^!T§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§4!E§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §"^§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§8!J§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§1!1§.x += param1.x;
         this.§1!1§.y += param1.y;
         this.§3!S§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §?§(param1:Number) : void
      {
         if(this.§8!J§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§3!S§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§8!J§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§,?§.x += this.§#!D§ * param1.x;
         this.§,?§.y += this.§#!D§ * param1.y;
         this.m_angularVelocity += this.§?8§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function § '§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§2!K§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§#f§(this.§=l§());
         var _loc8_:b2Fixture = _loc5_.§#j§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§#!&§;
               if(_loc7_)
               {
                  _loc7_.§#!&§ = _loc13_;
               }
               else
               {
                  _loc5_.§#j§ = _loc13_;
               }
               --_loc5_.§+![§;
               _loc8_.§#!&§ = _loc6_.§#j§;
               _loc6_.§#j§ = _loc8_;
               ++_loc6_.§+![§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§#!&§;
            }
         }
         _loc5_.§&=§();
         _loc6_.§&=§();
         var _loc9_:b2Vec2 = _loc5_.§2!K§();
         var _loc10_:b2Vec2 = _loc6_.§2!K§();
         var _loc11_:b2Vec2 = b2Math.§do §(_loc2_,b2Math.§28§(_loc3_,b2Math.§4_§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§do §(_loc2_,b2Math.§28§(_loc3_,b2Math.§4_§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§4K§(_loc3_);
         _loc6_.§4K§(_loc3_);
         _loc5_.§%a§();
         _loc6_.§%a§();
         return _loc6_;
      }
      
      public function §4r§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§#j§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§#!&§;
            --param1.§+![§;
            _loc2_.§#!&§ = this.§#j§;
            this.§#j§ = _loc2_;
            ++this.§+![§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§+![§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§2!K§();
         var _loc6_:b2Vec2 = _loc4_.§2!K§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§&=§();
         this.§%a§();
      }
      
      public function GetMass() : Number
      {
         return this.§3!7§;
      }
      
      public function §,Q§() : Number
      {
         return this.§8S§;
      }
      
      public function §%`§(param1:b2MassData) : void
      {
         param1.§6O§ = this.§3!7§;
         param1.§`$§ = this.§8S§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §,!O§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§'E§() == false);
         if(this.m_world.§'E§() == true)
         {
            return;
         }
         if(this.§8!J§ != b2_dynamicBody)
         {
            return;
         }
         this.§#!D§ = 0;
         this.§8S§ = 0;
         this.§?8§ = 0;
         this.§3!7§ = param1.§6O§;
         if(this.§3!7§ <= 0)
         {
            this.§3!7§ = 1;
         }
         this.§#!D§ = 1 / this.§3!7§;
         if(param1.§`$§ > 0 && (this.§@x§ & b2internal::%!0) == 0)
         {
            this.§8S§ = param1.§`$§ - this.§3!7§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§?8§ = 1 / this.§8S§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§@E§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§,?§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§,?§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §&=§() : void
      {
         var _loc4_:b2MassData = null;
         this.§3!7§ = 0;
         this.§#!D§ = 0;
         this.§8S§ = 0;
         this.§?8§ = 0;
         this.m_sweep.localCenter.§3a§();
         if(this.§8!J§ == b2_staticBody || this.§8!J§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§?!<§(0,0);
         var _loc2_:b2Fixture = this.§#j§;
         while(_loc2_)
         {
            if(_loc2_.§4U§ != 0)
            {
               _loc4_ = _loc2_.§%`§();
               this.§3!7§ += _loc4_.§6O§;
               _loc1_.x += _loc4_.center.x * _loc4_.§6O§;
               _loc1_.y += _loc4_.center.y * _loc4_.§6O§;
               this.§8S§ += _loc4_.§`$§;
            }
            _loc2_ = _loc2_.§#!&§;
         }
         if(this.§3!7§ > 0)
         {
            this.§#!D§ = 1 / this.§3!7§;
            _loc1_.x *= this.§#!D§;
            _loc1_.y *= this.§#!D§;
         }
         else
         {
            this.§3!7§ = 1;
            this.§#!D§ = 1;
         }
         if(this.§8S§ > 0 && (this.§@x§ & b2internal::%!0) == 0)
         {
            this.§8S§ -= this.§3!7§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§8S§ *= this.§2!&§;
            b2Settings.b2Assert(this.§8S§ > 0);
            this.§?8§ = 1 / this.§8S§;
         }
         else
         {
            this.§8S§ = 0;
            this.§?8§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§@E§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§,?§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§,?§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §!!%§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§2!3§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§;!B§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§6Y§(this.m_xf.R,param1);
      }
      
      public function §7!'§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§,?§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§,?§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §=!>§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§,?§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§,?§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §1!_§() : Number
      {
         return this.§-Z§;
      }
      
      public function §%Z§(param1:Number) : void
      {
         this.§-Z§ = param1;
      }
      
      public function §5d§() : Number
      {
         return this.§3p§;
      }
      
      public function §3+§(param1:Number) : void
      {
         this.§3p§ = param1;
      }
      
      public function §^m§(param1:uint) : void
      {
         if(this.§8!J§ == param1)
         {
            return;
         }
         this.§8!J§ = param1;
         this.§&=§();
         if(this.§8!J§ == b2_staticBody)
         {
            this.§,?§.§3a§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§1!1§.§3a§();
         this.§3!S§ = 0;
         var _loc2_:b2ContactEdge = this.§=-§;
         while(_loc2_)
         {
            _loc2_.§"!$§.§@!0§();
            _loc2_ = _loc2_.§%Y§;
         }
      }
      
      public function §"!M§() : uint
      {
         return this.§8!J§;
      }
      
      public function §-!!§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@x§ |= b2internal::>!N;
         }
         else
         {
            this.§@x§ &= ~b2internal::>!N;
         }
      }
      
      public function § c§() : Boolean
      {
         return (this.§@x§ & b2internal::>!N) == b2internal::>!N;
      }
      
      public function §8b§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@x§ |= b2internal::&!?;
         }
         else
         {
            this.§@x§ &= ~b2internal::&!?;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@x§ |= b2internal::=!;
            this.§&Q§ = 0;
         }
         else
         {
            this.§@x§ &= ~b2internal::=!;
            this.§&Q§ = 0;
            this.§,?§.§3a§();
            this.m_angularVelocity = 0;
            this.§1!1§.§3a§();
            this.§3!S§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§@x§ & b2internal::=!) == b2internal::=!;
      }
      
      public function §3P§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@x§ |= b2internal::%!0;
         }
         else
         {
            this.§@x§ &= ~b2internal::%!0;
         }
         this.§&=§();
      }
      
      public function §&X§() : Boolean
      {
         return (this.§@x§ & b2internal::%!0) == b2internal::%!0;
      }
      
      public function §0>§(param1:Boolean) : void
      {
         var _loc2_:§>![§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§+B§())
         {
            return;
         }
         if(param1)
         {
            this.§@x§ |= b2internal::&!N;
            _loc2_ = this.m_world.§7-§.§;!=§;
            _loc3_ = this.§#j§;
            while(_loc3_)
            {
               _loc3_.§case§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§#!&§;
            }
         }
         else
         {
            this.§@x§ &= ~b2internal::&!N;
            _loc2_ = this.m_world.§7-§.§;!=§;
            _loc3_ = this.§#j§;
            while(_loc3_)
            {
               _loc3_.§^<§(_loc2_);
               _loc3_ = _loc3_.§#!&§;
            }
            _loc4_ = this.§=-§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§%Y§;
               this.m_world.§7-§.§;@§(_loc5_.§"!$§);
            }
            this.§=-§ = null;
         }
      }
      
      public function §+B§() : Boolean
      {
         return (this.§@x§ & b2internal::&!N) == b2internal::&!N;
      }
      
      public function §1j§() : Boolean
      {
         return (this.§@x§ & b2internal::&!?) == b2internal::&!?;
      }
      
      public function §?!8§() : b2Fixture
      {
         return this.§#j§;
      }
      
      public function §=7§() : b2JointEdge
      {
         return this.§1v§;
      }
      
      public function §=!T§() : b2ControllerEdge
      {
         return this.§6V§;
      }
      
      public function §6q§() : b2ContactEdge
      {
         return this.§=-§;
      }
      
      public function §[;§() : b2Body
      {
         return this.§#!&§;
      }
      
      public function GetUserData() : *
      {
         return this.§'8§;
      }
      
      public function §,!-§(param1:*) : void
      {
         this.§'8§ = param1;
      }
      
      public function §`!5§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §%a§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §6z§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§>![§ = this.m_world.§7-§.§;!=§;
         _loc4_ = this.§#j§;
         while(_loc4_)
         {
            _loc4_.§=!P§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§#!&§;
         }
      }
      
      b2internal function §=!Y§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §`V§(param1:b2Body) : Boolean
      {
         if(this.§8!J§ != b2_dynamicBody && param1.§8!J§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§1v§;
         while(_loc2_)
         {
            if(_loc2_.§3!>§ == param1)
            {
               if(_loc2_.§%;§.§5&§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§%Y§;
         }
         return true;
      }
      
      b2internal function §1m§(param1:Number) : void
      {
         this.m_sweep.§1m§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§=!Y§();
      }
   }
}
