package §8#t§
{
   import §0"=§.b2JointEdge;
   import §0# §.b2Contact;
   import §0# §.b2ContactEdge;
   import §0J§.§"#O§;
   import §?!h§.b2ControllerEdge;
   import §[!3§.b2Settings;
   import §[!3§.b2internal;
   import §]!o§.b2EdgeShape;
   import §]!o§.b2MassData;
   import §]!o§.b2Shape;
   import §`# §.b2Mat22;
   import §`# §.b2Math;
   import §`# §.b2Sweep;
   import §`# §.b2Transform;
   import §`# §.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §2!,§:b2Transform = new b2Transform();
      
      b2internal static var §'#L§:uint = 1;
      
      b2internal static var § #§:uint = 2;
      
      b2internal static var §^"^§:uint = 4;
      
      b2internal static var §4!r§:uint = 8;
      
      b2internal static var §2"y§:uint = 16;
      
      b2internal static var §,G§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §;!O§:uint;
      
      b2internal var §'!A§:int;
      
      b2internal var §&!C§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §8!z§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §[#T§:b2Vec2;
      
      b2internal var §>p§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §@!w§:b2Body;
      
      b2internal var §0$9§:b2Body;
      
      b2internal var §+z§:b2Fixture;
      
      b2internal var §`#v§:int;
      
      b2internal var §,,§:b2ControllerEdge;
      
      b2internal var §]$A§:int;
      
      b2internal var §!#M§:b2JointEdge;
      
      b2internal var §<!t§:b2ContactEdge;
      
      b2internal var §7#B§:Number;
      
      b2internal var §&!s§:Number;
      
      b2internal var §^V§:Number;
      
      b2internal var §!$5§:Number;
      
      b2internal var §#"i§:Number;
      
      b2internal var §["8§:Number;
      
      b2internal var §9q§:Number;
      
      b2internal var §<"L§:Number;
      
      b2internal var §?$<§:Number;
      
      b2internal var §8">§:Boolean;
      
      private var §0#B§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§8!z§ = new b2Vec2();
         this.§[#T§ = new b2Vec2();
         super();
         this.§;!O§ = 0;
         if(param1.§`#+§)
         {
            this.§;!O§ |= b2internal::4!r;
         }
         if(param1.§"$'§)
         {
            this.§;!O§ |= b2internal::2"y;
         }
         if(param1.§&!z§)
         {
            this.§;!O§ |= b2internal::^"^;
         }
         if(param1.awake)
         {
            this.§;!O§ |= b2internal:: #;
         }
         if(param1.active)
         {
            this.§;!O§ |= b2internal::,G;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§5J§();
         this.m_sweep.§>#2§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§!#M§ = null;
         this.§,,§ = null;
         this.§<!t§ = null;
         this.§]$A§ = 0;
         this.§@!w§ = null;
         this.§0$9§ = null;
         this.§8!z§.SetV(param1.§#$,§);
         this.m_angularVelocity = param1.angularVelocity;
         this.§["8§ = param1.linearDamping;
         this.§9q§ = param1.angularDamping;
         this.§?$<§ = param1.§["R§;
         this.§[#T§.Set(0,0);
         this.§>p§ = 0;
         this.§<"L§ = 0;
         this.§'!A§ = param1.type;
         if(this.§'!A§ == b2_dynamicBody)
         {
            this.§7#B§ = 1;
            this.§&!s§ = 1;
         }
         else
         {
            this.§7#B§ = 0;
            this.§&!s§ = 0;
         }
         this.§^V§ = 0;
         this.§!$5§ = 0;
         this.§#"i§ = param1.§-#-§;
         this.§0#B§ = param1.§@"Z§;
         this.§+z§ = null;
         this.§`#v§ = 0;
      }
      
      private function §2#s§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§<P§().y,param2.§<P§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§^$§(_loc5_,param2.§<P§());
         _loc6_ = b2Math.§?"S§(_loc6_,param2.§@"U§());
         _loc6_ = b2Math.§^$§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§<"U§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§<"U§(param1.§<P§(),param2.§<P§())).Normalize();
         var _loc8_:* = b2Math.§4"P§(param1.§<P§(),param2.§@"U§()) > 0;
         param1.§<$&§(param2,_loc6_,_loc7_,_loc8_);
         param2.§<!u§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§"#O§ = null;
         if(this.m_world.§@!Q§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§9b§(this,this.m_xf,param1);
         if(this.§;!O§ & b2internal::,G)
         {
            _loc3_ = this.m_world.§7"t§.§@!3§;
            _loc2_.§-"g§(_loc3_,this.m_xf);
         }
         _loc2_.§0$9§ = this.§+z§;
         this.§+z§ = _loc2_;
         ++this.§`#v§;
         _loc2_.m_body = this;
         if(_loc2_.§@#w§ > 0)
         {
            this.ResetMassData();
         }
         this.m_world.§;!O§ |= b2World.§`"H§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §3"T§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§"#O§ = null;
         if(this.m_world.§@!Q§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§+z§;
         var _loc3_:b2Fixture = null;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§0$9§ = param1.§0$9§;
               }
               else
               {
                  this.§+z§ = param1.§0$9§;
               }
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§0$9§;
         }
         var _loc5_:b2ContactEdge = this.§<!t§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§?"B§;
            _loc5_ = _loc5_.§0!>§;
            _loc7_ = _loc6_.§7"-§();
            _loc8_ = _loc6_.§5"7§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§7"t§.§-!2§(_loc6_);
            }
         }
         if(this.§;!O§ & b2internal::,G)
         {
            _loc9_ = this.m_world.§7"t§.§@!3§;
            param1.§<v§(_loc9_);
         }
         param1.§-!2§();
         param1.m_body = null;
         param1.§0$9§ = null;
         --this.§`#v§;
         this.ResetMassData();
      }
      
      public function §7!v§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§@!Q§() == true)
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
         var _loc6_:§"#O§ = this.m_world.§7"t§.§@!3§;
         _loc3_ = this.§+z§;
         while(_loc3_)
         {
            _loc3_.§5$D§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§0$9§;
         }
         this.m_world.§7"t§.§4!X§();
      }
      
      public function §"#§(param1:b2Transform) : void
      {
         this.§7!v§(param1.position,param1.GetAngle());
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
         this.§7!v§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§7!v§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §;"q§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§'!A§ == b2_staticBody)
         {
            return;
         }
         this.§8!z§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§8!z§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§'!A§ == b2_staticBody)
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
         _loc1_.type = this.§52§();
         _loc1_.§&!z§ = (this.§;!O§ & b2internal::^"^) == b2internal::^"^;
         _loc1_.angle = this.GetAngle();
         _loc1_.angularDamping = this.§9q§;
         _loc1_.angularVelocity = this.m_angularVelocity;
         _loc1_.§"$'§ = (this.§;!O§ & b2internal::2"y) == b2internal::2"y;
         _loc1_.§`#+§ = (this.§;!O§ & b2internal::4!r) == b2internal::4!r;
         _loc1_.awake = (this.§;!O§ & b2internal:: #) == b2internal:: #;
         _loc1_.linearDamping = this.§["8§;
         _loc1_.§#$,§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§@"Z§ = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§'!A§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§[#T§.x += param1.x;
         this.§[#T§.y += param1.y;
         this.§>p§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §9!4§(param1:Number) : void
      {
         if(this.§'!A§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§>p§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§'!A§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§8!z§.x += this.§&!s§ * param1.x;
         this.§8!z§.y += this.§&!s§ * param1.y;
         this.m_angularVelocity += this.§!$5§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function § ^§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.GetDefinition());
         var _loc8_:b2Fixture = _loc5_.§+z§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§0$9§;
               if(_loc7_)
               {
                  _loc7_.§0$9§ = _loc13_;
               }
               else
               {
                  _loc5_.§+z§ = _loc13_;
               }
               --_loc5_.§`#v§;
               _loc8_.§0$9§ = _loc6_.§+z§;
               _loc6_.§+z§ = _loc8_;
               ++_loc6_.§`#v§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§0$9§;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§<"U§(_loc2_,b2Math.§;#r§(_loc3_,b2Math.§?"S§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§<"U§(_loc2_,b2Math.§;#r§(_loc3_,b2Math.§?"S§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§8" §();
         _loc6_.§8" §();
         return _loc6_;
      }
      
      public function §<!8§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§+z§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§0$9§;
            --param1.§`#v§;
            _loc2_.§0$9§ = this.§+z§;
            this.§+z§ = _loc2_;
            ++this.§`#v§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§`#v§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         _loc3_.GetWorldCenter();
         _loc4_.GetWorldCenter();
         _loc3_.GetLinearVelocity().Copy();
         _loc4_.GetLinearVelocity().Copy();
         Number(_loc3_.GetAngularVelocity());
         Number(_loc4_.GetAngularVelocity());
         _loc3_.ResetMassData();
         this.§8" §();
      }
      
      public function GetMass() : Number
      {
         return this.§7#B§;
      }
      
      public function § "h§() : Number
      {
         return this.§^V§;
      }
      
      public function §%$?§(param1:b2MassData) : void
      {
         param1.§[,§ = this.§7#B§;
         param1.§0#N§ = this.§^V§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §9"J§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§@!Q§() == false);
         if(this.m_world.§@!Q§() == true)
         {
            return;
         }
         if(this.§'!A§ != b2_dynamicBody)
         {
            return;
         }
         this.§&!s§ = 0;
         this.§^V§ = 0;
         this.§!$5§ = 0;
         this.§7#B§ = param1.§[,§;
         if(this.§7#B§ <= 0)
         {
            this.§7#B§ = 1;
         }
         this.§&!s§ = 1 / this.§7#B§;
         if(param1.§0#N§ > 0 && (this.§;!O§ & b2internal::2"y) == 0)
         {
            this.§^V§ = param1.§0#N§ - this.§7#B§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§!$5§ = 1 / this.§^V§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§=!t§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§8!z§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§8!z§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.§7#B§ = 0;
         this.§&!s§ = 0;
         this.§^V§ = 0;
         this.§!$5§ = 0;
         this.m_sweep.localCenter.§5J§();
         if(this.§'!A§ == b2_staticBody || this.§'!A§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§ $+§(0,0);
         var _loc2_:b2Fixture = this.§+z§;
         while(_loc2_)
         {
            if(_loc2_.§@#w§ != 0)
            {
               _loc4_ = _loc2_.§%$?§();
               this.§7#B§ += _loc4_.§[,§;
               _loc1_.x += _loc4_.center.x * _loc4_.§[,§;
               _loc1_.y += _loc4_.center.y * _loc4_.§[,§;
               this.§^V§ += _loc4_.§0#N§;
            }
            _loc2_ = _loc2_.§0$9§;
         }
         if(this.§7#B§ > 0)
         {
            this.§&!s§ = 1 / this.§7#B§;
            _loc1_.x *= this.§&!s§;
            _loc1_.y *= this.§&!s§;
         }
         else
         {
            this.§7#B§ = 1;
            this.§&!s§ = 1;
         }
         if(this.§^V§ > 0 && (this.§;!O§ & b2internal::2"y) == 0)
         {
            this.§^V§ -= this.§7#B§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§^V§ *= this.§#"i§;
            b2Settings.b2Assert(this.§^V§ > 0);
            this.§!$5§ = 1 / this.§^V§;
         }
         else
         {
            this.§^V§ = 0;
            this.§!$5§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§=!t§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§8!z§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§8!z§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §="g§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`!X§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5v§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§5L§(this.m_xf.R,param1);
      }
      
      public function §?!I§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§8!z§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§8!z§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §7!y§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§8!z§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§8!z§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §?H§() : Number
      {
         return this.§["8§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§["8§ = param1;
      }
      
      public function §!$A§() : Number
      {
         return this.§9q§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§9q§ = param1;
      }
      
      public function §!!p§() : Number
      {
         return this.§?$<§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§?$<§ = param1;
      }
      
      public function SetType(param1:uint) : void
      {
         if(this.§'!A§ == param1)
         {
            return;
         }
         this.§'!A§ = param1;
         this.ResetMassData();
         if(this.§'!A§ == b2_staticBody)
         {
            this.§8!z§.§5J§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§[#T§.§5J§();
         this.§>p§ = 0;
         var _loc2_:b2ContactEdge = this.§<!t§;
         while(_loc2_)
         {
            _loc2_.§?"B§.§?"8§();
            _loc2_ = _loc2_.§0!>§;
         }
      }
      
      public function §52§() : uint
      {
         return this.§'!A§;
      }
      
      public function SetBullet(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!O§ |= b2internal::4!r;
         }
         else
         {
            this.§;!O§ &= ~b2internal::4!r;
         }
      }
      
      public function § #H§() : Boolean
      {
         return (this.§;!O§ & b2internal::4!r) == b2internal::4!r;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!O§ |= b2internal::^"^;
         }
         else
         {
            this.§;!O§ &= ~b2internal::^"^;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!O§ |= b2internal:: #;
            this.§<"L§ = 0;
         }
         else
         {
            this.§;!O§ &= ~b2internal:: #;
            this.§<"L§ = 0;
            this.§8!z§.§5J§();
            this.m_angularVelocity = 0;
            this.§[#T§.§5J§();
            this.§>p§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§;!O§ & b2internal:: #) == b2internal:: #;
      }
      
      public function §'"T§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!O§ |= b2internal::2"y;
         }
         else
         {
            this.§;!O§ &= ~b2internal::2"y;
         }
         this.ResetMassData();
      }
      
      public function §0$ §() : Boolean
      {
         return (this.§;!O§ & b2internal::2"y) == b2internal::2"y;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc2_:§"#O§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§6!1§())
         {
            return;
         }
         if(param1)
         {
            this.§;!O§ |= b2internal::,G;
            _loc2_ = this.m_world.§7"t§.§@!3§;
            _loc3_ = this.§+z§;
            while(_loc3_)
            {
               _loc3_.§-"g§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§0$9§;
            }
         }
         else
         {
            this.§;!O§ &= ~b2internal::,G;
            _loc2_ = this.m_world.§7"t§.§@!3§;
            _loc3_ = this.§+z§;
            while(_loc3_)
            {
               _loc3_.§<v§(_loc2_);
               _loc3_ = _loc3_.§0$9§;
            }
            _loc4_ = this.§<!t§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§0!>§;
               this.m_world.§7"t§.§-!2§(_loc5_.§?"B§);
            }
            this.§<!t§ = null;
         }
      }
      
      public function §6!1§() : Boolean
      {
         return (this.§;!O§ & b2internal::,G) == b2internal::,G;
      }
      
      public function §1"I§() : Boolean
      {
         return (this.§;!O§ & b2internal::^"^) == b2internal::^"^;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§+z§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§!#M§;
      }
      
      public function §0!?§() : b2ControllerEdge
      {
         return this.§,,§;
      }
      
      public function §+$$§() : b2ContactEdge
      {
         return this.§<!t§;
      }
      
      public function §+c§() : b2Body
      {
         return this.§0$9§;
      }
      
      public function GetUserData() : *
      {
         return this.§0#B§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§0#B§ = param1;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §8" §() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §2!,§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§"#O§ = this.m_world.§7"t§.§@!3§;
         _loc4_ = this.§+z§;
         while(_loc4_)
         {
            _loc4_.§5$D§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§0$9§;
         }
      }
      
      b2internal function §8$0§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §1$=§(param1:b2Body) : Boolean
      {
         if(this.§'!A§ != b2_dynamicBody && param1.§'!A§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§!#M§;
         while(_loc2_)
         {
            if(_loc2_.§2#§ == param1)
            {
               if(_loc2_.joint.§6" § == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§0!>§;
         }
         return true;
      }
      
      public function SetForcedContactFiltering(param1:Boolean) : void
      {
         this.§8">§ = param1;
      }
      
      b2internal function §=!&§(param1:Number) : void
      {
         this.m_sweep.§=!&§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§8$0§();
      }
   }
}
