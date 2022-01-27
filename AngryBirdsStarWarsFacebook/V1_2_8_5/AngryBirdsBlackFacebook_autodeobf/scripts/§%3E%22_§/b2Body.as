package §>"_§
{
   import §1!2§.b2EdgeShape;
   import §1!2§.b2MassData;
   import §1!2§.b2Shape;
   import §5G§.b2ControllerEdge;
   import §7!I§.b2Settings;
   import §7!I§.b2internal;
   import §7"A§.b2Mat22;
   import §7"A§.b2Math;
   import §7"A§.b2Sweep;
   import §7"A§.b2Transform;
   import §7"A§.b2Vec2;
   import §=![§.b2JointEdge;
   import §>r§.§2";§;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §]!q§:b2Transform = new b2Transform();
      
      b2internal static var §]"5§:uint = 1;
      
      b2internal static var §-"a§:uint = 2;
      
      b2internal static var §-!N§:uint = 4;
      
      b2internal static var §`T§:uint = 8;
      
      b2internal static var §?"H§:uint = 16;
      
      b2internal static var §4"_§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §7!D§:uint;
      
      b2internal var §<"a§:int;
      
      b2internal var §&a§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §9"H§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §@"&§:b2Vec2;
      
      b2internal var §8"p§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §%" §:b2Body;
      
      b2internal var §?"Z§:b2Body;
      
      b2internal var §'H§:b2Fixture;
      
      b2internal var § !X§:int;
      
      b2internal var §0"7§:b2ControllerEdge;
      
      b2internal var §@"0§:int;
      
      b2internal var §[!J§:b2JointEdge;
      
      b2internal var §>!r§:b2ContactEdge;
      
      b2internal var §;,§:Number;
      
      b2internal var § !o§:Number;
      
      b2internal var § m§:Number;
      
      b2internal var §&#+§:Number;
      
      b2internal var §"!z§:Number;
      
      b2internal var §6"?§:Number;
      
      b2internal var §1!Y§:Number;
      
      b2internal var §#S§:Number;
      
      b2internal var §6"C§:Number;
      
      private var §[!^§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§9"H§ = new b2Vec2();
         this.§@"&§ = new b2Vec2();
         super();
         this.§7!D§ = 0;
         if(param1.§^!Z§)
         {
            this.§7!D§ |= b2internal::`T;
         }
         if(param1.§;"!§)
         {
            this.§7!D§ |= b2internal::?"H;
         }
         if(param1.§0!p§)
         {
            this.§7!D§ |= b2internal::-!N;
         }
         if(param1.§+!@§)
         {
            this.§7!D§ |= b2internal::-"a;
         }
         if(param1.active)
         {
            this.§7!D§ |= b2internal::4"_;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§6![§();
         this.m_sweep.§^!§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§[!J§ = null;
         this.§0"7§ = null;
         this.§>!r§ = null;
         this.§@"0§ = 0;
         this.§%" § = null;
         this.§?"Z§ = null;
         this.§9"H§.SetV(param1.§^2§);
         this.m_angularVelocity = param1.§7!$§;
         this.§6"?§ = param1.§[3§;
         this.§1!Y§ = param1.§-#0§;
         this.§6"C§ = param1.§9f§;
         this.§@"&§.Set(0,0);
         this.§8"p§ = 0;
         this.§#S§ = 0;
         this.§<"a§ = param1.type;
         if(this.§<"a§ == b2_dynamicBody)
         {
            this.§;,§ = 1;
            this.§ !o§ = 1;
         }
         else
         {
            this.§;,§ = 0;
            this.§ !o§ = 0;
         }
         this.§ m§ = 0;
         this.§&#+§ = 0;
         this.§"!z§ = param1.§=!X§;
         this.§[!^§ = param1.§="M§;
         this.§'H§ = null;
         this.§ !X§ = 0;
      }
      
      private function §0!t§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§4!8§().y,param2.§4!8§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§?"M§(_loc5_,param2.§4!8§());
         _loc6_ = b2Math.§["+§(_loc6_,param2.§ E§());
         _loc6_ = b2Math.§?"M§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§"!^§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§"!^§(param1.§4!8§(),param2.§4!8§())).Normalize();
         var _loc8_:* = b2Math.§<f§(param1.§4!8§(),param2.§ E§()) > 0;
         param1.§6V§(param2,_loc6_,_loc7_,_loc8_);
         param2.§3"G§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§2";§ = null;
         if(this.m_world.§^"t§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§ "a§(this,this.m_xf,param1);
         if(this.§7!D§ & b2internal::4"_)
         {
            _loc3_ = this.m_world.§!! §.§@u§;
            _loc2_.§4"6§(_loc3_,this.m_xf);
         }
         _loc2_.§?"Z§ = this.§'H§;
         this.§'H§ = _loc2_;
         ++this.§ !X§;
         _loc2_.m_body = this;
         if(_loc2_.§2"#§ > 0)
         {
            this.ResetMassData();
         }
         this.m_world.§7!D§ |= b2World.§?!F§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §&Y§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§2";§ = null;
         if(this.m_world.§^"t§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§'H§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§?"Z§ = param1.§?"Z§;
               }
               else
               {
                  this.§'H§ = param1.§?"Z§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§?"Z§;
         }
         var _loc5_:b2ContactEdge = this.§>!r§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§;!@§;
            _loc5_ = _loc5_.§7u§;
            _loc7_ = _loc6_.§%"<§();
            _loc8_ = _loc6_.§&"!§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§!! §.§ !g§(_loc6_);
            }
         }
         if(this.§7!D§ & b2internal::4"_)
         {
            _loc9_ = this.m_world.§!! §.§@u§;
            param1.§<!i§(_loc9_);
         }
         param1.§ !g§();
         param1.m_body = null;
         param1.§?"Z§ = null;
         --this.§ !X§;
         this.ResetMassData();
      }
      
      public function SetPositionAndAngle(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§^"t§() == true)
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
         var _loc6_:§2";§ = this.m_world.§!! §.§@u§;
         _loc3_ = this.§'H§;
         while(_loc3_)
         {
            _loc3_.§?",§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§?"Z§;
         }
         this.m_world.§!! §.§,!"§();
      }
      
      public function §,"#§(param1:b2Transform) : void
      {
         this.SetPositionAndAngle(param1.position,param1.GetAngle());
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
         this.SetPositionAndAngle(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.SetPositionAndAngle(this.GetPosition(),param1);
      }
      
      public function §]";§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §'Z§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§<"a§ == b2_staticBody)
         {
            return;
         }
         this.§9"H§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§9"H§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§<"a§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §9!0§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§+"M§();
         _loc1_.§0!p§ = (this.§7!D§ & b2internal::-!N) == b2internal::-!N;
         _loc1_.angle = this.GetAngle();
         _loc1_.§-#0§ = this.§1!Y§;
         _loc1_.§7!$§ = this.m_angularVelocity;
         _loc1_.§;"!§ = (this.§7!D§ & b2internal::?"H) == b2internal::?"H;
         _loc1_.§^!Z§ = (this.§7!D§ & b2internal::`T) == b2internal::`T;
         _loc1_.§+!@§ = (this.§7!D§ & b2internal::-"a) == b2internal::-"a;
         _loc1_.§[3§ = this.§6"?§;
         _loc1_.§^2§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§="M§ = this.GetUserData();
         return _loc1_;
      }
      
      public function § =§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§<"a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§@"&§.x += param1.x;
         this.§@"&§.y += param1.y;
         this.§8"p§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §&0§(param1:Number) : void
      {
         if(this.§<"a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§8"p§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§<"a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§9"H§.x += this.§ !o§ * param1.x;
         this.§9"H§.y += this.§ !o§ * param1.y;
         this.m_angularVelocity += this.§&#+§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §]#$§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§]";§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§9!0§());
         var _loc8_:b2Fixture = _loc5_.§'H§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§?"Z§;
               if(_loc7_)
               {
                  _loc7_.§?"Z§ = _loc13_;
               }
               else
               {
                  _loc5_.§'H§ = _loc13_;
               }
               --_loc5_.§ !X§;
               _loc8_.§?"Z§ = _loc6_.§'H§;
               _loc6_.§'H§ = _loc8_;
               ++_loc6_.§ !X§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§?"Z§;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.§]";§();
         var _loc10_:b2Vec2 = _loc6_.§]";§();
         var _loc11_:b2Vec2 = b2Math.§"!^§(_loc2_,b2Math.§%#"§(_loc3_,b2Math.§["+§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§"!^§(_loc2_,b2Math.§%#"§(_loc3_,b2Math.§["+§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§3"N§();
         _loc6_.§3"N§();
         return _loc6_;
      }
      
      public function §+"e§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§'H§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§?"Z§;
            --param1.§ !X§;
            _loc2_.§?"Z§ = this.§'H§;
            this.§'H§ = _loc2_;
            ++this.§ !X§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§ !X§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§]";§();
         var _loc6_:b2Vec2 = _loc4_.§]";§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.ResetMassData();
         this.§3"N§();
      }
      
      public function GetMass() : Number
      {
         return this.§;,§;
      }
      
      public function §2#+§() : Number
      {
         return this.§ m§;
      }
      
      public function §7!^§(param1:b2MassData) : void
      {
         param1.§2"f§ = this.§;,§;
         param1.§&e§ = this.§ m§;
         param1.§4B§.SetV(this.m_sweep.localCenter);
      }
      
      public function §[T§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§^"t§() == false);
         if(this.m_world.§^"t§() == true)
         {
            return;
         }
         if(this.§<"a§ != b2_dynamicBody)
         {
            return;
         }
         this.§ !o§ = 0;
         this.§ m§ = 0;
         this.§&#+§ = 0;
         this.§;,§ = param1.§2"f§;
         if(this.§;,§ <= 0)
         {
            this.§;,§ = 1;
         }
         this.§ !o§ = 1 / this.§;,§;
         if(param1.§&e§ > 0 && (this.§7!D§ & b2internal::?"H) == 0)
         {
            this.§ m§ = param1.§&e§ - this.§;,§ * (param1.§4B§.x * param1.§4B§.x + param1.§4B§.y * param1.§4B§.y);
            this.§&#+§ = 1 / this.§ m§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.§4B§);
         this.m_sweep.c0.SetV(b2Math.§@#%§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§9"H§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§9"H§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.§;,§ = 0;
         this.§ !o§ = 0;
         this.§ m§ = 0;
         this.§&#+§ = 0;
         this.m_sweep.localCenter.§6![§();
         if(this.§<"a§ == b2_staticBody || this.§<"a§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§,!F§(0,0);
         var _loc2_:b2Fixture = this.§'H§;
         while(_loc2_)
         {
            if(_loc2_.§2"#§ != 0)
            {
               _loc4_ = _loc2_.§7!^§();
               this.§;,§ += _loc4_.§2"f§;
               _loc1_.x += _loc4_.§4B§.x * _loc4_.§2"f§;
               _loc1_.y += _loc4_.§4B§.y * _loc4_.§2"f§;
               this.§ m§ += _loc4_.§&e§;
            }
            _loc2_ = _loc2_.§?"Z§;
         }
         if(this.§;,§ > 0)
         {
            this.§ !o§ = 1 / this.§;,§;
            _loc1_.x *= this.§ !o§;
            _loc1_.y *= this.§ !o§;
         }
         else
         {
            this.§;,§ = 1;
            this.§ !o§ = 1;
         }
         if(this.§ m§ > 0 && (this.§7!D§ & b2internal::?"H) == 0)
         {
            this.§ m§ -= this.§;,§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§ m§ *= this.§"!z§;
            b2Settings.b2Assert(this.§ m§ > 0);
            this.§&#+§ = 1 / this.§ m§;
         }
         else
         {
            this.§ m§ = 0;
            this.§&#+§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§@#%§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§9"H§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§9"H§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §@# §(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§6%§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§true§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§^!'§(this.m_xf.R,param1);
      }
      
      public function §]# §(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§9"H§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§9"H§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §[# §(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§9"H§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§9"H§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §?M§() : Number
      {
         return this.§6"?§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§6"?§ = param1;
      }
      
      public function §]E§() : Number
      {
         return this.§1!Y§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§1!Y§ = param1;
      }
      
      public function §3`§() : Number
      {
         return this.§6"C§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§6"C§ = param1;
      }
      
      public function §;!o§(param1:uint) : void
      {
         if(this.§<"a§ == param1)
         {
            return;
         }
         this.§<"a§ = param1;
         this.ResetMassData();
         if(this.§<"a§ == b2_staticBody)
         {
            this.§9"H§.§6![§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§@"&§.§6![§();
         this.§8"p§ = 0;
         var _loc2_:b2ContactEdge = this.§>!r§;
         while(_loc2_)
         {
            _loc2_.§;!@§.§]!U§();
            _loc2_ = _loc2_.§7u§;
         }
      }
      
      public function §+"M§() : uint
      {
         return this.§<"a§;
      }
      
      public function §+"a§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7!D§ |= b2internal::`T;
         }
         else
         {
            this.§7!D§ &= ~b2internal::`T;
         }
      }
      
      public function §+"R§() : Boolean
      {
         return (this.§7!D§ & b2internal::`T) == b2internal::`T;
      }
      
      public function §6!^§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7!D§ |= b2internal::-!N;
         }
         else
         {
            this.§7!D§ &= ~b2internal::-!N;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7!D§ |= b2internal::-"a;
            this.§#S§ = 0;
         }
         else
         {
            this.§7!D§ &= ~b2internal::-"a;
            this.§#S§ = 0;
            this.§9"H§.§6![§();
            this.m_angularVelocity = 0;
            this.§@"&§.§6![§();
            this.§8"p§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§7!D§ & b2internal::-"a) == b2internal::-"a;
      }
      
      public function §9"!§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7!D§ |= b2internal::?"H;
         }
         else
         {
            this.§7!D§ &= ~b2internal::?"H;
         }
         this.ResetMassData();
      }
      
      public function §9#'§() : Boolean
      {
         return (this.§7!D§ & b2internal::?"H) == b2internal::?"H;
      }
      
      public function § !!§(param1:Boolean) : void
      {
         var _loc2_:§2";§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§ !f§())
         {
            return;
         }
         if(param1)
         {
            this.§7!D§ |= b2internal::4"_;
            _loc2_ = this.m_world.§!! §.§@u§;
            _loc3_ = this.§'H§;
            while(_loc3_)
            {
               _loc3_.§4"6§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§?"Z§;
            }
         }
         else
         {
            this.§7!D§ &= ~b2internal::4"_;
            _loc2_ = this.m_world.§!! §.§@u§;
            _loc3_ = this.§'H§;
            while(_loc3_)
            {
               _loc3_.§<!i§(_loc2_);
               _loc3_ = _loc3_.§?"Z§;
            }
            _loc4_ = this.§>!r§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§7u§;
               this.m_world.§!! §.§ !g§(_loc5_.§;!@§);
            }
            this.§>!r§ = null;
         }
      }
      
      public function § !f§() : Boolean
      {
         return (this.§7!D§ & b2internal::4"_) == b2internal::4"_;
      }
      
      public function §[K§() : Boolean
      {
         return (this.§7!D§ & b2internal::-!N) == b2internal::-!N;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§'H§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§[!J§;
      }
      
      public function §#n§() : b2ControllerEdge
      {
         return this.§0"7§;
      }
      
      public function §&!4§() : b2ContactEdge
      {
         return this.§>!r§;
      }
      
      public function §^a§() : b2Body
      {
         return this.§?"Z§;
      }
      
      public function GetUserData() : *
      {
         return this.§[!^§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§[!^§ = param1;
      }
      
      public function §import§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §3"N§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §]!q§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§2";§ = this.m_world.§!! §.§@u§;
         _loc4_ = this.§'H§;
         while(_loc4_)
         {
            _loc4_.§?",§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§?"Z§;
         }
      }
      
      b2internal function §&"]§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §^E§(param1:b2Body) : Boolean
      {
         if(this.§<"a§ != b2_dynamicBody && param1.§<"a§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§[!J§;
         while(_loc2_)
         {
            if(_loc2_.other == param1)
            {
               if(_loc2_.§6!_§.§0!8§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§7u§;
         }
         return true;
      }
      
      b2internal function §5#4§(param1:Number) : void
      {
         this.m_sweep.§5#4§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§&"]§();
      }
   }
}
