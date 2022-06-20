package §3#h§
{
   import §,!T§.b2EdgeShape;
   import §,!T§.b2MassData;
   import §,!T§.b2Shape;
   import §1#F§.b2Settings;
   import §1#F§.b2internal;
   import §5$C§.b2ControllerEdge;
   import §5v§.b2JointEdge;
   import §6!R§.b2Mat22;
   import §6!R§.b2Math;
   import §6!R§.b2Sweep;
   import §6!R§.b2Transform;
   import §6!R§.b2Vec2;
   import §6"0§.b2Contact;
   import §6"0§.b2ContactEdge;
   import §9$A§.§]"-§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §%!X§:b2Transform = new b2Transform();
      
      b2internal static var §#"L§:uint = 1;
      
      b2internal static var §2#v§:uint = 2;
      
      b2internal static var §"#g§:uint = 4;
      
      b2internal static var §&"m§:uint = 8;
      
      b2internal static var §?$3§:uint = 16;
      
      b2internal static var §+$"§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §#!E§:uint;
      
      b2internal var § "u§:int;
      
      b2internal var §6!l§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §=!c§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §2#A§:b2Vec2;
      
      b2internal var §5"S§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §2Y§:b2Body;
      
      b2internal var §7<§:b2Body;
      
      b2internal var §!!,§:b2Fixture;
      
      b2internal var §!!p§:int;
      
      b2internal var §`#6§:b2ControllerEdge;
      
      b2internal var §4"5§:int;
      
      b2internal var §+"C§:b2JointEdge;
      
      b2internal var §?!Q§:b2ContactEdge;
      
      b2internal var §!#v§:Number;
      
      b2internal var §0#d§:Number;
      
      b2internal var §?z§:Number;
      
      b2internal var §!!!§:Number;
      
      b2internal var §2#I§:Number;
      
      b2internal var §^#H§:Number;
      
      b2internal var §<!d§:Number;
      
      b2internal var §]s§:Number;
      
      b2internal var § try§:Number;
      
      b2internal var §]!y§:Boolean;
      
      private var §%!Z§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§=!c§ = new b2Vec2();
         this.§2#A§ = new b2Vec2();
         super();
         this.§#!E§ = 0;
         if(param1.§#s§)
         {
            this.§#!E§ |= b2internal::&"m;
         }
         if(param1.§6!7§)
         {
            this.§#!E§ |= b2internal::?$3;
         }
         if(param1.§]#R§)
         {
            this.§#!E§ |= b2internal::"#g;
         }
         if(param1.awake)
         {
            this.§#!E§ |= b2internal::2#v;
         }
         if(param1.active)
         {
            this.§#!E§ |= b2internal::+$";
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§%"N§();
         this.m_sweep.§1!U§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§+"C§ = null;
         this.§`#6§ = null;
         this.§?!Q§ = null;
         this.§4"5§ = 0;
         this.§2Y§ = null;
         this.§7<§ = null;
         this.§=!c§.SetV(param1.§1Y§);
         this.m_angularVelocity = param1.angularVelocity;
         this.§^#H§ = param1.linearDamping;
         this.§<!d§ = param1.angularDamping;
         this.§ try§ = param1.§`!S§;
         this.§2#A§.Set(0,0);
         this.§5"S§ = 0;
         this.§]s§ = 0;
         this.§ "u§ = param1.type;
         if(this.§ "u§ == b2_dynamicBody)
         {
            this.§!#v§ = 1;
            this.§0#d§ = 1;
         }
         else
         {
            this.§!#v§ = 0;
            this.§0#d§ = 0;
         }
         this.§?z§ = 0;
         this.§!!!§ = 0;
         this.§2#I§ = param1.§,!x§;
         this.§%!Z§ = param1.§9!g§;
         this.§!!,§ = null;
         this.§!!p§ = 0;
      }
      
      private function §@!m§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§1E§().y,param2.§1E§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§4$'§(_loc5_,param2.§1E§());
         _loc6_ = b2Math.§5#w§(_loc6_,param2.§0#'§());
         _loc6_ = b2Math.§4$'§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§35§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§35§(param1.§1E§(),param2.§1E§())).Normalize();
         var _loc8_:* = b2Math.§-"C§(param1.§1E§(),param2.§0#'§()) > 0;
         param1.§+$7§(param2,_loc6_,_loc7_,_loc8_);
         param2.§@W§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§]"-§ = null;
         if(this.m_world.§5"X§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§'#q§(this,this.m_xf,param1);
         if(this.§#!E§ & b2internal::+$")
         {
            _loc3_ = this.m_world.§@k§.§4g§;
            _loc2_.§^$7§(_loc3_,this.m_xf);
         }
         _loc2_.§7<§ = this.§!!,§;
         this.§!!,§ = _loc2_;
         ++this.§!!p§;
         _loc2_.m_body = this;
         if(_loc2_.§+"§ > 0)
         {
            this.ResetMassData();
         }
         this.m_world.§#!E§ |= b2World.§3",§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §#!p§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§]"-§ = null;
         if(this.m_world.§5"X§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§!!,§;
         var _loc3_:b2Fixture = null;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§7<§ = param1.§7<§;
               }
               else
               {
                  this.§!!,§ = param1.§7<§;
               }
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§7<§;
         }
         var _loc5_:b2ContactEdge = this.§?!Q§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§&$-§;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.§#"^§();
            _loc8_ = _loc6_.§4$E§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§@k§.§0"y§(_loc6_);
            }
         }
         if(this.§#!E§ & b2internal::+$")
         {
            _loc9_ = this.m_world.§@k§.§4g§;
            param1.§@!v§(_loc9_);
         }
         param1.§0"y§();
         param1.m_body = null;
         param1.§7<§ = null;
         --this.§!!p§;
         this.ResetMassData();
      }
      
      public function §<!W§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§5"X§() == true)
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
         var _loc6_:§]"-§ = this.m_world.§@k§.§4g§;
         _loc3_ = this.§!!,§;
         while(_loc3_)
         {
            _loc3_.§7#h§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§7<§;
         }
         this.m_world.§@k§.§;!;§();
      }
      
      public function §#b§(param1:b2Transform) : void
      {
         this.§<!W§(param1.position,param1.GetAngle());
      }
      
      public function GetTransform() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.§<!W§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§<!W§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §9-§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§ "u§ == b2_staticBody)
         {
            return;
         }
         this.§=!c§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§=!c§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§ "u§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function GetDefinition() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§!"k§();
         _loc1_.§]#R§ = (this.§#!E§ & b2internal::"#g) == b2internal::"#g;
         _loc1_.angle = this.GetAngle();
         _loc1_.angularDamping = this.§<!d§;
         _loc1_.angularVelocity = this.m_angularVelocity;
         _loc1_.§6!7§ = (this.§#!E§ & b2internal::?$3) == b2internal::?$3;
         _loc1_.§#s§ = (this.§#!E§ & b2internal::&"m) == b2internal::&"m;
         _loc1_.awake = (this.§#!E§ & b2internal::2#v) == b2internal::2#v;
         _loc1_.linearDamping = this.§^#H§;
         _loc1_.§1Y§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§9!g§ = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§ "u§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§2#A§.x += param1.x;
         this.§2#A§.y += param1.y;
         this.§5"S§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §+#4§(param1:Number) : void
      {
         if(this.§ "u§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§5"S§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§ "u§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§=!c§.x += this.§0#d§ * param1.x;
         this.§=!c§.y += this.§0#d§ * param1.y;
         this.m_angularVelocity += this.§!!!§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §5#6§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.GetDefinition());
         var _loc8_:b2Fixture = _loc5_.§!!,§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§7<§;
               if(_loc7_)
               {
                  _loc7_.§7<§ = _loc13_;
               }
               else
               {
                  _loc5_.§!!,§ = _loc13_;
               }
               --_loc5_.§!!p§;
               _loc8_.§7<§ = _loc6_.§!!,§;
               _loc6_.§!!,§ = _loc8_;
               ++_loc6_.§!!p§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§7<§;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§35§(_loc2_,b2Math.§#!t§(_loc3_,b2Math.§5#w§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§35§(_loc2_,b2Math.§#!t§(_loc3_,b2Math.§5#w§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§ #U§();
         _loc6_.§ #U§();
         return _loc6_;
      }
      
      public function §3#1§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§!!,§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§7<§;
            --param1.§!!p§;
            _loc2_.§7<§ = this.§!!,§;
            this.§!!,§ = _loc2_;
            ++this.§!!p§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§!!p§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         _loc3_.GetWorldCenter();
         _loc4_.GetWorldCenter();
         _loc3_.GetLinearVelocity().Copy();
         _loc4_.GetLinearVelocity().Copy();
         Number(_loc3_.GetAngularVelocity());
         Number(_loc4_.GetAngularVelocity());
         _loc3_.ResetMassData();
         this.§ #U§();
      }
      
      public function GetMass() : Number
      {
         return this.§!#v§;
      }
      
      public function §^!§() : Number
      {
         return this.§?z§;
      }
      
      public function §,H§(param1:b2MassData) : void
      {
         param1.§>#0§ = this.§!#v§;
         param1.§ $=§ = this.§?z§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §%!W§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§5"X§() == false);
         if(this.m_world.§5"X§() == true)
         {
            return;
         }
         if(this.§ "u§ != b2_dynamicBody)
         {
            return;
         }
         this.§0#d§ = 0;
         this.§?z§ = 0;
         this.§!!!§ = 0;
         this.§!#v§ = param1.§>#0§;
         if(this.§!#v§ <= 0)
         {
            this.§!#v§ = 1;
         }
         this.§0#d§ = 1 / this.§!#v§;
         if(param1.§ $=§ > 0 && (this.§#!E§ & b2internal::?$3) == 0)
         {
            this.§?z§ = param1.§ $=§ - this.§!#v§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§!!!§ = 1 / this.§?z§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§6#k§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§=!c§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§=!c§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.§!#v§ = 0;
         this.§0#d§ = 0;
         this.§?z§ = 0;
         this.§!!!§ = 0;
         this.m_sweep.localCenter.§%"N§();
         if(this.§ "u§ == b2_staticBody || this.§ "u§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§!#g§(0,0);
         var _loc2_:b2Fixture = this.§!!,§;
         while(_loc2_)
         {
            if(_loc2_.§+"§ != 0)
            {
               _loc4_ = _loc2_.§,H§();
               this.§!#v§ += _loc4_.§>#0§;
               _loc1_.x += _loc4_.center.x * _loc4_.§>#0§;
               _loc1_.y += _loc4_.center.y * _loc4_.§>#0§;
               this.§?z§ += _loc4_.§ $=§;
            }
            _loc2_ = _loc2_.§7<§;
         }
         if(this.§!#v§ > 0)
         {
            this.§0#d§ = 1 / this.§!#v§;
            _loc1_.x *= this.§0#d§;
            _loc1_.y *= this.§0#d§;
         }
         else
         {
            this.§!#v§ = 1;
            this.§0#d§ = 1;
         }
         if(this.§?z§ > 0 && (this.§#!E§ & b2internal::?$3) == 0)
         {
            this.§?z§ -= this.§!#v§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§?z§ *= this.§2#I§;
            b2Settings.b2Assert(this.§?z§ > 0);
            this.§!!!§ = 1 / this.§?z§;
         }
         else
         {
            this.§?z§ = 0;
            this.§!!!§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§6#k§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§=!c§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§=!c§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §`"§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§;"V§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§0!l§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§,#4§(this.m_xf.R,param1);
      }
      
      public function §["^§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§=!c§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§=!c§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §3#Z§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§=!c§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§=!c§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §<!j§() : Number
      {
         return this.§^#H§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§^#H§ = param1;
      }
      
      public function §3!G§() : Number
      {
         return this.§<!d§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§<!d§ = param1;
      }
      
      public function §0s§() : Number
      {
         return this.§ try§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§ try§ = param1;
      }
      
      public function SetType(param1:uint) : void
      {
         if(this.§ "u§ == param1)
         {
            return;
         }
         this.§ "u§ = param1;
         this.ResetMassData();
         if(this.§ "u§ == b2_staticBody)
         {
            this.§=!c§.§%"N§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§2#A§.§%"N§();
         this.§5"S§ = 0;
         var _loc2_:b2ContactEdge = this.§?!Q§;
         while(_loc2_)
         {
            _loc2_.§&$-§.§4"[§();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §!"k§() : uint
      {
         return this.§ "u§;
      }
      
      public function SetBullet(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!E§ |= b2internal::&"m;
         }
         else
         {
            this.§#!E§ &= ~b2internal::&"m;
         }
      }
      
      public function §1"m§() : Boolean
      {
         return (this.§#!E§ & b2internal::&"m) == b2internal::&"m;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!E§ |= b2internal::"#g;
         }
         else
         {
            this.§#!E§ &= ~b2internal::"#g;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!E§ |= b2internal::2#v;
            this.§]s§ = 0;
         }
         else
         {
            this.§#!E§ &= ~b2internal::2#v;
            this.§]s§ = 0;
            this.§=!c§.§%"N§();
            this.m_angularVelocity = 0;
            this.§2#A§.§%"N§();
            this.§5"S§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§#!E§ & b2internal::2#v) == b2internal::2#v;
      }
      
      public function §1!g§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!E§ |= b2internal::?$3;
         }
         else
         {
            this.§#!E§ &= ~b2internal::?$3;
         }
         this.ResetMassData();
      }
      
      public function §<!$§() : Boolean
      {
         return (this.§#!E§ & b2internal::?$3) == b2internal::?$3;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc2_:§]"-§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§1!a§())
         {
            return;
         }
         if(param1)
         {
            this.§#!E§ |= b2internal::+$";
            _loc2_ = this.m_world.§@k§.§4g§;
            _loc3_ = this.§!!,§;
            while(_loc3_)
            {
               _loc3_.§^$7§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§7<§;
            }
         }
         else
         {
            this.§#!E§ &= ~b2internal::+$";
            _loc2_ = this.m_world.§@k§.§4g§;
            _loc3_ = this.§!!,§;
            while(_loc3_)
            {
               _loc3_.§@!v§(_loc2_);
               _loc3_ = _loc3_.§7<§;
            }
            _loc4_ = this.§?!Q§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.§@k§.§0"y§(_loc5_.§&$-§);
            }
            this.§?!Q§ = null;
         }
      }
      
      public function §1!a§() : Boolean
      {
         return (this.§#!E§ & b2internal::+$") == b2internal::+$";
      }
      
      public function §^#4§() : Boolean
      {
         return (this.§#!E§ & b2internal::"#g) == b2internal::"#g;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§!!,§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§+"C§;
      }
      
      public function §8" §() : b2ControllerEdge
      {
         return this.§`#6§;
      }
      
      public function §`!V§() : b2ContactEdge
      {
         return this.§?!Q§;
      }
      
      public function §6"t§() : b2Body
      {
         return this.§7<§;
      }
      
      public function GetUserData() : *
      {
         return this.§%!Z§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§%!Z§ = param1;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      b2internal function § #U§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §%!X§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§]"-§ = this.m_world.§@k§.§4g§;
         _loc4_ = this.§!!,§;
         while(_loc4_)
         {
            _loc4_.§7#h§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§7<§;
         }
      }
      
      b2internal function §[!C§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §1!j§(param1:b2Body) : Boolean
      {
         if(this.§ "u§ != b2_dynamicBody && param1.§ "u§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§+"C§;
         while(_loc2_)
         {
            if(_loc2_.§5"&§ == param1)
            {
               if(_loc2_.joint.§##h§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      public function SetForcedContactFiltering(param1:Boolean) : void
      {
         this.§]!y§ = param1;
      }
      
      b2internal function §2#Q§(param1:Number) : void
      {
         this.m_sweep.§2#Q§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§[!C§();
      }
   }
}
