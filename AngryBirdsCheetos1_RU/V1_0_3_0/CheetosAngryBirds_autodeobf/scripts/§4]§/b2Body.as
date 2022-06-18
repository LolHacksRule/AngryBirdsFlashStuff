package §4]§
{
   import §"!b§.b2ControllerEdge;
   import §"x§.b2EdgeShape;
   import §"x§.b2MassData;
   import §"x§.b2Shape;
   import §#,§.b2Settings;
   import §#,§.b2internal;
   import §&U§.b2Contact;
   import §&U§.b2ContactEdge;
   import §7$§.§%!"§;
   import §8<§.b2JointEdge;
   import §[R§.b2Mat22;
   import §[R§.b2Math;
   import §[R§.b2Sweep;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var §[!V§:b2Transform = new b2Transform();
      
      b2internal static var §?$§:uint = 1;
      
      b2internal static var §3C§:uint = 2;
      
      b2internal static var §+h§:uint = 4;
      
      b2internal static var §]!6§:uint = 8;
      
      b2internal static var §#![§:uint = 16;
      
      b2internal static var §^6§:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var §0!A§:uint;
      
      b2internal var §%V§:int;
      
      b2internal var §]b§:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var §;!8§:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var §"!N§:b2Vec2;
      
      b2internal var §%!1§:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var §-%§:b2Body;
      
      b2internal var § !P§:b2Body;
      
      b2internal var §-!"§:b2Fixture;
      
      b2internal var §=P§:int;
      
      b2internal var §'B§:b2ControllerEdge;
      
      b2internal var §1!G§:int;
      
      b2internal var §8!,§:b2JointEdge;
      
      b2internal var §`]§:b2ContactEdge;
      
      b2internal var §7![§:Number;
      
      b2internal var §1c§:Number;
      
      b2internal var §'<§:Number;
      
      b2internal var §1!`§:Number;
      
      b2internal var §5!&§:Number;
      
      b2internal var §-t§:Number;
      
      b2internal var §#!C§:Number;
      
      b2internal var §9!,§:Number;
      
      private var §,7§;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.§;!8§ = new b2Vec2();
         this.§"!N§ = new b2Vec2();
         super();
         this.§0!A§ = 0;
         if(param1.§%X§)
         {
            this.§0!A§ |= b2internal::]!6;
         }
         if(param1.§!i§)
         {
            this.§0!A§ |= b2internal::#![;
         }
         if(param1.§?n§)
         {
            this.§0!A§ |= b2internal::+h;
         }
         if(param1.§;0§)
         {
            this.§0!A§ |= b2internal::3C;
         }
         if(param1.§#i§)
         {
            this.§0!A§ |= b2internal::^6;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.§0&§();
         this.m_sweep.§<!"§ = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.§8!,§ = null;
         this.§'B§ = null;
         this.§`]§ = null;
         this.§1!G§ = 0;
         this.§-%§ = null;
         this.§ !P§ = null;
         this.§;!8§.SetV(param1.§%[§);
         this.m_angularVelocity = param1.§-W§;
         this.§-t§ = param1.§;!&§;
         this.§#!C§ = param1.§3!F§;
         this.§"!N§.Set(0,0);
         this.§%!1§ = 0;
         this.§9!,§ = 0;
         this.§%V§ = param1.type;
         if(this.§%V§ == b2_dynamicBody)
         {
            this.§7![§ = 1;
            this.§1c§ = 1;
         }
         else
         {
            this.§7![§ = 0;
            this.§1c§ = 0;
         }
         this.§'<§ = 0;
         this.§1!`§ = 0;
         this.§5!&§ = param1.§`7§;
         this.§,7§ = param1.§5!_§;
         this.§-!"§ = null;
         this.§=P§ = 0;
      }
      
      private function §9!0§(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.§+!R§().y,param2.§+!R§().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.§2X§(_loc5_,param2.§+!R§());
         _loc6_ = b2Math.§9!A§(_loc6_,param2.§'L§());
         _loc6_ = b2Math.§2X§(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.§"Q§(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.§"Q§(param1.§+!R§(),param2.§+!R§())).Normalize();
         var _loc8_:* = b2Math.§@!#§(param1.§+!R§(),param2.§'L§()) > 0;
         param1.§&'§(param2,_loc6_,_loc7_,_loc8_);
         param2.§?s§(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function §6!D§(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:§%!"§ = null;
         if(this.m_world.§1R§() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.§[?§(this,this.m_xf,param1);
         if(this.§0!A§ & b2internal::^6)
         {
            _loc3_ = this.m_world.§"!4§.§,!'§;
            _loc2_.§>!&§(_loc3_,this.m_xf);
         }
         _loc2_.§ !P§ = this.§-!"§;
         this.§-!"§ = _loc2_;
         ++this.§=P§;
         _loc2_.m_body = this;
         if(_loc2_.§8%§ > 0)
         {
            this.§!!9§();
         }
         this.m_world.§0!A§ |= b2World.§+!!§;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.§6!D§(_loc3_);
      }
      
      public function §`w§(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:§%!"§ = null;
         if(this.m_world.§1R§() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.§-!"§;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.§ !P§ = param1.§ !P§;
               }
               else
               {
                  this.§-!"§ = param1.§ !P§;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.§ !P§;
         }
         var _loc5_:b2ContactEdge = this.§`]§;
         while(_loc5_)
         {
            _loc6_ = _loc5_.§#!b§;
            _loc5_ = _loc5_.§5E§;
            _loc7_ = _loc6_.§?O§();
            _loc8_ = _loc6_.§-K§();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.§"!4§.§^!K§(_loc6_);
            }
         }
         if(this.§0!A§ & b2internal::^6)
         {
            _loc9_ = this.m_world.§"!4§.§,!'§;
            param1.§>;§(_loc9_);
         }
         param1.§^!K§();
         param1.m_body = null;
         param1.§ !P§ = null;
         --this.§=P§;
         this.§!!9§();
      }
      
      public function §`!5§(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.§1R§() == true)
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
         var _loc6_:§%!"§ = this.m_world.§"!4§.§,!'§;
         _loc3_ = this.§-!"§;
         while(_loc3_)
         {
            _loc3_.§5S§(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.§ !P§;
         }
         this.m_world.§"!4§.§ c§();
      }
      
      public function §1l§(param1:b2Transform) : void
      {
         this.§`!5§(param1.position,param1.GetAngle());
      }
      
      public function §5[§() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function §,t§(param1:b2Vec2) : void
      {
         this.§`!5§(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function §?!Z§(param1:Number) : void
      {
         this.§`!5§(this.GetPosition(),param1);
      }
      
      public function §9Q§() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function §,!=§() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.§%V§ == b2_staticBody)
         {
            return;
         }
         this.§;!8§.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.§;!8§;
      }
      
      public function §&![§(param1:Number) : void
      {
         if(this.§%V§ == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function §5W§() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function §6[§() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.§,!W§();
         _loc1_.§?n§ = (this.§0!A§ & b2internal::+h) == b2internal::+h;
         _loc1_.angle = this.GetAngle();
         _loc1_.§3!F§ = this.§#!C§;
         _loc1_.§-W§ = this.m_angularVelocity;
         _loc1_.§!i§ = (this.§0!A§ & b2internal::#![) == b2internal::#![;
         _loc1_.§%X§ = (this.§0!A§ & b2internal::]!6) == b2internal::]!6;
         _loc1_.§;0§ = (this.§0!A§ & b2internal::3C) == b2internal::3C;
         _loc1_.§;!&§ = this.§-t§;
         _loc1_.§%[§.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.§5!_§ = this.GetUserData();
         return _loc1_;
      }
      
      public function §]!>§(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§%V§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§"!N§.x += param1.x;
         this.§"!N§.y += param1.y;
         this.§%!1§ += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function §function§(param1:Number) : void
      {
         if(this.§%V§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§%!1§ += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.§%V§ != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.§;!8§.x += this.§1c§ * param1.x;
         this.§;!8§.y += this.§1c§ * param1.y;
         this.m_angularVelocity += this.§1!`§ * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function §"6§(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.§5W§();
         var _loc4_:b2Vec2 = this.§9Q§();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.§8!&§(this.§6[§());
         var _loc8_:b2Fixture = _loc5_.§-!"§;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.§ !P§;
               if(_loc7_)
               {
                  _loc7_.§ !P§ = _loc13_;
               }
               else
               {
                  _loc5_.§-!"§ = _loc13_;
               }
               --_loc5_.§=P§;
               _loc8_.§ !P§ = _loc6_.§-!"§;
               _loc6_.§-!"§ = _loc8_;
               ++_loc6_.§=P§;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.§ !P§;
            }
         }
         _loc5_.§!!9§();
         _loc6_.§!!9§();
         var _loc9_:b2Vec2 = _loc5_.§9Q§();
         var _loc10_:b2Vec2 = _loc6_.§9Q§();
         var _loc11_:b2Vec2 = b2Math.§"Q§(_loc2_,b2Math.§0+§(_loc3_,b2Math.§9!A§(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.§"Q§(_loc2_,b2Math.§0+§(_loc3_,b2Math.§9!A§(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.§&![§(_loc3_);
         _loc6_.§&![§(_loc3_);
         _loc5_.§ !5§();
         _loc6_.§ !5§();
         return _loc6_;
      }
      
      public function §@!G§(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.§-!"§;
         while(_loc2_)
         {
            _loc11_ = _loc2_.§ !P§;
            --param1.§=P§;
            _loc2_.§ !P§ = this.§-!"§;
            this.§-!"§ = _loc2_;
            ++this.§=P§;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.§=P§ = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.§9Q§();
         var _loc6_:b2Vec2 = _loc4_.§9Q§();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.§5W§();
         var _loc10_:Number = _loc4_.§5W§();
         _loc3_.§!!9§();
         this.§ !5§();
      }
      
      public function GetMass() : Number
      {
         return this.§7![§;
      }
      
      public function § !F§() : Number
      {
         return this.§'<§;
      }
      
      public function §[@§(param1:b2MassData) : void
      {
         param1.§ !E§ = this.§7![§;
         param1.§^!Q§ = this.§'<§;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function §<o§(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.§1R§() == false);
         if(this.m_world.§1R§() == true)
         {
            return;
         }
         if(this.§%V§ != b2_dynamicBody)
         {
            return;
         }
         this.§1c§ = 0;
         this.§'<§ = 0;
         this.§1!`§ = 0;
         this.§7![§ = param1.§ !E§;
         if(this.§7![§ <= 0)
         {
            this.§7![§ = 1;
         }
         this.§1c§ = 1 / this.§7![§;
         if(param1.§^!Q§ > 0 && (this.§0!A§ & b2internal::#![) == 0)
         {
            this.§'<§ = param1.§^!Q§ - this.§7![§ * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.§1!`§ = 1 / this.§'<§;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.§#t§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§;!8§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.§;!8§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function §!!9§() : void
      {
         var _loc4_:b2MassData = null;
         this.§7![§ = 0;
         this.§1c§ = 0;
         this.§'<§ = 0;
         this.§1!`§ = 0;
         this.m_sweep.localCenter.§0&§();
         if(this.§%V§ == b2_staticBody || this.§%V§ == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.§7&§(0,0);
         var _loc2_:b2Fixture = this.§-!"§;
         while(_loc2_)
         {
            if(_loc2_.§8%§ != 0)
            {
               _loc4_ = _loc2_.§[@§();
               this.§7![§ += _loc4_.§ !E§;
               _loc1_.x += _loc4_.center.x * _loc4_.§ !E§;
               _loc1_.y += _loc4_.center.y * _loc4_.§ !E§;
               this.§'<§ += _loc4_.§^!Q§;
            }
            _loc2_ = _loc2_.§ !P§;
         }
         if(this.§7![§ > 0)
         {
            this.§1c§ = 1 / this.§7![§;
            _loc1_.x *= this.§1c§;
            _loc1_.y *= this.§1c§;
         }
         else
         {
            this.§7![§ = 1;
            this.§1c§ = 1;
         }
         if(this.§'<§ > 0 && (this.§0!A§ & b2internal::#![) == 0)
         {
            this.§'<§ -= this.§7![§ * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.§'<§ *= this.§5!&§;
            b2Settings.b2Assert(this.§'<§ > 0);
            this.§1!`§ = 1 / this.§'<§;
         }
         else
         {
            this.§'<§ = 0;
            this.§1!`§ = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.§#t§(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.§;!8§.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.§;!8§.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function §1K§(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§<§(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§&!C§(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.§6h§(this.m_xf.R,param1);
      }
      
      public function §5!<§(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.§;!8§.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.§;!8§.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function §]!§(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.§;!8§.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.§;!8§.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function §#!?§() : Number
      {
         return this.§-t§;
      }
      
      public function §=!Q§(param1:Number) : void
      {
         this.§-t§ = param1;
      }
      
      public function §^F§() : Number
      {
         return this.§#!C§;
      }
      
      public function §&!b§(param1:Number) : void
      {
         this.§#!C§ = param1;
      }
      
      public function §5!M§(param1:uint) : void
      {
         if(this.§%V§ == param1)
         {
            return;
         }
         this.§%V§ = param1;
         this.§!!9§();
         if(this.§%V§ == b2_staticBody)
         {
            this.§;!8§.§0&§();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.§"!N§.§0&§();
         this.§%!1§ = 0;
         var _loc2_:b2ContactEdge = this.§`]§;
         while(_loc2_)
         {
            _loc2_.§#!b§.§4w§();
            _loc2_ = _loc2_.§5E§;
         }
      }
      
      public function §,!W§() : uint
      {
         return this.§%V§;
      }
      
      public function §1?§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0!A§ |= b2internal::]!6;
         }
         else
         {
            this.§0!A§ &= ~b2internal::]!6;
         }
      }
      
      public function §2!N§() : Boolean
      {
         return (this.§0!A§ & b2internal::]!6) == b2internal::]!6;
      }
      
      public function §0!8§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0!A§ |= b2internal::+h;
         }
         else
         {
            this.§0!A§ &= ~b2internal::+h;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0!A§ |= b2internal::3C;
            this.§9!,§ = 0;
         }
         else
         {
            this.§0!A§ &= ~b2internal::3C;
            this.§9!,§ = 0;
            this.§;!8§.§0&§();
            this.m_angularVelocity = 0;
            this.§"!N§.§0&§();
            this.§%!1§ = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.§0!A§ & b2internal::3C) == b2internal::3C;
      }
      
      public function §>m§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0!A§ |= b2internal::#![;
         }
         else
         {
            this.§0!A§ &= ~b2internal::#![;
         }
         this.§!!9§();
      }
      
      public function §7F§() : Boolean
      {
         return (this.§0!A§ & b2internal::#![) == b2internal::#![;
      }
      
      public function §4k§(param1:Boolean) : void
      {
         var _loc2_:§%!"§ = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.§47§())
         {
            return;
         }
         if(param1)
         {
            this.§0!A§ |= b2internal::^6;
            _loc2_ = this.m_world.§"!4§.§,!'§;
            _loc3_ = this.§-!"§;
            while(_loc3_)
            {
               _loc3_.§>!&§(_loc2_,this.m_xf);
               _loc3_ = _loc3_.§ !P§;
            }
         }
         else
         {
            this.§0!A§ &= ~b2internal::^6;
            _loc2_ = this.m_world.§"!4§.§,!'§;
            _loc3_ = this.§-!"§;
            while(_loc3_)
            {
               _loc3_.§>;§(_loc2_);
               _loc3_ = _loc3_.§ !P§;
            }
            _loc4_ = this.§`]§;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.§5E§;
               this.m_world.§"!4§.§^!K§(_loc5_.§#!b§);
            }
            this.§`]§ = null;
         }
      }
      
      public function §47§() : Boolean
      {
         return (this.§0!A§ & b2internal::^6) == b2internal::^6;
      }
      
      public function §`!B§() : Boolean
      {
         return (this.§0!A§ & b2internal::+h) == b2internal::+h;
      }
      
      public function §&c§() : b2Fixture
      {
         return this.§-!"§;
      }
      
      public function §?7§() : b2JointEdge
      {
         return this.§8!,§;
      }
      
      public function §^i§() : b2ControllerEdge
      {
         return this.§'B§;
      }
      
      public function §2!I§() : b2ContactEdge
      {
         return this.§`]§;
      }
      
      public function §&6§() : b2Body
      {
         return this.§ !P§;
      }
      
      public function GetUserData() : *
      {
         return this.§,7§;
      }
      
      public function §?l§(param1:*) : void
      {
         this.§,7§ = param1;
      }
      
      public function §%'§() : b2World
      {
         return this.m_world;
      }
      
      b2internal function § !5§() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = §[!V§;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:§%!"§ = this.m_world.§"!4§.§,!'§;
         _loc4_ = this.§-!"§;
         while(_loc4_)
         {
            _loc4_.§5S§(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.§ !P§;
         }
      }
      
      b2internal function §-#§() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function §2!2§(param1:b2Body) : Boolean
      {
         if(this.§%V§ != b2_dynamicBody && param1.§%V§ != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.§8!,§;
         while(_loc2_)
         {
            if(_loc2_.§6!J§ == param1)
            {
               if(_loc2_.§#!,§.§2!5§ == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.§5E§;
         }
         return true;
      }
      
      b2internal function §?!>§(param1:Number) : void
      {
         this.m_sweep.§?!>§(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.§-#§();
      }
   }
}
