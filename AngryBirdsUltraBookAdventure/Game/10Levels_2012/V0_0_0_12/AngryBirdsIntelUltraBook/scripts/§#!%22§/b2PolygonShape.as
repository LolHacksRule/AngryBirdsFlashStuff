package §#!"§
{
   import §&L§.*;
   import §'s§.*;
   import §+!,§.*;
   import §]=§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §-!2§:b2Mat22 = new b2Mat22();
       
      
      b2internal var §-a§:b2Vec2;
      
      b2internal var §`V§:Vector.<b2Vec2>;
      
      b2internal var §1g§:Vector.<b2Vec2>;
      
      b2internal var §>Q§:int;
      
      public function b2PolygonShape()
      {
         super();
         §32§ = §2r§;
         this.§-a§ = new b2Vec2();
         this.§`V§ = new Vector.<b2Vec2>();
         this.§1g§ = new Vector.<b2Vec2>();
         §5!`§ = b2Settings.b2_polygonRadius;
         this.§-a§.§5b§();
      }
      
      public static function §<d§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.§9[§(param1,param2);
         return _loc3_;
      }
      
      public static function §!f§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.§@!G§(param1,param2);
         return _loc3_;
      }
      
      public static function §=!M§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.§,=§(param1,param2);
         return _loc3_;
      }
      
      public static function §%9§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape = new b2PolygonShape();
         _loc5_.§`'§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §-!F§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.§@l§(param1,param2);
         return _loc3_;
      }
      
      public static function §1M§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
      {
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc3_ = new b2Vec2();
         var _loc4_:Number = 0;
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
            _loc11_ = _loc9_.x - 0;
            _loc12_ = _loc9_.y - 0;
            _loc13_ = _loc10_.x - 0;
            _loc14_ = _loc10_.y - 0;
            _loc15_ = _loc11_ * _loc14_ - _loc12_ * _loc13_;
            _loc16_ = 0.5 * _loc15_;
            _loc4_ += _loc16_;
            _loc3_.§4!0§(new b2Vec2(0,0));
            _loc3_.§4!0§(_loc9_);
            _loc3_.§4!0§(_loc10_);
            _loc3_.§%!U§(_loc16_ * 0.3333333333333333);
            _loc8_++;
         }
         _loc3_.x *= 1 / _loc4_;
         _loc3_.y *= 1 / _loc4_;
         return _loc3_;
      }
      
      b2internal static function §]8§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
      {
         var _loc4_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         _loc4_ = 0;
         while(_loc4_ < param3)
         {
            _loc5_[_loc4_] = param2[_loc4_];
            _loc4_++;
         }
         _loc5_[param3] = _loc5_[0];
         var _loc6_:Number = Number.MAX_VALUE;
         _loc4_ = 1;
         while(_loc4_ <= param3)
         {
            _loc7_ = _loc5_[int(_loc4_ - 1)];
            _loc8_ = _loc5_[_loc4_].x - _loc7_.x;
            _loc9_ = _loc5_[_loc4_].y - _loc7_.y;
            _loc10_ = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
            _loc8_ /= _loc10_;
            _loc9_ /= _loc10_;
            _loc11_ = -_loc9_;
            _loc12_ = _loc8_;
            _loc13_ = Number.MAX_VALUE;
            _loc14_ = Number.MAX_VALUE;
            _loc15_ = -Number.MAX_VALUE;
            _loc16_ = -Number.MAX_VALUE;
            _loc17_ = 0;
            while(_loc17_ < param3)
            {
               _loc19_ = _loc5_[_loc17_].x - _loc7_.x;
               _loc20_ = _loc5_[_loc17_].y - _loc7_.y;
               _loc21_ = _loc8_ * _loc19_ + _loc9_ * _loc20_;
               _loc22_ = _loc11_ * _loc19_ + _loc12_ * _loc20_;
               if(_loc21_ < _loc13_)
               {
                  _loc13_ = _loc21_;
               }
               if(_loc22_ < _loc14_)
               {
                  _loc14_ = _loc22_;
               }
               if(_loc21_ > _loc15_)
               {
                  _loc15_ = _loc21_;
               }
               if(_loc22_ > _loc16_)
               {
                  _loc16_ = _loc22_;
               }
               _loc17_++;
            }
            _loc18_ = (_loc15_ - _loc13_) * (_loc16_ - _loc14_);
            if(_loc18_ < 0.95 * _loc6_)
            {
               _loc6_ = _loc18_;
               param1.R.col1.x = _loc8_;
               param1.R.col1.y = _loc9_;
               param1.R.col2.x = _loc11_;
               param1.R.col2.y = _loc12_;
               _loc23_ = 0.5 * (_loc13_ + _loc15_);
               _loc24_ = 0.5 * (_loc14_ + _loc16_);
               _loc25_ = param1.R;
               param1.§>r§.x = _loc7_.x + (_loc25_.col1.x * _loc23_ + _loc25_.col2.x * _loc24_);
               param1.§>r§.y = _loc7_.y + (_loc25_.col1.y * _loc23_ + _loc25_.col2.y * _loc24_);
               param1.§&!I§.x = 0.5 * (_loc15_ - _loc13_);
               param1.§&!I§.y = 0.5 * (_loc16_ - _loc14_);
            }
            _loc4_++;
         }
      }
      
      override public function Copy() : b2Shape
      {
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         _loc1_.Set(this);
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         super.Set(param1);
         if(param1 is b2PolygonShape)
         {
            _loc2_ = param1 as b2PolygonShape;
            this.§-a§.SetV(_loc2_.§-a§);
            this.§>Q§ = _loc2_.§>Q§;
            this.§0!,§(this.§>Q§);
            _loc3_ = 0;
            while(_loc3_ < this.§>Q§)
            {
               this.§`V§[_loc3_].SetV(_loc2_.§`V§[_loc3_]);
               this.§1g§[_loc3_].SetV(_loc2_.§1g§[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §9[§(param1:Array, param2:Number = 0) : void
      {
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            _loc3_.push(_loc4_);
         }
         this.§@!G§(_loc3_,param2);
      }
      
      public function §@!G§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Vec2 = null;
         if(param2 == 0)
         {
            param2 = param1.length;
         }
         b2Settings.b2Assert(2 <= param2);
         this.§>Q§ = param2;
         this.§0!,§(param2);
         _loc3_ = 0;
         while(_loc3_ < this.§>Q§)
         {
            this.§`V§[_loc3_].SetV(param1[_loc3_]);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.§>Q§)
         {
            _loc4_ = _loc3_;
            _loc5_ = _loc3_ + 1 < this.§>Q§ ? int(_loc3_ + 1) : int(0);
            _loc6_ = b2Math.§;v§(this.§`V§[_loc5_],this.§`V§[_loc4_]);
            b2Settings.b2Assert(_loc6_.§+!I§() > Number.MIN_VALUE);
            this.§1g§[_loc3_].SetV(b2Math.§#!%§(_loc6_,1));
            this.§1g§[_loc3_].Normalize();
            _loc3_++;
         }
         this.§-a§ = §1M§(this.§`V§,this.§>Q§);
      }
      
      public function §,=§(param1:Number, param2:Number) : void
      {
         this.§>Q§ = 4;
         this.§0!,§(4);
         this.§`V§[0].Set(-param1,-param2);
         this.§`V§[1].Set(param1,-param2);
         this.§`V§[2].Set(param1,param2);
         this.§`V§[3].Set(-param1,param2);
         this.§1g§[0].Set(0,-1);
         this.§1g§[1].Set(1,0);
         this.§1g§[2].Set(0,1);
         this.§1g§[3].Set(-1,0);
         this.§-a§.§5b§();
      }
      
      public function §`'§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         this.§>Q§ = 4;
         this.§0!,§(4);
         this.§`V§[0].Set(-param1,-param2);
         this.§`V§[1].Set(param1,-param2);
         this.§`V§[2].Set(param1,param2);
         this.§`V§[3].Set(-param1,param2);
         this.§1g§[0].Set(0,-1);
         this.§1g§[1].Set(1,0);
         this.§1g§[2].Set(0,1);
         this.§1g§[3].Set(-1,0);
         this.§-a§ = param3;
         var _loc5_:b2Transform = new b2Transform();
         _loc5_.position = param3;
         _loc5_.R.Set(param4);
         var _loc6_:int = 0;
         while(_loc6_ < this.§>Q§)
         {
            this.§`V§[_loc6_] = b2Math.§?!L§(_loc5_,this.§`V§[_loc6_]);
            this.§1g§[_loc6_] = b2Math.§2!b§(_loc5_.R,this.§1g§[_loc6_]);
            _loc6_++;
         }
      }
      
      public function §@l§(param1:b2Vec2, param2:b2Vec2) : void
      {
         this.§>Q§ = 2;
         this.§0!,§(2);
         this.§`V§[0].SetV(param1);
         this.§`V§[1].SetV(param2);
         this.§-a§.x = 0.5 * (param1.x + param2.x);
         this.§-a§.y = 0.5 * (param1.y + param2.y);
         this.§1g§[0] = b2Math.§#!%§(b2Math.§;v§(param2,param1),1);
         this.§1g§[0].Normalize();
         this.§1g§[1].x = -this.§1g§[0].x;
         this.§1g§[1].y = -this.§1g§[0].y;
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc3_:b2Vec2 = null;
         var _loc10_:Number = NaN;
         var _loc4_:b2Mat22 = param1.R;
         var _loc5_:Number = param2.x - param1.position.x;
         var _loc6_:Number = param2.y - param1.position.y;
         var _loc7_:Number = _loc5_ * _loc4_.col1.x + _loc6_ * _loc4_.col1.y;
         var _loc8_:Number = _loc5_ * _loc4_.col2.x + _loc6_ * _loc4_.col2.y;
         var _loc9_:int = 0;
         while(_loc9_ < this.§>Q§)
         {
            _loc3_ = this.§`V§[_loc9_];
            _loc5_ = _loc7_ - _loc3_.x;
            _loc6_ = _loc8_ - _loc3_.y;
            _loc3_ = this.§1g§[_loc9_];
            _loc10_ = _loc3_.x * _loc5_ + _loc3_.y * _loc6_;
            if(_loc10_ > 0)
            {
               return false;
            }
            _loc9_++;
         }
         return true;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:b2Mat22 = null;
         var _loc9_:b2Vec2 = null;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc4_:Number = 0;
         var _loc5_:Number = param2.§>x§;
         _loc6_ = param2.p1.x - param3.position.x;
         _loc7_ = param2.p1.y - param3.position.y;
         _loc8_ = param3.R;
         var _loc10_:Number = _loc6_ * _loc8_.col1.x + _loc7_ * _loc8_.col1.y;
         var _loc11_:Number = _loc6_ * _loc8_.col2.x + _loc7_ * _loc8_.col2.y;
         _loc6_ = param2.p2.x - param3.position.x;
         _loc7_ = param2.p2.y - param3.position.y;
         _loc8_ = param3.R;
         var _loc12_:Number = _loc6_ * _loc8_.col1.x + _loc7_ * _loc8_.col1.y;
         var _loc13_:Number = _loc6_ * _loc8_.col2.x + _loc7_ * _loc8_.col2.y;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:Number = _loc13_ - _loc11_;
         var _loc16_:int = -1;
         var _loc17_:int = 0;
         while(_loc17_ < this.§>Q§)
         {
            _loc9_ = this.§`V§[_loc17_];
            _loc6_ = _loc9_.x - _loc10_;
            _loc7_ = _loc9_.y - _loc11_;
            _loc9_ = this.§1g§[_loc17_];
            _loc18_ = _loc9_.x * _loc6_ + _loc9_.y * _loc7_;
            _loc19_ = _loc9_.x * _loc14_ + _loc9_.y * _loc15_;
            if(_loc19_ == 0)
            {
               if(_loc18_ < 0)
               {
                  return false;
               }
            }
            else if(_loc19_ < 0 && _loc18_ < _loc4_ * _loc19_)
            {
               _loc4_ = _loc18_ / _loc19_;
               _loc16_ = _loc17_;
            }
            else if(_loc19_ > 0 && _loc18_ < _loc5_ * _loc19_)
            {
               _loc5_ = _loc18_ / _loc19_;
            }
            if(_loc5_ < _loc4_ - Number.MIN_VALUE)
            {
               return false;
            }
            _loc17_++;
         }
         if(_loc16_ >= 0)
         {
            param1.fraction = _loc4_;
            _loc8_ = param3.R;
            _loc9_ = this.§1g§[_loc16_];
            param1.normal.x = _loc8_.col1.x * _loc9_.x + _loc8_.col2.x * _loc9_.y;
            param1.normal.y = _loc8_.col1.y * _loc9_.x + _loc8_.col2.y * _loc9_.y;
            return true;
         }
         return false;
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§`V§[0];
         var _loc5_:Number = param2.position.x + (_loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y);
         var _loc6_:Number = param2.position.y + (_loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y);
         var _loc7_:Number = _loc5_;
         var _loc8_:Number = _loc6_;
         var _loc9_:int = 1;
         while(_loc9_ < this.§>Q§)
         {
            _loc4_ = this.§`V§[_loc9_];
            _loc10_ = param2.position.x + (_loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y);
            _loc11_ = param2.position.y + (_loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y);
            _loc5_ = _loc5_ < _loc10_ ? Number(_loc5_) : Number(_loc10_);
            _loc6_ = _loc6_ < _loc11_ ? Number(_loc6_) : Number(_loc11_);
            _loc7_ = _loc7_ > _loc10_ ? Number(_loc7_) : Number(_loc10_);
            _loc8_ = _loc8_ > _loc11_ ? Number(_loc8_) : Number(_loc11_);
            _loc9_++;
         }
         param1.§^"§.x = _loc5_ - §5!`§;
         param1.§^"§.y = _loc6_ - §5!`§;
         param1.§=!O§.x = _loc7_ + §5!`§;
         param1.§=!O§.y = _loc8_ + §5!`§;
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(this.§>Q§ == 2)
         {
            param1.§>r§.x = 0.5 * (this.§`V§[0].x + this.§`V§[1].x);
            param1.§>r§.y = 0.5 * (this.§`V§[0].y + this.§`V§[1].y);
            param1.§7_§ = 0;
            param1.§8D§ = 0;
            return;
         }
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         var _loc9_:Number = 1 / 3;
         var _loc10_:int = 0;
         while(_loc10_ < this.§>Q§)
         {
            _loc11_ = this.§`V§[_loc10_];
            _loc12_ = _loc10_ + 1 < this.§>Q§ ? this.§`V§[int(_loc10_ + 1)] : this.§`V§[0];
            _loc13_ = _loc11_.x - 0;
            _loc14_ = _loc11_.y - 0;
            _loc15_ = _loc12_.x - 0;
            _loc16_ = _loc12_.y - 0;
            _loc17_ = _loc13_ * _loc16_ - _loc14_ * _loc15_;
            _loc18_ = 0.5 * _loc17_;
            _loc5_ += _loc18_;
            _loc3_ += _loc18_ * _loc9_ * (0 + _loc11_.x + _loc12_.x);
            _loc4_ += _loc18_ * _loc9_ * (0 + _loc11_.y + _loc12_.y);
            _loc19_ = 0;
            _loc20_ = 0;
            _loc21_ = _loc13_;
            _loc22_ = _loc14_;
            _loc23_ = _loc15_;
            _loc24_ = _loc16_;
            _loc25_ = _loc9_ * (0.25 * (_loc21_ * _loc21_ + _loc23_ * _loc21_ + _loc23_ * _loc23_) + (_loc19_ * _loc21_ + _loc19_ * _loc23_)) + 0.5 * _loc19_ * _loc19_;
            _loc26_ = _loc9_ * (0.25 * (_loc22_ * _loc22_ + _loc24_ * _loc22_ + _loc24_ * _loc24_) + (_loc20_ * _loc22_ + _loc20_ * _loc24_)) + 0.5 * _loc20_ * _loc20_;
            _loc6_ += _loc17_ * (_loc25_ + _loc26_);
            _loc10_++;
         }
         param1.§7_§ = param2 * _loc5_;
         _loc3_ *= 1 / _loc5_;
         _loc4_ *= 1 / _loc5_;
         param1.§>r§.Set(_loc3_,_loc4_);
         param1.§8D§ = param2 * _loc6_;
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc12_:int = 0;
         var _loc22_:b2Vec2 = null;
         var _loc23_:Boolean = false;
         var _loc24_:b2MassData = null;
         var _loc25_:Number = NaN;
         var _loc5_:b2Vec2 = b2Math.§?a§(param3.R,param1);
         var _loc6_:Number = param2 - b2Math.§2&§(param1,param3.position);
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         var _loc8_:int = 0;
         var _loc9_:int = -1;
         var _loc10_:int = -1;
         var _loc11_:Boolean = false;
         _loc12_ = 0;
         while(_loc12_ < this.§>Q§)
         {
            _loc7_[_loc12_] = b2Math.§2&§(_loc5_,this.§`V§[_loc12_]) - _loc6_;
            _loc23_ = _loc7_[_loc12_] < -Number.MIN_VALUE;
            if(_loc12_ > 0)
            {
               if(_loc23_)
               {
                  if(!_loc11_)
                  {
                     _loc9_ = _loc12_ - 1;
                     _loc8_++;
                  }
               }
               else if(_loc11_)
               {
                  _loc10_ = _loc12_ - 1;
                  _loc8_++;
               }
            }
            _loc11_ = _loc23_;
            _loc12_++;
         }
         switch(_loc8_)
         {
            case 0:
               if(_loc11_)
               {
                  _loc24_ = new b2MassData();
                  this.ComputeMass(_loc24_,1);
                  param4.SetV(b2Math.§?!L§(param3,_loc24_.§>r§));
                  return _loc24_.§7_§;
               }
               return 0;
               break;
            case 1:
               if(_loc9_ == -1)
               {
                  _loc9_ = this.§>Q§ - 1;
                  break;
               }
               _loc10_ = this.§>Q§ - 1;
               break;
         }
         var _loc13_:int = (_loc9_ + 1) % this.§>Q§;
         var _loc14_:int = (_loc10_ + 1) % this.§>Q§;
         var _loc15_:Number = (0 - _loc7_[_loc9_]) / (_loc7_[_loc13_] - _loc7_[_loc9_]);
         var _loc16_:Number = (0 - _loc7_[_loc10_]) / (_loc7_[_loc14_] - _loc7_[_loc10_]);
         var _loc17_:b2Vec2 = new b2Vec2(this.§`V§[_loc9_].x * (1 - _loc15_) + this.§`V§[_loc13_].x * _loc15_,this.§`V§[_loc9_].y * (1 - _loc15_) + this.§`V§[_loc13_].y * _loc15_);
         var _loc18_:b2Vec2 = new b2Vec2(this.§`V§[_loc10_].x * (1 - _loc16_) + this.§`V§[_loc14_].x * _loc16_,this.§`V§[_loc10_].y * (1 - _loc16_) + this.§`V§[_loc14_].y * _loc16_);
         var _loc19_:Number = 0;
         var _loc20_:b2Vec2 = new b2Vec2();
         var _loc21_:b2Vec2 = this.§`V§[_loc13_];
         _loc12_ = _loc13_;
         while(_loc12_ != _loc14_)
         {
            _loc12_ = (_loc12_ + 1) % this.§>Q§;
            if(_loc12_ == _loc14_)
            {
               _loc22_ = _loc18_;
            }
            else
            {
               _loc22_ = this.§`V§[_loc12_];
            }
            _loc25_ = 0.5 * ((_loc21_.x - _loc17_.x) * (_loc22_.y - _loc17_.y) - (_loc21_.y - _loc17_.y) * (_loc22_.x - _loc17_.x));
            _loc19_ += _loc25_;
            _loc20_.x += _loc25_ * (_loc17_.x + _loc21_.x + _loc22_.x) / 3;
            _loc20_.y += _loc25_ * (_loc17_.y + _loc21_.y + _loc22_.y) / 3;
            _loc21_ = _loc22_;
         }
         _loc20_.§%!U§(1 / _loc19_);
         param4.SetV(b2Math.§?!L§(param3,_loc20_));
         return _loc19_;
      }
      
      public function §7!U§() : int
      {
         return this.§>Q§;
      }
      
      public function §;Y§() : Vector.<b2Vec2>
      {
         return this.§`V§;
      }
      
      public function §0!K§() : Vector.<b2Vec2>
      {
         return this.§1g§;
      }
      
      public function §[-§(param1:b2Vec2) : int
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§`V§[0].x * param1.x + this.§`V§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§>Q§)
         {
            _loc5_ = this.§`V§[_loc4_].x * param1.x + this.§`V§[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §-!K§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§`V§[0].x * param1.x + this.§`V§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§>Q§)
         {
            _loc5_ = this.§`V§[_loc4_].x * param1.x + this.§`V§[_loc4_].y * param1.y;
            if(_loc5_ > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§`V§[_loc2_];
      }
      
      private function §5!h§() : Boolean
      {
         return false;
      }
      
      private function §0!,§(param1:int) : void
      {
         var _loc2_:int = this.§`V§.length;
         while(_loc2_ < param1)
         {
            this.§`V§[_loc2_] = new b2Vec2();
            this.§1g§[_loc2_] = new b2Vec2();
            _loc2_++;
         }
      }
   }
}
