package §+#$§
{
   import §1!2§.b2JointEdge;
   import §3"5§.§8t§;
   import §4!$§.b2EdgeShape;
   import §4!$§.b2MassData;
   import §4!$§.b2Shape;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §8[§.b2Contact;
   import §8[§.b2ContactEdge;
   import §["3§.b2ControllerEdge;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Sweep;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §5"C§:b2Transform = new b2Transform();
      
      b2internal static var §96§:uint = 1;
      
      b2internal static var §^"t§:uint = 2;
      
      b2internal static var §&J§:uint = 4;
      
      b2internal static var §-"%§:uint = 8;
      
      b2internal static var §;!4§:uint = 16;
      
      b2internal static var §<#M§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §6b§:uint;
      
      b2internal var §%!9§:int;
      
      b2internal var §[5§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var § #`§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §#r§:b2Vec2;
      
      b2internal var §?"4§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var § #&§:b2Body;
      
      b2internal var §!"!§:b2Body;
      
      b2internal var §<"v§:b2Fixture;
      
      b2internal var §?"m§:int;
      
      b2internal var §?`§:b2ControllerEdge;
      
      b2internal var §'"g§:int;
      
      b2internal var §%#J§:b2JointEdge;
      
      b2internal var §'#H§:b2ContactEdge;
      
      b2internal var §9#6§:Number;
      
      b2internal var §3#>§:Number;
      
      b2internal var §6"=§:Number;
      
      b2internal var §3"y§:Number;
      
      b2internal var set:Number;
      
      b2internal var §6"H§:Number;
      
      b2internal var each:Number;
      
      b2internal var §9-§:Number;
      
      b2internal var §]"`§:Number;
      
      private var §0!+§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§ #`§ = new b2Vec2();
         this.§#r§ = new b2Vec2();
         super();
         this.§6b§ = 0;
         if(param1.§%#2§)
         {
            this.§6b§ |= b2internal::-"%;
         }
         if(param1.§"D§)
         {
            this.§6b§ |= b2internal::;!4;
         }
         if(param1.§@!'§)
         {
            this.§6b§ |= b2internal::&J;
         }
         if(param1.§4!@§)
         {
            this.§6b§ |= b2internal::^"t;
         }
         if(param1.active)
         {
            this.§6b§ |= b2internal::<#M;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§&"Q§();
         this.m_sweep.§ #L§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§%#J§ = null;
         this.§?`§ = null;
         this.§'#H§ = null;
         this.§'"g§ = 0;
         this.§ #&§ = null;
         this.§!"!§ = null;
         this.§ #`§.SetV(param1.§1#1§);
         this.m_angularVelocity = param1.§,t§;
         this.§6"H§ = param1.§?"M§;
         this.each = param1.§>!f§;
         this.§]"`§ = param1.§"n§;
         this.§#r§.Set(0,0);
         this.§?"4§ = 0;
         this.§9-§ = 0;
         this.§%!9§ = param1.type;
         if(this.§%!9§ == b2_dynamicBody)
         {
            this.§9#6§ = 1;
            this.§3#>§ = 1;
         }
         else
         {
            this.§9#6§ = 0;
            this.§3#>§ = 0;
         }
         this.§6"=§ = 0;
         this.§3"y§ = 0;
         this.set = param1.§6"z§;
         this.§0!+§ = param1.§@"g§;
         this.§<"v§ = null;
         this.§?"m§ = 0;
      }
      
      private function §0# §(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§7!&§().y,param2.§7!&§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§]!b§(_loc5_,param2.§7!&§());
         _loc6_ = b2Math.§8!3§(_loc6_,param2.§+!s§());
         _loc6_ = b2Math.§]!b§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§6!<§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§6!<§(param1.§7!&§(),param2.§7!&§())).Normalize();
         var _loc8_:* = b2Math.§+#>§(param1.§7!&§(),param2.§+!s§()) > 0;
         param1.§ "H§(param2,_loc6_,_loc7_,_loc8_);
         param2.§'"x§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§8t§ = null;
         if(this.m_world.§]#`§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§=!S§(this,this.m_xf,param1);
         if(this.§6b§ & b2internal::<#M)
         {
            _loc3_ = this.m_world.§1P§.§7#U§;
            _loc2_.§ #Q§(_loc3_,this.m_xf);
         }
         _loc2_.§!"!§ = this.§<"v§;
         this.§<"v§ = _loc2_;
         ++this.§?"m§;
         _loc2_.m_body = this;
         if(_loc2_.§7!P§ > 0)
         {
            this.ResetMassData();
         }
         this.m_world.§6b§ |= b2World.§#h§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §[!`§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§8t§ = null;
         if(this.m_world.§]#`§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§<"v§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§!"!§ = param1.§!"!§;
               }
               else
               {
                  this.§<"v§ = param1.§!"!§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§!"!§;
         }
         var _loc5_:b2ContactEdge = this.§'#H§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§>"6§;
            _loc5_ = _loc5_.§]!D§;
            _loc7_ = _loc6_.§?!@§();
            _loc8_ = _loc6_.§;"R§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§1P§.§;!"§(_loc6_);
            }
         }
         if(this.§6b§ & b2internal::<#M)
         {
            _loc9_ = this.m_world.§1P§.§7#U§;
            param1.§,X§(_loc9_);
         }
         param1.§;!"§();
         param1.m_body = null;
         param1.§!"!§ = null;
         --this.§?"m§;
         this.ResetMassData();
      }
      
      public function SetPositionAndAngle(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§]#`§() == true)
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
         var _loc6_:§8t§ = this.m_world.§1P§.§7#U§;
         _loc3_ = this.§<"v§;
         while(_loc3_)
         {
            _loc3_.§4!A§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§!"!§;
         }
         this.m_world.§1P§.§7"D§();
      }
      
      public function §3!M§(param1:b2Transform) : void
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
      
      public function §;#&§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §]";§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§%!9§ == b2_staticBody)
         {
            return;
         }
         this.§ #`§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§ #`§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§%!9§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §4#+§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§8! §();
         _loc1_.§@!'§ = (this.§6b§ & b2internal::&J) == b2internal::&J;
         _loc1_.angle = this.GetAngle();
         _loc1_.§>!f§ = this.each;
         _loc1_.§,t§ = this.m_angularVelocity;
         _loc1_.§"D§ = (this.§6b§ & b2internal::;!4) == b2internal::;!4;
         _loc1_.§%#2§ = (this.§6b§ & b2internal::-"%) == b2internal::-"%;
         _loc1_.§4!@§ = (this.§6b§ & b2internal::^"t) == b2internal::^"t;
         _loc1_.§?"M§ = this.§6"H§;
         _loc1_.§1#1§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§@"g§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §^2§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§%!9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§#r§.x += param1.x;
         this.§#r§.y += param1.y;
         this.§?"4§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §^"q§(param1:Number) : void
      {
         if(this.§%!9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§?"4§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§%!9§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§ #`§.x += this.§3#>§ * param1.x;
         this.§ #`§.y += this.§3#>§ * param1.y;
         this.m_angularVelocity += this.§3"y§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §'"O§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.§;#&§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.§4#+§());
         var _loc8_:b2Fixture = _loc5_.§<"v§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§!"!§;
               if(_loc7_)
               {
                  _loc7_.§!"!§ = _loc13_;
               }
               else
               {
                  _loc5_.§<"v§ = _loc13_;
               }
               --_loc5_.§?"m§;
               _loc8_.§!"!§ = _loc6_.§<"v§;
               _loc6_.§<"v§ = _loc8_;
               ++_loc6_.§?"m§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§!"!§;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.§;#&§();
         var _loc10_:b2Vec2 = _loc6_.§;#&§();
         var _loc11_:b2Vec2 = b2Math.§6!<§(_loc2_,b2Math.§7!m§(_loc3_,b2Math.§8!3§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§6!<§(_loc2_,b2Math.§7!m§(_loc3_,b2Math.§8!3§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§7,§();
         _loc6_.§7,§();
         return _loc6_;
      }
      
      public function §@"5§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§<"v§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§!"!§;
            --param1.§?"m§;
            _loc2_.§!"!§ = this.§<"v§;
            this.§<"v§ = _loc2_;
            ++this.§?"m§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§?"m§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§;#&§();
         var _loc6_:b2Vec2 = _loc4_.§;#&§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.ResetMassData();
         this.§7,§();
      }
      
      public function GetMass() : Number
      {
         return this.§9#6§;
      }
      
      public function §9z§() : Number
      {
         return this.§6"=§;
      }
      
      public function §5!O§(param1:b2MassData) : void
      {
         param1.§5"Z§ = this.§9#6§;
         param1.I = this.§6"=§;
         param1.§+#K§.SetV(this.m_sweep.localCenter);
      }
      
      public function §@!R§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§]#`§() == false);
         if(this.m_world.§]#`§() == true)
         {
            return;
         }
         if(this.§%!9§ != b2_dynamicBody)
         {
            return;
         }
         this.§3#>§ = 0;
         this.§6"=§ = 0;
         this.§3"y§ = 0;
         this.§9#6§ = param1.§5"Z§;
         if(this.§9#6§ <= 0)
         {
            this.§9#6§ = 1;
         }
         this.§3#>§ = 1 / this.§9#6§;
         if(param1.I > 0 && (this.§6b§ & b2internal::;!4) == 0)
         {
            this.§6"=§ = param1.I - this.§9#6§ * (param1.§+#K§.x * param1.§+#K§.x + param1.§+#K§.y * param1.§+#K§.y);
            this.§3"y§ = 1 / this.§6"=§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.§+#K§);
         this.m_sweep.c0.SetV(b2Math.§""$§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§ #`§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§ #`§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.§9#6§ = 0;
         this.§3#>§ = 0;
         this.§6"=§ = 0;
         this.§3"y§ = 0;
         this.m_sweep.localCenter.§&"Q§();
         if(this.§%!9§ == b2_staticBody || this.§%!9§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§+!S§(0,0);
         var _loc2_:b2Fixture = this.§<"v§;
         while(_loc2_)
         {
            if(_loc2_.§7!P§ != 0)
            {
               _loc4_ = _loc2_.§5!O§();
               this.§9#6§ += _loc4_.§5"Z§;
               _loc1_.x += _loc4_.§+#K§.x * _loc4_.§5"Z§;
               _loc1_.y += _loc4_.§+#K§.y * _loc4_.§5"Z§;
               this.§6"=§ += _loc4_.I;
            }
            _loc2_ = _loc2_.§!"!§;
         }
         if(this.§9#6§ > 0)
         {
            this.§3#>§ = 1 / this.§9#6§;
            _loc1_.x *= this.§3#>§;
            _loc1_.y *= this.§3#>§;
         }
         else
         {
            this.§9#6§ = 1;
            this.§3#>§ = 1;
         }
         if(this.§6"=§ > 0 && (this.§6b§ & b2internal::;!4) == 0)
         {
            this.§6"=§ -= this.§9#6§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§6"=§ *= this.set;
            b2Settings.b2Assert(this.§6"=§ > 0);
            this.§3"y§ = 1 / this.§6"=§;
         }
         else
         {
            this.§6"=§ = 0;
            this.§3"y§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§""$§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§ #`§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§ #`§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §8!b§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§="L§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§'!B§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§9#A§(this.m_xf.R,param1);
      }
      
      public function §1"E§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§ #`§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§ #`§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §>!B§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§ #`§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§ #`§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §1!&§() : Number
      {
         return this.§6"H§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§6"H§ = param1;
      }
      
      public function §!#1§() : Number
      {
         return this.each;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.each = param1;
      }
      
      public function §[!f§() : Number
      {
         return this.§]"`§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§]"`§ = param1;
      }
      
      public function §!"P§(param1:uint) : void
      {
         if(this.§%!9§ == param1)
         {
            return;
         }
         this.§%!9§ = param1;
         this.ResetMassData();
         if(this.§%!9§ == b2_staticBody)
         {
            this.§ #`§.§&"Q§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§#r§.§&"Q§();
         this.§?"4§ = 0;
         var _loc2_:b2ContactEdge = this.§'#H§;
         while(_loc2_)
         {
            _loc2_.§>"6§.§=y§();
            _loc2_ = _loc2_.§]!D§;
         }
      }
      
      public function §8! §() : uint
      {
         return this.§%!9§;
      }
      
      public function §@^§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6b§ |= b2internal::-"%;
         }
         else
         {
            this.§6b§ &= ~b2internal::-"%;
         }
      }
      
      public function §^!J§() : Boolean
      {
         return (this.§6b§ & b2internal::-"%) == b2internal::-"%;
      }
      
      public function § 2§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6b§ |= b2internal::&J;
         }
         else
         {
            this.§6b§ &= ~b2internal::&J;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6b§ |= b2internal::^"t;
            this.§9-§ = 0;
         }
         else
         {
            this.§6b§ &= ~b2internal::^"t;
            this.§9-§ = 0;
            this.§ #`§.§&"Q§();
            this.m_angularVelocity = 0;
            this.§#r§.§&"Q§();
            this.§?"4§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§6b§ & b2internal::^"t) == b2internal::^"t;
      }
      
      public function §'#$§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6b§ |= b2internal::;!4;
         }
         else
         {
            this.§6b§ &= ~b2internal::;!4;
         }
         this.ResetMassData();
      }
      
      public function §'#'§() : Boolean
      {
         return (this.§6b§ & b2internal::;!4) == b2internal::;!4;
      }
      
      public function §^#-§(param1:Boolean) : void
      {
         var _loc2_:§8t§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§%!L§())
         {
            return;
         }
         if(param1)
         {
            this.§6b§ |= b2internal::<#M;
            _loc2_ = this.m_world.§1P§.§7#U§;
            _loc3_ = this.§<"v§;
            while(_loc3_)
            {
               _loc3_.§ #Q§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§!"!§;
            }
         }
         else
         {
            this.§6b§ &= ~b2internal::<#M;
            _loc2_ = this.m_world.§1P§.§7#U§;
            _loc3_ = this.§<"v§;
            while(_loc3_)
            {
               _loc3_.§,X§(_loc2_);
               _loc3_ = _loc3_.§!"!§;
            }
            _loc4_ = this.§'#H§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§]!D§;
               this.m_world.§1P§.§;!"§(_loc5_.§>"6§);
            }
            this.§'#H§ = null;
         }
      }
      
      public function §%!L§() : Boolean
      {
         return (this.§6b§ & b2internal::<#M) == b2internal::<#M;
      }
      
      public function §&"§() : Boolean
      {
         return (this.§6b§ & b2internal::&J) == b2internal::&J;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§<"v§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§%#J§;
      }
      
      public function §@#]§() : b2ControllerEdge
      {
         return this.§?`§;
      }
      
      public function §9!K§() : b2ContactEdge
      {
         return this.§'#H§;
      }
      
      public function §>!>§() : b2Body
      {
         return this.§!"!§;
      }
      
      public function GetUserData() : *
      {
         return this.§0!+§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§0!+§ = param1;
      }
      
      public function §2q§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §7,§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §5"C§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§8t§ = this.m_world.§1P§.§7#U§;
         _loc4_ = this.§<"v§;
         while(_loc4_)
         {
            _loc4_.§4!A§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§!"!§;
         }
      }
      
      b2internal function §`"a§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §="N§(param1:b2Body) : Boolean
      {
         if(this.§%!9§ != b2_dynamicBody && param1.§%!9§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§%#J§;
         while(_loc2_)
         {
            if(_loc2_.other == param1)
            {
               if(_loc2_.joint.§6"m§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§]!D§;
         }
         return true;
      }
      
      b2internal function §?!'§(param1:Number) : void
      {
         this.m_sweep.§?!'§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§`"a§();
      }
   }
}
