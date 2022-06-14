package §48§
{
   import §!D§.b2Contact;
   import §!D§.b2ContactEdge;
   import §#]§.b2Mat22;
   import §#]§.b2Math;
   import §#]§.b2Sweep;
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §55§.§0!K§;
   import §8k§.b2JointEdge;
   import §<!`§.b2EdgeShape;
   import §<!`§.b2MassData;
   import §<!`§.b2Shape;
   import §<!c§.b2ControllerEdge;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §@";§:b2Transform = new b2Transform();
      
      b2internal static var §1!t§:uint = 1;
      
      b2internal static var §+!#§:uint = 2;
      
      b2internal static var §9!t§:uint = 4;
      
      b2internal static var §'!V§:uint = 8;
      
      b2internal static var §2"A§:uint = 16;
      
      b2internal static var §+!!§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §`">§:uint;
      
      b2internal var §<";§:int;
      
      b2internal var §]!E§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §="8§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §&e§:b2Vec2;
      
      b2internal var §;!+§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §-!Q§:b2Body;
      
      b2internal var §%"@§:b2Body;
      
      b2internal var §^F§:b2Fixture;
      
      b2internal var §<!b§:int;
      
      b2internal var §+q§:b2ControllerEdge;
      
      b2internal var §,"4§:int;
      
      b2internal var §3n§:b2JointEdge;
      
      b2internal var §>"#§:b2ContactEdge;
      
      b2internal var §+J§:Number;
      
      b2internal var §["A§:Number;
      
      b2internal var §;B§:Number;
      
      b2internal var §"g§:Number;
      
      b2internal var §>j§:Number;
      
      b2internal var §?Q§:Number;
      
      b2internal var §1f§:Number;
      
      b2internal var §4!@§:Number;
      
      private var §6r§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§="8§ = new b2Vec2();
         this.§&e§ = new b2Vec2();
         super();
         this.§`">§ = 0;
         if(param1.§=-§)
         {
            this.§`">§ |= b2internal::'!V;
         }
         if(param1.§1?§)
         {
            this.§`">§ |= b2internal::2"A;
         }
         if(param1.§'"@§)
         {
            this.§`">§ |= b2internal::9!t;
         }
         if(param1.§<_§)
         {
            this.§`">§ |= b2internal::+!#;
         }
         if(param1.§'a§)
         {
            this.§`">§ |= b2internal::+!!;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§;v§();
         this.m_sweep.§0!O§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§3n§ = null;
         this.§+q§ = null;
         this.§>"#§ = null;
         this.§,"4§ = 0;
         this.§-!Q§ = null;
         this.§%"@§ = null;
         this.§="8§.SetV(param1.§5"0§);
         this.m_angularVelocity = param1.§!!a§;
         this.§?Q§ = param1.§,!;§;
         this.§1f§ = param1.§'!k§;
         this.§&e§.Set(0,0);
         this.§;!+§ = 0;
         this.§4!@§ = 0;
         this.§<";§ = param1.type;
         if(this.§<";§ == b2_dynamicBody)
         {
            this.§+J§ = 1;
            this.§["A§ = 1;
         }
         else
         {
            this.§+J§ = 0;
            this.§["A§ = 0;
         }
         this.§;B§ = 0;
         this.§"g§ = 0;
         this.§>j§ = param1.§-0§;
         this.§6r§ = param1.§6"&§;
         this.§^F§ = null;
         this.§<!b§ = 0;
      }
      
      private function §+l§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§&!S§().y,param2.§&!S§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§7B§(_loc5_,param2.§&!S§());
         _loc6_ = b2Math.§0!1§(_loc6_,param2.§8e§());
         _loc6_ = b2Math.§7B§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§=!i§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§=!i§(param1.§&!S§(),param2.§&!S§())).Normalize();
         var _loc8_:* = b2Math.§+'§(param1.§&!S§(),param2.§8e§()) > 0;
         param1.§+T§(param2,_loc6_,_loc7_,_loc8_);
         param2.§%E§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §%!?§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§0!K§ = null;
         if(this.m_world.§8Z§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§?!Q§(this,this.m_xf,param1);
         if(this.§`">§ & b2internal::+!!)
         {
            _loc3_ = this.m_world.§1Y§.§"!q§;
            _loc2_.§'X§(_loc3_,this.m_xf);
         }
         _loc2_.§%"@§ = this.§^F§;
         this.§^F§ = _loc2_;
         ++this.§<!b§;
         _loc2_.m_body = this;
         if(_loc2_.§]!l§ > 0)
         {
            this.§5"4§();
         }
         this.m_world.§`">§ |= b2World.§3g§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§%!?§(_loc3_);
      }
      
      public function §;!J§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§0!K§ = null;
         if(this.m_world.§8Z§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§^F§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§%"@§ = param1.§%"@§;
               }
               else
               {
                  this.§^F§ = param1.§%"@§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§%"@§;
         }
         var _loc5_:b2ContactEdge = this.§>"#§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§0q§;
            _loc5_ = _loc5_.§5"&§;
            _loc7_ = _loc6_.§5§();
            _loc8_ = _loc6_.§]h§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§1Y§.§'S§(_loc6_);
            }
         }
         if(this.§`">§ & b2internal::+!!)
         {
            _loc9_ = this.m_world.§1Y§.§"!q§;
            param1.§,K§(_loc9_);
         }
         param1.§'S§();
         param1.m_body = null;
         param1.§%"@§ = null;
         --this.§<!b§;
         this.§5"4§();
      }
      
      public function §'%§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§8Z§() == true)
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
         var _loc6_:§0!K§ = this.m_world.§1Y§.§"!q§;
         _loc3_ = this.§^F§;
         while(_loc3_)
         {
            _loc3_.§9x§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§%"@§;
         }
         this.m_world.§1Y§.§>!=§();
      }
      
      public function §1o§(param1:b2Transform) : void
      {
         this.§'%§(param1.position,param1.GetAngle());
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
         this.§'%§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §>"4§(param1:Number) : void
      {
         this.§'%§(this.GetPosition(),param1);
      }
      
      public function §6!j§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §!",§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§<";§ == b2_staticBody)
         {
            return;
         }
         this.§="8§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§="8§;
      }
      
      public function §=!Q§(param1:Number) : void
      {
         if(this.§<";§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §0!I§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §!"0§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§"r§();
         _loc1_.§'"@§ = (this.§`">§ & b2internal::9!t) == b2internal::9!t;
         _loc1_.angle = this.GetAngle();
         _loc1_.§'!k§ = this.§1f§;
         _loc1_.§!!a§ = this.m_angularVelocity;
         _loc1_.§1?§ = (this.§`">§ & b2internal::2"A) == b2internal::2"A;
         _loc1_.§=-§ = (this.§`">§ & b2internal::'!V) == b2internal::'!V;
         _loc1_.§<_§ = (this.§`">§ & b2internal::+!#) == b2internal::+!#;
         _loc1_.§,!;§ = this.§?Q§;
         _loc1_.§5"0§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§6"&§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §`!&§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§<";§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§&e§.x += param1.x;
         this.§&e§.y += param1.y;
         this.§;!+§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §-!;§(param1:Number) : void
      {
         if(this.§<";§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§;!+§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§<";§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§="8§.x += this.§["A§ * param1.x;
         this.§="8§.y += this.§["A§ * param1.y;
         this.m_angularVelocity += this.§"g§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §]!'§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§0!I§();
         var _loc4_:b2Vec2 = this.§6!j§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§,P§(this.§!"0§());
         var _loc8_:b2Fixture = _loc5_.§^F§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§%"@§;
               if(_loc7_)
               {
                  _loc7_.§%"@§ = _loc13_;
               }
               else
               {
                  _loc5_.§^F§ = _loc13_;
               }
               --_loc5_.§<!b§;
               _loc8_.§%"@§ = _loc6_.§^F§;
               _loc6_.§^F§ = _loc8_;
               ++_loc6_.§<!b§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§%"@§;
            }
         }
         _loc5_.§5"4§();
         _loc6_.§5"4§();
         var _loc9_:b2Vec2 = _loc5_.§6!j§();
         var _loc10_:b2Vec2 = _loc6_.§6!j§();
         var _loc11_:b2Vec2 = b2Math.§=!i§(_loc2_,b2Math.§#!'§(_loc3_,b2Math.§0!1§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§=!i§(_loc2_,b2Math.§#!'§(_loc3_,b2Math.§0!1§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§=!Q§(_loc3_);
         _loc6_.§=!Q§(_loc3_);
         _loc5_.§^!X§();
         _loc6_.§^!X§();
         return _loc6_;
      }
      
      public function § ";§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§^F§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§%"@§;
            --param1.§<!b§;
            _loc2_.§%"@§ = this.§^F§;
            this.§^F§ = _loc2_;
            ++this.§<!b§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§<!b§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§6!j§();
         var _loc6_:b2Vec2 = _loc4_.§6!j§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§0!I§();
         var _loc10_:Number = _loc4_.§0!I§();
         _loc3_.§5"4§();
         this.§^!X§();
      }
      
      public function GetMass() : Number
      {
         return this.§+J§;
      }
      
      public function §@!Q§() : Number
      {
         return this.§;B§;
      }
      
      public function §3Q§(param1:b2MassData) : void
      {
         param1.§7!^§ = this.§+J§;
         param1.§^s§ = this.§;B§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §]c§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§8Z§() == false);
         if(this.m_world.§8Z§() == true)
         {
            return;
         }
         if(this.§<";§ != b2_dynamicBody)
         {
            return;
         }
         this.§["A§ = 0;
         this.§;B§ = 0;
         this.§"g§ = 0;
         this.§+J§ = param1.§7!^§;
         if(this.§+J§ <= 0)
         {
            this.§+J§ = 1;
         }
         this.§["A§ = 1 / this.§+J§;
         if(param1.§^s§ > 0 && (this.§`">§ & b2internal::2"A) == 0)
         {
            this.§;B§ = param1.§^s§ - this.§+J§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§"g§ = 1 / this.§;B§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§2C§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§="8§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§="8§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §5"4§() : void
      {
         var _loc4_:b2MassData = null;
         this.§+J§ = 0;
         this.§["A§ = 0;
         this.§;B§ = 0;
         this.§"g§ = 0;
         this.m_sweep.localCenter.§;v§();
         if(this.§<";§ == b2_staticBody || this.§<";§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§>X§(0,0);
         var _loc2_:b2Fixture = this.§^F§;
         while(_loc2_)
         {
            if(_loc2_.§]!l§ != 0)
            {
               _loc4_ = _loc2_.§3Q§();
               this.§+J§ += _loc4_.§7!^§;
               _loc1_.x += _loc4_.center.x * _loc4_.§7!^§;
               _loc1_.y += _loc4_.center.y * _loc4_.§7!^§;
               this.§;B§ += _loc4_.§^s§;
            }
            _loc2_ = _loc2_.§%"@§;
         }
         if(this.§+J§ > 0)
         {
            this.§["A§ = 1 / this.§+J§;
            _loc1_.x *= this.§["A§;
            _loc1_.y *= this.§["A§;
         }
         else
         {
            this.§+J§ = 1;
            this.§["A§ = 1;
         }
         if(this.§;B§ > 0 && (this.§`">§ & b2internal::2"A) == 0)
         {
            this.§;B§ -= this.§+J§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§;B§ *= this.§>j§;
            b2Settings.b2Assert(this.§;B§ > 0);
            this.§"g§ = 1 / this.§;B§;
         }
         else
         {
            this.§;B§ = 0;
            this.§"g§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§2C§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§="8§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§="8§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §9!]§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§?"1§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§@!O§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%o§(this.m_xf.R,param1);
      }
      
      public function §+!"§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§="8§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§="8§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §1T§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§="8§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§="8§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §+!i§() : Number
      {
         return this.§?Q§;
      }
      
      public function §7"D§(param1:Number) : void
      {
         this.§?Q§ = param1;
      }
      
      public function §%U§() : Number
      {
         return this.§1f§;
      }
      
      public function §]'§(param1:Number) : void
      {
         this.§1f§ = param1;
      }
      
      public function SetType(param1:uint) : void
      {
         if(this.§<";§ == param1)
         {
            return;
         }
         this.§<";§ = param1;
         this.§5"4§();
         if(this.§<";§ == b2_staticBody)
         {
            this.§="8§.§;v§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§&e§.§;v§();
         this.§;!+§ = 0;
         var _loc2_:b2ContactEdge = this.§>"#§;
         while(_loc2_)
         {
            _loc2_.§0q§.§6"F§();
            _loc2_ = _loc2_.§5"&§;
         }
      }
      
      public function §"r§() : uint
      {
         return this.§<";§;
      }
      
      public function §6"B§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`">§ |= b2internal::'!V;
         }
         else
         {
            this.§`">§ &= ~b2internal::'!V;
         }
      }
      
      public function §^!O§() : Boolean
      {
         return (this.§`">§ & b2internal::'!V) == b2internal::'!V;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`">§ |= b2internal::9!t;
         }
         else
         {
            this.§`">§ &= ~b2internal::9!t;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`">§ |= b2internal::+!#;
            this.§4!@§ = 0;
         }
         else
         {
            this.§`">§ &= ~b2internal::+!#;
            this.§4!@§ = 0;
            this.§="8§.§;v§();
            this.m_angularVelocity = 0;
            this.§&e§.§;v§();
            this.§;!+§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§`">§ & b2internal::+!#) == b2internal::+!#;
      }
      
      public function §%z§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`">§ |= b2internal::2"A;
         }
         else
         {
            this.§`">§ &= ~b2internal::2"A;
         }
         this.§5"4§();
      }
      
      public function §?O§() : Boolean
      {
         return (this.§`">§ & b2internal::2"A) == b2internal::2"A;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc2_:§0!K§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.IsActive())
         {
            return;
         }
         if(param1)
         {
            this.§`">§ |= b2internal::+!!;
            _loc2_ = this.m_world.§1Y§.§"!q§;
            _loc3_ = this.§^F§;
            while(_loc3_)
            {
               _loc3_.§'X§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§%"@§;
            }
         }
         else
         {
            this.§`">§ &= ~b2internal::+!!;
            _loc2_ = this.m_world.§1Y§.§"!q§;
            _loc3_ = this.§^F§;
            while(_loc3_)
            {
               _loc3_.§,K§(_loc2_);
               _loc3_ = _loc3_.§%"@§;
            }
            _loc4_ = this.§>"#§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§5"&§;
               this.m_world.§1Y§.§'S§(_loc5_.§0q§);
            }
            this.§>"#§ = null;
         }
      }
      
      public function IsActive() : Boolean
      {
         return (this.§`">§ & b2internal::+!!) == b2internal::+!!;
      }
      
      public function §"!i§() : Boolean
      {
         return (this.§`">§ & b2internal::9!t) == b2internal::9!t;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§^F§;
      }
      
      public function §1$§() : b2JointEdge
      {
         return this.§3n§;
      }
      
      public function §3!3§() : b2ControllerEdge
      {
         return this.§+q§;
      }
      
      public function §0!@§() : b2ContactEdge
      {
         return this.§>"#§;
      }
      
      public function §8!+§() : b2Body
      {
         return this.§%"@§;
      }
      
      public function GetUserData() : *
      {
         return this.§6r§;
      }
      
      public function §<L§(param1:*) : void
      {
         this.§6r§ = param1;
      }
      
      public function §%!y§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §^!X§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §@";§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§0!K§ = this.m_world.§1Y§.§"!q§;
         _loc4_ = this.§^F§;
         while(_loc4_)
         {
            _loc4_.§9x§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§%"@§;
         }
      }
      
      b2internal function §,6§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §8N§(param1:b2Body) : Boolean
      {
         if(this.§<";§ != b2_dynamicBody && param1.§<";§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§3n§;
         while(_loc2_)
         {
            if(_loc2_.§ `§ == param1)
            {
               if(_loc2_.§;!W§.§6!p§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§5"&§;
         }
         return true;
      }
      
      b2internal function §61§(param1:Number) : void
      {
         this.m_sweep.§61§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§,6§();
      }
   }
}
