package §1!+§
{
   import §%!9§.b2Mat22;
   import §%!9§.b2Math;
   import §%!9§.b2Sweep;
   import §%!9§.b2Transform;
   import §%!9§.b2Vec2;
   import §'#?§.b2ControllerEdge;
   import §+#f§.b2EdgeShape;
   import §+#f§.b2MassData;
   import §+#f§.b2Shape;
   import §3!U§.b2JointEdge;
   import §7"^§.§'"J§;
   import §9#K§.b2Settings;
   import §9#K§.b2internal;
   import §[#L§.b2Contact;
   import §[#L§.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §+v§:b2Transform = new b2Transform();
      
      b2internal static var §>?§:uint = 1;
      
      b2internal static var §,$3§:uint = 2;
      
      b2internal static var §9!i§:uint = 4;
      
      b2internal static var §^!K§:uint = 8;
      
      b2internal static var §6;§:uint = 16;
      
      b2internal static var §,$6§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §9"i§:uint;
      
      b2internal var §9!a§:int;
      
      b2internal var §&#M§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var § ![§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §<$"§:b2Vec2;
      
      b2internal var §1$#§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §6T§:b2Body;
      
      b2internal var §3!=§:b2Body;
      
      b2internal var §0!9§:b2Fixture;
      
      b2internal var §=!D§:int;
      
      b2internal var §-W§:b2ControllerEdge;
      
      b2internal var §#r§:int;
      
      b2internal var §'o§:b2JointEdge;
      
      b2internal var §2#d§:b2ContactEdge;
      
      b2internal var §^#§:Number;
      
      b2internal var §"#z§:Number;
      
      b2internal var § $5§:Number;
      
      b2internal var §["p§:Number;
      
      b2internal var §""I§:Number;
      
      b2internal var §1^§:Number;
      
      b2internal var §]$8§:Number;
      
      b2internal var §<"C§:Number;
      
      b2internal var §0K§:Number;
      
      b2internal var §7m§:Boolean;
      
      private var §]"q§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§ ![§ = new b2Vec2();
         this.§<$"§ = new b2Vec2();
         super();
         this.§9"i§ = 0;
         if(param1.§="§)
         {
            this.§9"i§ |= b2internal::^!K;
         }
         if(param1.§##b§)
         {
            this.§9"i§ |= b2internal::6;;
         }
         if(param1.§>!P§)
         {
            this.§9"i§ |= b2internal::9!i;
         }
         if(param1.awake)
         {
            this.§9"i§ |= b2internal::,$3;
         }
         if(param1.active)
         {
            this.§9"i§ |= b2internal::,$6;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§2!9§();
         this.m_sweep.§0#T§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§'o§ = null;
         this.§-W§ = null;
         this.§2#d§ = null;
         this.§#r§ = 0;
         this.§6T§ = null;
         this.§3!=§ = null;
         this.§ ![§.SetV(param1.§1!b§);
         this.m_angularVelocity = param1.angularVelocity;
         this.§1^§ = param1.linearDamping;
         this.§]$8§ = param1.angularDamping;
         this.§0K§ = param1.§,"C§;
         this.§<$"§.Set(0,0);
         this.§1$#§ = 0;
         this.§<"C§ = 0;
         this.§9!a§ = param1.type;
         if(this.§9!a§ == b2_dynamicBody)
         {
            this.§^#§ = 1;
            this.§"#z§ = 1;
         }
         else
         {
            this.§^#§ = 0;
            this.§"#z§ = 0;
         }
         this.§ $5§ = 0;
         this.§["p§ = 0;
         this.§""I§ = param1.§&"3§;
         this.§]"q§ = param1.§1$%§;
         this.§0!9§ = null;
         this.§=!D§ = 0;
      }
      
      private function §0`§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§=!7§().y,param2.§=!7§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§?#A§(_loc5_,param2.§=!7§());
         _loc6_ = b2Math.§ "&§(_loc6_,param2.§[$;§());
         _loc6_ = b2Math.§?#A§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§3#t§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§3#t§(param1.§=!7§(),param2.§=!7§())).Normalize();
         var _loc8_:* = b2Math.§<"4§(param1.§=!7§(),param2.§[$;§()) > 0;
         param1.§ !e§(param2,_loc6_,_loc7_,_loc8_);
         param2.§7f§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§'"J§ = null;
         if(this.m_world.§<!n§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§@!7§(this,this.m_xf,param1);
         if(this.§9"i§ & b2internal::,$6)
         {
            _loc3_ = this.m_world.§5H§.§,#n§;
            _loc2_.§;!C§(_loc3_,this.m_xf);
         }
         _loc2_.§3!=§ = this.§0!9§;
         this.§0!9§ = _loc2_;
         ++this.§=!D§;
         _loc2_.m_body = this;
         if(_loc2_.§[!;§ > 0)
         {
            this.ResetMassData();
         }
         this.m_world.§9"i§ |= b2World.§!#[§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §8"J§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§'"J§ = null;
         if(this.m_world.§<!n§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§0!9§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§3!=§ = param1.§3!=§;
               }
               else
               {
                  this.§0!9§ = param1.§3!=§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§3!=§;
         }
         var _loc5_:b2ContactEdge = this.§2#d§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§,#v§;
            _loc5_ = _loc5_.§+!e§;
            _loc7_ = _loc6_.§]"v§();
            _loc8_ = _loc6_.§4!i§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§5H§.§@#V§(_loc6_);
            }
         }
         if(this.§9"i§ & b2internal::,$6)
         {
            _loc9_ = this.m_world.§5H§.§,#n§;
            param1.§-!"§(_loc9_);
         }
         param1.§@#V§();
         param1.m_body = null;
         param1.§3!=§ = null;
         --this.§=!D§;
         this.ResetMassData();
      }
      
      public function §9"T§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§<!n§() == true)
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
         var _loc6_:§'"J§ = this.m_world.§5H§.§,#n§;
         _loc3_ = this.§0!9§;
         while(_loc3_)
         {
            _loc3_.§ 4§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§3!=§;
         }
         this.m_world.§5H§.§'#q§();
      }
      
      public function §<!F§(param1:b2Transform) : void
      {
         this.§9"T§(param1.position,param1.GetAngle());
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
         this.§9"T§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§9"T§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §,`§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§9!a§ == b2_staticBody)
         {
            return;
         }
         this.§ ![§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§ ![§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§9!a§ == b2_staticBody)
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
         _loc1_.type = this.§%"+§();
         _loc1_.§>!P§ = (this.§9"i§ & b2internal::9!i) == b2internal::9!i;
         _loc1_.angle = this.GetAngle();
         _loc1_.angularDamping = this.§]$8§;
         _loc1_.angularVelocity = this.m_angularVelocity;
         _loc1_.§##b§ = (this.§9"i§ & b2internal::6;) == b2internal::6;;
         _loc1_.§="§ = (this.§9"i§ & b2internal::^!K) == b2internal::^!K;
         _loc1_.awake = (this.§9"i§ & b2internal::,$3) == b2internal::,$3;
         _loc1_.linearDamping = this.§1^§;
         _loc1_.§1!b§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§1$%§ = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§9!a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§<$"§.x += param1.x;
         this.§<$"§.y += param1.y;
         this.§1$#§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §8H§(param1:Number) : void
      {
         if(this.§9!a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§1$#§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§9!a§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§ ![§.x += this.§"#z§ * param1.x;
         this.§ ![§.y += this.§"#z§ * param1.y;
         this.m_angularVelocity += this.§["p§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §8#]§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.GetDefinition());
         var _loc8_:b2Fixture = _loc5_.§0!9§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§3!=§;
               if(_loc7_)
               {
                  _loc7_.§3!=§ = _loc13_;
               }
               else
               {
                  _loc5_.§0!9§ = _loc13_;
               }
               --_loc5_.§=!D§;
               _loc8_.§3!=§ = _loc6_.§0!9§;
               _loc6_.§0!9§ = _loc8_;
               ++_loc6_.§=!D§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§3!=§;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§3#t§(_loc2_,b2Math.§6#M§(_loc3_,b2Math.§ "&§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§3#t§(_loc2_,b2Math.§6#M§(_loc3_,b2Math.§ "&§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§+!"§();
         _loc6_.§+!"§();
         return _loc6_;
      }
      
      public function §6#"§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§0!9§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§3!=§;
            --param1.§=!D§;
            _loc2_.§3!=§ = this.§0!9§;
            this.§0!9§ = _loc2_;
            ++this.§=!D§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§=!D§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.ResetMassData();
         this.§+!"§();
      }
      
      public function GetMass() : Number
      {
         return this.§^#§;
      }
      
      public function §0!W§() : Number
      {
         return this.§ $5§;
      }
      
      public function §1"[§(param1:b2MassData) : void
      {
         param1.§;Y§ = this.§^#§;
         param1.§`P§ = this.§ $5§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §52§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§<!n§() == false);
         if(this.m_world.§<!n§() == true)
         {
            return;
         }
         if(this.§9!a§ != b2_dynamicBody)
         {
            return;
         }
         this.§"#z§ = 0;
         this.§ $5§ = 0;
         this.§["p§ = 0;
         this.§^#§ = param1.§;Y§;
         if(this.§^#§ <= 0)
         {
            this.§^#§ = 1;
         }
         this.§"#z§ = 1 / this.§^#§;
         if(param1.§`P§ > 0 && (this.§9"i§ & b2internal::6;) == 0)
         {
            this.§ $5§ = param1.§`P§ - this.§^#§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§["p§ = 1 / this.§ $5§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§^#j§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§ ![§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§ ![§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.§^#§ = 0;
         this.§"#z§ = 0;
         this.§ $5§ = 0;
         this.§["p§ = 0;
         this.m_sweep.localCenter.§2!9§();
         if(this.§9!a§ == b2_staticBody || this.§9!a§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§?"k§(0,0);
         var _loc2_:b2Fixture = this.§0!9§;
         while(_loc2_)
         {
            if(_loc2_.§[!;§ != 0)
            {
               _loc4_ = _loc2_.§1"[§();
               this.§^#§ += _loc4_.§;Y§;
               _loc1_.x += _loc4_.center.x * _loc4_.§;Y§;
               _loc1_.y += _loc4_.center.y * _loc4_.§;Y§;
               this.§ $5§ += _loc4_.§`P§;
            }
            _loc2_ = _loc2_.§3!=§;
         }
         if(this.§^#§ > 0)
         {
            this.§"#z§ = 1 / this.§^#§;
            _loc1_.x *= this.§"#z§;
            _loc1_.y *= this.§"#z§;
         }
         else
         {
            this.§^#§ = 1;
            this.§"#z§ = 1;
         }
         if(this.§ $5§ > 0 && (this.§9"i§ & b2internal::6;) == 0)
         {
            this.§ $5§ -= this.§^#§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§ $5§ *= this.§""I§;
            b2Settings.b2Assert(this.§ $5§ > 0);
            this.§["p§ = 1 / this.§ $5§;
         }
         else
         {
            this.§ $5§ = 0;
            this.§["p§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§^#j§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§ ![§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§ ![§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §]!g§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§`$%§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§=9§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%§(this.m_xf.R,param1);
      }
      
      public function §`"^§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§ ![§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§ ![§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §5"E§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§ ![§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§ ![§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §^!1§() : Number
      {
         return this.§1^§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§1^§ = param1;
      }
      
      public function §7"A§() : Number
      {
         return this.§]$8§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§]$8§ = param1;
      }
      
      public function §2"$§() : Number
      {
         return this.§0K§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§0K§ = param1;
      }
      
      public function SetType(param1:uint) : void
      {
         if(this.§9!a§ == param1)
         {
            return;
         }
         this.§9!a§ = param1;
         this.ResetMassData();
         if(this.§9!a§ == b2_staticBody)
         {
            this.§ ![§.§2!9§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§<$"§.§2!9§();
         this.§1$#§ = 0;
         var _loc2_:b2ContactEdge = this.§2#d§;
         while(_loc2_)
         {
            _loc2_.§,#v§.§8#x§();
            _loc2_ = _loc2_.§+!e§;
         }
      }
      
      public function §%"+§() : uint
      {
         return this.§9!a§;
      }
      
      public function SetBullet(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9"i§ |= b2internal::^!K;
         }
         else
         {
            this.§9"i§ &= ~b2internal::^!K;
         }
      }
      
      public function §?Z§() : Boolean
      {
         return (this.§9"i§ & b2internal::^!K) == b2internal::^!K;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9"i§ |= b2internal::9!i;
         }
         else
         {
            this.§9"i§ &= ~b2internal::9!i;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9"i§ |= b2internal::,$3;
            this.§<"C§ = 0;
         }
         else
         {
            this.§9"i§ &= ~b2internal::,$3;
            this.§<"C§ = 0;
            this.§ ![§.§2!9§();
            this.m_angularVelocity = 0;
            this.§<$"§.§2!9§();
            this.§1$#§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§9"i§ & b2internal::,$3) == b2internal::,$3;
      }
      
      public function §@#c§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9"i§ |= b2internal::6;;
         }
         else
         {
            this.§9"i§ &= ~b2internal::6;;
         }
         this.ResetMassData();
      }
      
      public function §]#s§() : Boolean
      {
         return (this.§9"i§ & b2internal::6;) == b2internal::6;;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc2_:§'"J§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§8#u§())
         {
            return;
         }
         if(param1)
         {
            this.§9"i§ |= b2internal::,$6;
            _loc2_ = this.m_world.§5H§.§,#n§;
            _loc3_ = this.§0!9§;
            while(_loc3_)
            {
               _loc3_.§;!C§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§3!=§;
            }
         }
         else
         {
            this.§9"i§ &= ~b2internal::,$6;
            _loc2_ = this.m_world.§5H§.§,#n§;
            _loc3_ = this.§0!9§;
            while(_loc3_)
            {
               _loc3_.§-!"§(_loc2_);
               _loc3_ = _loc3_.§3!=§;
            }
            _loc4_ = this.§2#d§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§+!e§;
               this.m_world.§5H§.§@#V§(_loc5_.§,#v§);
            }
            this.§2#d§ = null;
         }
      }
      
      public function §8#u§() : Boolean
      {
         return (this.§9"i§ & b2internal::,$6) == b2internal::,$6;
      }
      
      public function §'#n§() : Boolean
      {
         return (this.§9"i§ & b2internal::9!i) == b2internal::9!i;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§0!9§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§'o§;
      }
      
      public function §<!]§() : b2ControllerEdge
      {
         return this.§-W§;
      }
      
      public function §#"`§() : b2ContactEdge
      {
         return this.§2#d§;
      }
      
      public function §,=§() : b2Body
      {
         return this.§3!=§;
      }
      
      public function GetUserData() : *
      {
         return this.§]"q§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§]"q§ = param1;
      }
      
      public function §<!T§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §+!"§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §+v§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§'"J§ = this.m_world.§5H§.§,#n§;
         _loc4_ = this.§0!9§;
         while(_loc4_)
         {
            _loc4_.§ 4§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§3!=§;
         }
      }
      
      b2internal function §6!=§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §`$&§(param1:b2Body) : Boolean
      {
         if(this.§9!a§ != b2_dynamicBody && param1.§9!a§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§'o§;
         while(_loc2_)
         {
            if(_loc2_.§-#J§ == param1)
            {
               if(_loc2_.joint.§0!2§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§+!e§;
         }
         return true;
      }
      
      public function SetForcedContactFiltering(param1:Boolean) : void
      {
         this.§7m§ = param1;
      }
      
      b2internal function §""V§(param1:Number) : void
      {
         this.m_sweep.§""V§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§6!=§();
      }
   }
}
