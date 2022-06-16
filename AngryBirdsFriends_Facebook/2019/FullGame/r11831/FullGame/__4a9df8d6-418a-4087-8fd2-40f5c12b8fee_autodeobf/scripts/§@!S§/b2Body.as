package §@!S§
{
   import § !g§.b2ControllerEdge;
   import §!H§.b2EdgeShape;
   import §!H§.b2MassData;
   import §!H§.b2Shape;
   import §1#]§.b2Contact;
   import §1#]§.b2ContactEdge;
   import §2_§.b2JointEdge;
   import §4$E§.§2!I§;
   import §?!C§.b2Mat22;
   import §?!C§.b2Math;
   import §?!C§.b2Sweep;
   import §?!C§.b2Transform;
   import §?!C§.b2Vec2;
   import §?N§.b2Settings;
   import §?N§.b2internal;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §&g§:b2Transform = new b2Transform();
      
      b2internal static var §"!Z§:uint = 1;
      
      b2internal static var §[!&§:uint = 2;
      
      b2internal static var §^"d§:uint = 4;
      
      b2internal static var §3#B§:uint = 8;
      
      b2internal static var §^u§:uint = 16;
      
      b2internal static var §6#7§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §!#z§:uint;
      
      b2internal var §5"F§:int;
      
      b2internal var §!%§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §!#p§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §2!#§:b2Vec2;
      
      b2internal var §+!C§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §@"4§:b2Body;
      
      b2internal var §@W§:b2Body;
      
      b2internal var §3D§:b2Fixture;
      
      b2internal var §^$%§:int;
      
      b2internal var §,!V§:b2ControllerEdge;
      
      b2internal var §?#6§:int;
      
      b2internal var §@"G§:b2JointEdge;
      
      b2internal var §<!a§:b2ContactEdge;
      
      b2internal var §<#F§:Number;
      
      b2internal var §;#>§:Number;
      
      b2internal var §7^§:Number;
      
      b2internal var §!#k§:Number;
      
      b2internal var §'"S§:Number;
      
      b2internal var §'$§:Number;
      
      b2internal var §<#W§:Number;
      
      b2internal var §>#;§:Number;
      
      b2internal var §5"J§:Number;
      
      b2internal var §<#A§:Boolean;
      
      private var §'n§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§!#p§ = new b2Vec2();
         this.§2!#§ = new b2Vec2();
         super();
         this.§!#z§ = 0;
         if(param1.§`#J§)
         {
            this.§!#z§ |= b2internal::3#B;
         }
         if(param1.§>$=§)
         {
            this.§!#z§ |= b2internal::^u;
         }
         if(param1.§^#&§)
         {
            this.§!#z§ |= b2internal::^"d;
         }
         if(param1.awake)
         {
            this.§!#z§ |= b2internal::[!&;
         }
         if(param1.active)
         {
            this.§!#z§ |= b2internal::6#7;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§1c§();
         this.m_sweep.§3$A§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§@"G§ = null;
         this.§,!V§ = null;
         this.§<!a§ = null;
         this.§?#6§ = 0;
         this.§@"4§ = null;
         this.§@W§ = null;
         this.§!#p§.SetV(param1.§2"i§);
         this.m_angularVelocity = param1.angularVelocity;
         this.§'$§ = param1.linearDamping;
         this.§<#W§ = param1.angularDamping;
         this.§5"J§ = param1.§9"Q§;
         this.§2!#§.Set(0,0);
         this.§+!C§ = 0;
         this.§>#;§ = 0;
         this.§5"F§ = param1.type;
         if(this.§5"F§ == b2_dynamicBody)
         {
            this.§<#F§ = 1;
            this.§;#>§ = 1;
         }
         else
         {
            this.§<#F§ = 0;
            this.§;#>§ = 0;
         }
         this.§7^§ = 0;
         this.§!#k§ = 0;
         this.§'"S§ = param1.§="g§;
         this.§'n§ = param1.§]",§;
         this.§3D§ = null;
         this.§^$%§ = 0;
      }
      
      private function §^q§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§8U§().y,param2.§8U§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§[#n§(_loc5_,param2.§8U§());
         _loc6_ = b2Math.§7!5§(_loc6_,param2.§%#C§());
         _loc6_ = b2Math.§[#n§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§%#D§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§%#D§(param1.§8U§(),param2.§8U§())).Normalize();
         var _loc8_:* = b2Math.§@$+§(param1.§8U§(),param2.§%#C§()) > 0;
         param1.§7"^§(param2,_loc6_,_loc7_,_loc8_);
         param2.§3^§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§2!I§ = null;
         if(this.m_world.§4"B§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§,"h§(this,this.m_xf,param1);
         if(this.§!#z§ & b2internal::6#7)
         {
            _loc3_ = this.m_world.§@"<§.§&# §;
            _loc2_.§@7§(_loc3_,this.m_xf);
         }
         _loc2_.§@W§ = this.§3D§;
         this.§3D§ = _loc2_;
         ++this.§^$%§;
         _loc2_.m_body = this;
         if(_loc2_.§5#u§ > 0)
         {
            this.ResetMassData();
         }
         this.m_world.§!#z§ |= b2World.§?$!§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function §<!'§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§2!I§ = null;
         if(this.m_world.§4"B§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§3D§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§@W§ = param1.§@W§;
               }
               else
               {
                  this.§3D§ = param1.§@W§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§@W§;
         }
         var _loc5_:b2ContactEdge = this.§<!a§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§4E§;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.§9$ §();
            _loc8_ = _loc6_.§@!D§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§@"<§.§;"@§(_loc6_);
            }
         }
         if(this.§!#z§ & b2internal::6#7)
         {
            _loc9_ = this.m_world.§@"<§.§&# §;
            param1.§=K§(_loc9_);
         }
         param1.§;"@§();
         param1.m_body = null;
         param1.§@W§ = null;
         --this.§^$%§;
         this.ResetMassData();
      }
      
      public function §'+§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§4"B§() == true)
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
         var _loc6_:§2!I§ = this.m_world.§@"<§.§&# §;
         _loc3_ = this.§3D§;
         while(_loc3_)
         {
            _loc3_.§0!<§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§@W§;
         }
         this.m_world.§@"<§.§2"9§();
      }
      
      public function §0!t§(param1:b2Transform) : void
      {
         this.§'+§(param1.position,param1.GetAngle());
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
         this.§'+§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.§'+§(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §[#Q§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§5"F§ == b2_staticBody)
         {
            return;
         }
         this.§!#p§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§!#p§;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.§5"F§ == b2_staticBody)
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
         _loc1_.type = this.§8!p§();
         _loc1_.§^#&§ = (this.§!#z§ & b2internal::^"d) == b2internal::^"d;
         _loc1_.angle = this.GetAngle();
         _loc1_.angularDamping = this.§<#W§;
         _loc1_.angularVelocity = this.m_angularVelocity;
         _loc1_.§>$=§ = (this.§!#z§ & b2internal::^u) == b2internal::^u;
         _loc1_.§`#J§ = (this.§!#z§ & b2internal::3#B) == b2internal::3#B;
         _loc1_.awake = (this.§!#z§ & b2internal::[!&) == b2internal::[!&;
         _loc1_.linearDamping = this.§'$§;
         _loc1_.§2"i§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§]",§ = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5"F§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§2!#§.x += param1.x;
         this.§2!#§.y += param1.y;
         this.§+!C§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §&!f§(param1:Number) : void
      {
         if(this.§5"F§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§+!C§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§5"F§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§!#p§.x += this.§;#>§ * param1.x;
         this.§!#p§.y += this.§;#>§ * param1.y;
         this.m_angularVelocity += this.§!#k§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §&S§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.GetDefinition());
         var _loc8_:b2Fixture = _loc5_.§3D§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§@W§;
               if(_loc7_)
               {
                  _loc7_.§@W§ = _loc13_;
               }
               else
               {
                  _loc5_.§3D§ = _loc13_;
               }
               --_loc5_.§^$%§;
               _loc8_.§@W§ = _loc6_.§3D§;
               _loc6_.§3D§ = _loc8_;
               ++_loc6_.§^$%§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§@W§;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.§%#D§(_loc2_,b2Math.§4!#§(_loc3_,b2Math.§7!5§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§%#D§(_loc2_,b2Math.§4!#§(_loc3_,b2Math.§7!5§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.§9"]§();
         _loc6_.§9"]§();
         return _loc6_;
      }
      
      public function § "L§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§3D§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§@W§;
            --param1.§^$%§;
            _loc2_.§@W§ = this.§3D§;
            this.§3D§ = _loc2_;
            ++this.§^$%§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§^$%§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.ResetMassData();
         this.§9"]§();
      }
      
      public function GetMass() : Number
      {
         return this.§<#F§;
      }
      
      public function §[$2§() : Number
      {
         return this.§7^§;
      }
      
      public function §;$'§(param1:b2MassData) : void
      {
         param1.§>#+§ = this.§<#F§;
         param1.§-$@§ = this.§7^§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §!#u§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§4"B§() == false);
         if(this.m_world.§4"B§() == true)
         {
            return;
         }
         if(this.§5"F§ != b2_dynamicBody)
         {
            return;
         }
         this.§;#>§ = 0;
         this.§7^§ = 0;
         this.§!#k§ = 0;
         this.§<#F§ = param1.§>#+§;
         if(this.§<#F§ <= 0)
         {
            this.§<#F§ = 1;
         }
         this.§;#>§ = 1 / this.§<#F§;
         if(param1.§-$@§ > 0 && (this.§!#z§ & b2internal::^u) == 0)
         {
            this.§7^§ = param1.§-$@§ - this.§<#F§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§!#k§ = 1 / this.§7^§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§9!0§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§!#p§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§!#p§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.§<#F§ = 0;
         this.§;#>§ = 0;
         this.§7^§ = 0;
         this.§!#k§ = 0;
         this.m_sweep.localCenter.§1c§();
         if(this.§5"F§ == b2_staticBody || this.§5"F§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§ $9§(0,0);
         var _loc2_:b2Fixture = this.§3D§;
         while(_loc2_)
         {
            if(_loc2_.§5#u§ != 0)
            {
               _loc4_ = _loc2_.§;$'§();
               this.§<#F§ += _loc4_.§>#+§;
               _loc1_.x += _loc4_.center.x * _loc4_.§>#+§;
               _loc1_.y += _loc4_.center.y * _loc4_.§>#+§;
               this.§7^§ += _loc4_.§-$@§;
            }
            _loc2_ = _loc2_.§@W§;
         }
         if(this.§<#F§ > 0)
         {
            this.§;#>§ = 1 / this.§<#F§;
            _loc1_.x *= this.§;#>§;
            _loc1_.y *= this.§;#>§;
         }
         else
         {
            this.§<#F§ = 1;
            this.§;#>§ = 1;
         }
         if(this.§7^§ > 0 && (this.§!#z§ & b2internal::^u) == 0)
         {
            this.§7^§ -= this.§<#F§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§7^§ *= this.§'"S§;
            b2Settings.b2Assert(this.§7^§ > 0);
            this.§!#k§ = 1 / this.§7^§;
         }
         else
         {
            this.§7^§ = 0;
            this.§!#k§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§9!0§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§!#p§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§!#p§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §,v§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§4!i§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§%X§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§?"K§(this.m_xf.R,param1);
      }
      
      public function § ",§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§!#p§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§!#p§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §@!w§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§!#p§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§!#p§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §-s§() : Number
      {
         return this.§'$§;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.§'$§ = param1;
      }
      
      public function §>!m§() : Number
      {
         return this.§<#W§;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.§<#W§ = param1;
      }
      
      public function §"!c§() : Number
      {
         return this.§5"J§;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.§5"J§ = param1;
      }
      
      public function SetType(param1:uint) : void
      {
         if(this.§5"F§ == param1)
         {
            return;
         }
         this.§5"F§ = param1;
         this.ResetMassData();
         if(this.§5"F§ == b2_staticBody)
         {
            this.§!#p§.§1c§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§2!#§.§1c§();
         this.§+!C§ = 0;
         var _loc2_:b2ContactEdge = this.§<!a§;
         while(_loc2_)
         {
            _loc2_.§4E§.§>$6§();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function §8!p§() : uint
      {
         return this.§5"F§;
      }
      
      public function SetBullet(param1:Boolean) : void
      {
         if(param1)
         {
            this.§!#z§ |= b2internal::3#B;
         }
         else
         {
            this.§!#z§ &= ~b2internal::3#B;
         }
      }
      
      public function §>$'§() : Boolean
      {
         return (this.§!#z§ & b2internal::3#B) == b2internal::3#B;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         if(param1)
         {
            this.§!#z§ |= b2internal::^"d;
         }
         else
         {
            this.§!#z§ &= ~b2internal::^"d;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§!#z§ |= b2internal::[!&;
            this.§>#;§ = 0;
         }
         else
         {
            this.§!#z§ &= ~b2internal::[!&;
            this.§>#;§ = 0;
            this.§!#p§.§1c§();
            this.m_angularVelocity = 0;
            this.§2!#§.§1c§();
            this.§+!C§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§!#z§ & b2internal::[!&) == b2internal::[!&;
      }
      
      public function §^"0§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§!#z§ |= b2internal::^u;
         }
         else
         {
            this.§!#z§ &= ~b2internal::^u;
         }
         this.ResetMassData();
      }
      
      public function §9#F§() : Boolean
      {
         return (this.§!#z§ & b2internal::^u) == b2internal::^u;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc2_:§2!I§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§,%§())
         {
            return;
         }
         if(param1)
         {
            this.§!#z§ |= b2internal::6#7;
            _loc2_ = this.m_world.§@"<§.§&# §;
            _loc3_ = this.§3D§;
            while(_loc3_)
            {
               _loc3_.§@7§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§@W§;
            }
         }
         else
         {
            this.§!#z§ &= ~b2internal::6#7;
            _loc2_ = this.m_world.§@"<§.§&# §;
            _loc3_ = this.§3D§;
            while(_loc3_)
            {
               _loc3_.§=K§(_loc2_);
               _loc3_ = _loc3_.§@W§;
            }
            _loc4_ = this.§<!a§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.§@"<§.§;"@§(_loc5_.§4E§);
            }
            this.§<!a§ = null;
         }
      }
      
      public function §,%§() : Boolean
      {
         return (this.§!#z§ & b2internal::6#7) == b2internal::6#7;
      }
      
      public function §!#y§() : Boolean
      {
         return (this.§!#z§ & b2internal::^"d) == b2internal::^"d;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.§3D§;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.§@"G§;
      }
      
      public function §]!r§() : b2ControllerEdge
      {
         return this.§,!V§;
      }
      
      public function §5!A§() : b2ContactEdge
      {
         return this.§<!a§;
      }
      
      public function §%$>§() : b2Body
      {
         return this.§@W§;
      }
      
      public function GetUserData() : *
      {
         return this.§'n§;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.§'n§ = param1;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      b2internal function §9"]§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §&g§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§2!I§ = this.m_world.§@"<§.§&# §;
         _loc4_ = this.§3D§;
         while(_loc4_)
         {
            _loc4_.§0!<§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§@W§;
         }
      }
      
      b2internal function §[X§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §`#m§(param1:b2Body) : Boolean
      {
         if(this.§5"F§ != b2_dynamicBody && param1.§5"F§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§@"G§;
         while(_loc2_)
         {
            if(_loc2_.§import§ == param1)
            {
               if(_loc2_.joint.§>#E§ == false)
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
         this.§<#A§ = param1;
      }
      
      b2internal function §&!O§(param1:Number) : void
      {
         this.m_sweep.§&!O§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§[X§();
      }
   }
}
