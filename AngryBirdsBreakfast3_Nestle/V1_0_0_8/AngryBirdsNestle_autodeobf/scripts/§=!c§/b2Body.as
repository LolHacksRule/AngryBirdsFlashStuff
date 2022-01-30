package §=!c§
{
   import §"s§.b2JointEdge;
   import §-j§.§3!6§;
   import §2"%§.b2Contact;
   import §2"%§.b2ContactEdge;
   import §7!F§.b2Settings;
   import §7!F§.b2internal;
   import §[K§.b2Mat22;
   import §[K§.b2Math;
   import §[K§.b2Sweep;
   import §[K§.b2Transform;
   import §[K§.b2Vec2;
   import §[e§.b2EdgeShape;
   import §[e§.b2MassData;
   import §[e§.b2Shape;
   import §`n§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §`!t§:b2Transform = new b2Transform();
      
      b2internal static var §[x§:uint = 1;
      
      b2internal static var §;R§:uint = 2;
      
      b2internal static var §4"#§:uint = 4;
      
      b2internal static var §]!b§:uint = 8;
      
      b2internal static var §+N§:uint = 16;
      
      b2internal static var §`!#§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §8!5§:uint;
      
      b2internal var §5"6§:int;
      
      b2internal var §9!o§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §;B§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §=D§:b2Vec2;
      
      b2internal var §#!x§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §^!`§:b2Body;
      
      b2internal var §4!c§:b2Body;
      
      b2internal var §5!k§:b2Fixture;
      
      b2internal var §3c§:int;
      
      b2internal var §1!Z§:b2ControllerEdge;
      
      b2internal var §!!N§:int;
      
      b2internal var §,c§:b2JointEdge;
      
      b2internal var §[!v§:b2ContactEdge;
      
      b2internal var §^-§:Number;
      
      b2internal var §]p§:Number;
      
      b2internal var §?y§:Number;
      
      b2internal var §;!$§:Number;
      
      b2internal var §,g§:Number;
      
      b2internal var §;!&§:Number;
      
      b2internal var §2Y§:Number;
      
      b2internal var §^"2§:Number;
      
      b2internal var §[c§:Number;
      
      private var §<!§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§;B§ = new b2Vec2();
         this.§=D§ = new b2Vec2();
         super();
         this.§8!5§ = 0;
         if(param1.§#!9§)
         {
            this.§8!5§ |= b2internal::]!b;
         }
         if(param1.§0y§)
         {
            this.§8!5§ |= b2internal::+N;
         }
         if(param1.§@!Y§)
         {
            this.§8!5§ |= b2internal::4"#;
         }
         if(param1.§=!a§)
         {
            this.§8!5§ |= b2internal::;R;
         }
         if(param1.active)
         {
            this.§8!5§ |= b2internal::`!#;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§3S§();
         this.m_sweep.§&;§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§,c§ = null;
         this.§1!Z§ = null;
         this.§[!v§ = null;
         this.§!!N§ = 0;
         this.§^!`§ = null;
         this.§4!c§ = null;
         this.§;B§.SetV(param1.§5!H§);
         this.m_angularVelocity = param1.§9! §;
         this.§;!&§ = param1.§?!!§;
         this.§2Y§ = param1.§,!2§;
         this.§[c§ = param1.§<"1§;
         this.§=D§.Set(0,0);
         this.§#!x§ = 0;
         this.§^"2§ = 0;
         this.§5"6§ = param1.type;
         if(this.§5"6§ == b2_dynamicBody)
         {
            this.§^-§ = 1;
            this.§]p§ = 1;
         }
         else
         {
            this.§^-§ = 0;
            this.§]p§ = 0;
         }
         this.§?y§ = 0;
         this.§;!$§ = 0;
         this.§,g§ = param1.§5O§;
         this.§<!§ = param1.userData;
         this.§5!k§ = null;
         this.§3c§ = 0;
      }
      
      private function §8!p§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§`F§().y,param2.§`F§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§,!F§(_loc5_,param2.§`F§());
         _loc6_ = b2Math.§,@§(_loc6_,param2.§9`§());
         _loc6_ = b2Math.§,!F§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§'C§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§'C§(param1.§`F§(),param2.§`F§())).Normalize();
         var _loc8_:* = b2Math.§["!§(param1.§`F§(),param2.§9`§()) > 0;
         param1.§%]§(param2,_loc6_,_loc7_,_loc8_);
         param2.§,!+§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§3!6§ = null;
         if(this.m_world.§"q§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§<!n§(this,this.m_xf,param1);
         if(this.§8!5§ & b2internal::`!#)
         {
            _loc3_ = this.m_world.§<! §.§>T§;
            _loc2_.§3!?§(_loc3_,this.m_xf);
         }
         _loc2_.§4!c§ = this.§5!k§;
         this.§5!k§ = _loc2_;
         ++this.§3c§;
         _loc2_.m_body = this;
         if(_loc2_.§!!W§ > 0)
         {
            this.§<!r§();
         }
         this.m_world.§8!5§ |= b2World.§3!g§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §]!=§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§3!6§ = null;
         if(this.m_world.§"q§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§5!k§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§4!c§ = param1.§4!c§;
               }
               else
               {
                  this.§5!k§ = param1.§4!c§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§4!c§;
         }
         var _loc5_:b2ContactEdge = this.§[!v§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§`Z§;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.§^h§();
            _loc8_ = _loc6_.§9!v§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§<! §.§6!j§(_loc6_);
            }
         }
         if(this.§8!5§ & b2internal::`!#)
         {
            _loc9_ = this.m_world.§<! §.§>T§;
            param1.§<9§(_loc9_);
         }
         param1.§6!j§();
         param1.m_body = null;
         param1.§4!c§ = null;
         --this.§3c§;
         this.§<!r§();
      }
      
      public function §?!^§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§"q§() == true)
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
         var _loc6_:§3!6§ = this.m_world.§<! §.§>T§;
         _loc3_ = this.§5!k§;
         while(_loc3_)
         {
            _loc3_.§1q§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§4!c§;
         }
         this.m_world.§<! §.§?B§();
      }
      
      public function §>i§(param1:b2Transform) : void
      {
         this.§?!^§(param1.position,param1.GetAngle());
      }
      
      public function §0!_§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§?!^§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§?!^§(this.GetPosition(),param1);
      }
      
      public function §9c§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §&!C§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§5"6§ == b2_staticBody)
         {
            return;
         }
         this.§;B§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§;B§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§5"6§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §!!^§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§&!u§();
         _loc1_.§@!Y§ = (this.§8!5§ & b2internal::4"#) == b2internal::4"#;
         _loc1_.angle = this.GetAngle();
         _loc1_.§,!2§ = this.§2Y§;
         _loc1_.§9! § = this.m_angularVelocity;
         _loc1_.§0y§ = (this.§8!5§ & b2internal::+N) == b2internal::+N;
         _loc1_.§#!9§ = (this.§8!5§ & b2internal::]!b) == b2internal::]!b;
         _loc1_.§=!a§ = (this.§8!5§ & b2internal::;R) == b2internal::;R;
         _loc1_.§?!!§ = this.§;!&§;
         _loc1_.§5!H§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.userData = this.GetUserData();
         return _loc1_;
      }
      
      public function §2!e§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5"6§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§=D§.x += param1.x;
         this.§=D§.y += param1.y;
         this.§#!x§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §>!v§(param1:Number) : void
      {
         if(this.§5"6§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§#!x§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5"6§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§;B§.x += this.§]p§ * param1.x;
         this.§;B§.y += this.§]p§ * param1.y;
         this.m_angularVelocity += this.§;!$§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §1W§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§9c§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§!!^§());
         var _loc8_:b2Fixture = _loc5_.§5!k§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§4!c§;
               if(_loc7_)
               {
                  _loc7_.§4!c§ = _loc13_;
               }
               else
               {
                  _loc5_.§5!k§ = _loc13_;
               }
               --_loc5_.§3c§;
               _loc8_.§4!c§ = _loc6_.§5!k§;
               _loc6_.§5!k§ = _loc8_;
               ++_loc6_.§3c§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§4!c§;
            }
         }
         _loc5_.§<!r§();
         _loc6_.§<!r§();
         var _loc9_:b2Vec2 = _loc5_.§9c§();
         var _loc10_:b2Vec2 = _loc6_.§9c§();
         var _loc11_:b2Vec2 = b2Math.§'C§(_loc2_,b2Math.§,"4§(_loc3_,b2Math.§,@§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§'C§(_loc2_,b2Math.§,"4§(_loc3_,b2Math.§,@§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§6_§();
         _loc6_.§6_§();
         return _loc6_;
      }
      
      public function §]",§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§5!k§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§4!c§;
            --param1.§3c§;
            _loc2_.§4!c§ = this.§5!k§;
            this.§5!k§ = _loc2_;
            ++this.§3c§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§3c§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§9c§();
         var _loc6_:b2Vec2 = _loc4_.§9c§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.§<!r§();
         this.§6_§();
      }
      
      public function GetMass() : Number
      {
         return this.§^-§;
      }
      
      public function §^!U§() : Number
      {
         return this.§?y§;
      }
      
      public function §4!%§(param1:b2MassData) : void
      {
         param1.§6!_§ = this.§^-§;
         param1.I = this.§?y§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function § get§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§"q§() == false);
         if(this.m_world.§"q§() == true)
         {
            return;
         }
         if(this.§5"6§ != b2_dynamicBody)
         {
            return;
         }
         this.§]p§ = 0;
         this.§?y§ = 0;
         this.§;!$§ = 0;
         this.§^-§ = param1.§6!_§;
         if(this.§^-§ <= 0)
         {
            this.§^-§ = 1;
         }
         this.§]p§ = 1 / this.§^-§;
         if(param1.I > 0 && (this.§8!5§ & b2internal::+N) == 0)
         {
            this.§?y§ = param1.I - this.§^-§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§;!$§ = 1 / this.§?y§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§"+§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§;B§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§;B§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §<!r§() : void
      {
         var _loc4_:b2MassData = null;
         this.§^-§ = 0;
         this.§]p§ = 0;
         this.§?y§ = 0;
         this.§;!$§ = 0;
         this.m_sweep.localCenter.§3S§();
         if(this.§5"6§ == b2_staticBody || this.§5"6§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§8!y§(0,0);
         var _loc2_:b2Fixture = this.§5!k§;
         while(_loc2_)
         {
            if(_loc2_.§!!W§ != 0)
            {
               _loc4_ = _loc2_.§4!%§();
               this.§^-§ += _loc4_.§6!_§;
               _loc1_.x += _loc4_.center.x * _loc4_.§6!_§;
               _loc1_.y += _loc4_.center.y * _loc4_.§6!_§;
               this.§?y§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§4!c§;
         }
         if(this.§^-§ > 0)
         {
            this.§]p§ = 1 / this.§^-§;
            _loc1_.x *= this.§]p§;
            _loc1_.y *= this.§]p§;
         }
         else
         {
            this.§^-§ = 1;
            this.§]p§ = 1;
         }
         if(this.§?y§ > 0 && (this.§8!5§ & b2internal::+N) == 0)
         {
            this.§?y§ -= this.§^-§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§?y§ *= this.§,g§;
            b2Settings.b2Assert(this.§?y§ > 0);
            this.§;!$§ = 1 / this.§?y§;
         }
         else
         {
            this.§?y§ = 0;
            this.§;!$§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§"+§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§;B§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§;B§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §'!y§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§1F§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%z§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§8E§(this.m_xf.R,param1);
      }
      
      public function §>!q§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§;B§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§;B§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §1p§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§;B§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§;B§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §>l§() : Number
      {
         return this.§;!&§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§;!&§ = param1;
      }
      
      public function §5!x§() : Number
      {
         return this.§2Y§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§2Y§ = param1;
      }
      
      public function §2l§() : Number
      {
         return this.§[c§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§[c§ = param1;
      }
      
      public function §+x§(param1:uint) : void
      {
         if(this.§5"6§ == param1)
         {
            return;
         }
         this.§5"6§ = param1;
         this.§<!r§();
         if(this.§5"6§ == b2_staticBody)
         {
            this.§;B§.§3S§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§=D§.§3S§();
         this.§#!x§ = 0;
         var _loc2_:b2ContactEdge = this.§[!v§;
         while(_loc2_)
         {
            _loc2_.§`Z§.§!!i§();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §&!u§() : uint
      {
         return this.§5"6§;
      }
      
      public function §=e§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8!5§ |= b2internal::]!b;
         }
         else
         {
            this.§8!5§ &= ~b2internal::]!b;
         }
      }
      
      public function §`-§() : Boolean
      {
         return (this.§8!5§ & b2internal::]!b) == b2internal::]!b;
      }
      
      public function §6!2§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8!5§ |= b2internal::4"#;
         }
         else
         {
            this.§8!5§ &= ~b2internal::4"#;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8!5§ |= b2internal::;R;
            this.§^"2§ = 0;
         }
         else
         {
            this.§8!5§ &= ~b2internal::;R;
            this.§^"2§ = 0;
            this.§;B§.§3S§();
            this.m_angularVelocity = 0;
            this.§=D§.§3S§();
            this.§#!x§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§8!5§ & b2internal::;R) == b2internal::;R;
      }
      
      public function §&I§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8!5§ |= b2internal::+N;
         }
         else
         {
            this.§8!5§ &= ~b2internal::+N;
         }
         this.§<!r§();
      }
      
      public function §6!S§() : Boolean
      {
         return (this.§8!5§ & b2internal::+N) == b2internal::+N;
      }
      
      public function §`!m§(param1:Boolean) : void
      {
         var _loc2_:§3!6§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§6[§())
         {
            return;
         }
         if(param1)
         {
            this.§8!5§ |= b2internal::`!#;
            _loc2_ = this.m_world.§<! §.§>T§;
            _loc3_ = this.§5!k§;
            while(_loc3_)
            {
               _loc3_.§3!?§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§4!c§;
            }
         }
         else
         {
            this.§8!5§ &= ~b2internal::`!#;
            _loc2_ = this.m_world.§<! §.§>T§;
            _loc3_ = this.§5!k§;
            while(_loc3_)
            {
               _loc3_.§<9§(_loc2_);
               _loc3_ = _loc3_.§4!c§;
            }
            _loc4_ = this.§[!v§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.§<! §.§6!j§(_loc5_.§`Z§);
            }
            this.§[!v§ = null;
         }
      }
      
      public function §6[§() : Boolean
      {
         return (this.§8!5§ & b2internal::`!#) == b2internal::`!#;
      }
      
      public function §9z§() : Boolean
      {
         return (this.§8!5§ & b2internal::4"#) == b2internal::4"#;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§5!k§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§,c§;
      }
      
      public function § !p§() : b2ControllerEdge
      {
         return this.§1!Z§;
      }
      
      public function §^!8§() : b2ContactEdge
      {
         return this.§[!v§;
      }
      
      public function §<b§() : b2Body
      {
         return this.§4!c§;
      }
      
      public function GetUserData() : *
      {
         return this.§<!§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§<!§ = param1;
      }
      
      public function §=W§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §6_§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §`!t§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§3!6§ = this.m_world.§<! §.§>T§;
         _loc4_ = this.§5!k§;
         while(_loc4_)
         {
            _loc4_.§1q§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§4!c§;
         }
      }
      
      b2internal function §<!0§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §<z§(param1:b2Body) : Boolean
      {
         if(this.§5"6§ != b2_dynamicBody && param1.§5"6§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§,c§;
         while(_loc2_)
         {
            if(_loc2_.§!!9§ == param1)
            {
               if(_loc2_.§!!q§.§^I§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      b2internal function §<,§(param1:Number) : void
      {
         this.m_sweep.§<,§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§<!0§();
      }
   }
}
