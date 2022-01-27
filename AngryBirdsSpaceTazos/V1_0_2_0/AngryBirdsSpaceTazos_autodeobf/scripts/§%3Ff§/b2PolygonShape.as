package §?f§
{
   import §#!X§.*;
   import §&!S§.*;
   import §3m§.*;
   import §@!@§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §=!§:b2Mat22 = new b2Mat22();
       
      
      b2internal var §+!g§:b2Vec2;
      
      b2internal var §4"+§:Vector.<b2Vec2>;
      
      b2internal var §>t§:Vector.<b2Vec2>;
      
      b2internal var §[d§:int;
      
      public function b2PolygonShape()
      {
         super();
         §5!q§ = b2internal::"P;
         this.§+!g§ = new b2Vec2();
         this.§4"+§ = new Vector.<b2Vec2>();
         this.§>t§ = new Vector.<b2Vec2>();
         §'"D§ = b2Settings.b2_polygonRadius;
         this.§+!g§.§ "2§();
      }
      
      public static function §@!2§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.§>P§(param1,param2);
         return _loc3_;
      }
      
      public static function §?!t§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.§+0§(param1,param2);
         return _loc3_;
      }
      
      public static function §4D§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.§8v§(param1,param2);
         return _loc3_;
      }
      
      public static function §5f§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§@!7§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §'!#§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         _loc3_.§=f§(param1,param2);
         return _loc3_;
      }
      
      public static function §3!%§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
            _loc3_.§7-§(new b2Vec2(0,0));
            _loc3_.§7-§(_loc9_);
            _loc3_.§7-§(_loc10_);
            _loc3_.§4z§(_loc16_ * 0.3333333333333333);
            _loc8_++;
         }
         _loc3_.x *= 1 / _loc4_;
         _loc3_.y *= 1 / _loc4_;
         return _loc3_;
      }
      
      b2internal static function §"9§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
            _loc11_ = -(_loc9_ /= _loc10_);
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
            if((_loc18_ = (_loc15_ - _loc13_) * (_loc16_ - _loc14_)) < 0.95 * _loc6_)
            {
               _loc6_ = _loc18_;
               param1.R.col1.x = _loc8_;
               param1.R.col1.y = _loc9_;
               param1.R.col2.x = _loc11_;
               param1.R.col2.y = _loc12_;
               _loc23_ = 0.5 * (_loc13_ + _loc15_);
               _loc24_ = 0.5 * (_loc14_ + _loc16_);
               _loc25_ = param1.R;
               param1.§""F§.x = _loc7_.x + (_loc25_.col1.x * _loc23_ + _loc25_.col2.x * _loc24_);
               param1.§""F§.y = _loc7_.y + (_loc25_.col1.y * _loc23_ + _loc25_.col2.y * _loc24_);
               param1.§7j§.x = 0.5 * (_loc15_ - _loc13_);
               param1.§7j§.y = 0.5 * (_loc16_ - _loc14_);
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
            this.§+!g§.SetV(_loc2_.§+!g§);
            this.§[d§ = _loc2_.§[d§;
            this.§8!-§(this.§[d§);
            _loc3_ = 0;
            while(_loc3_ < this.§[d§)
            {
               this.§4"+§[_loc3_].SetV(_loc2_.§4"+§[_loc3_]);
               this.§>t§[_loc3_].SetV(_loc2_.§>t§[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function §>P§(param1:Array, param2:Number = 0) : void
      {
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            _loc3_.push(_loc4_);
         }
         this.§+0§(_loc3_,param2);
      }
      
      public function §+0§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
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
         this.§[d§ = param2;
         this.§8!-§(param2);
         _loc3_ = 0;
         while(_loc3_ < this.§[d§)
         {
            this.§4"+§[_loc3_].SetV(param1[_loc3_]);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this.§[d§)
         {
            _loc4_ = _loc3_;
            _loc5_ = _loc3_ + 1 < this.§[d§ ? int(_loc3_ + 1) : 0;
            _loc6_ = b2Math.§2"=§(this.§4"+§[_loc5_],this.§4"+§[_loc4_]);
            b2Settings.b2Assert(_loc6_.§=!Q§() > Number.MIN_VALUE);
            this.§>t§[_loc3_].SetV(b2Math.§8b§(_loc6_,1));
            this.§>t§[_loc3_].Normalize();
            _loc3_++;
         }
         this.§+!g§ = §3!%§(this.§4"+§,this.§[d§);
      }
      
      public function §8v§(param1:Number, param2:Number) : void
      {
         this.§[d§ = 4;
         this.§8!-§(4);
         this.§4"+§[0].Set(-param1,-param2);
         this.§4"+§[1].Set(param1,-param2);
         this.§4"+§[2].Set(param1,param2);
         this.§4"+§[3].Set(-param1,param2);
         this.§>t§[0].Set(0,-1);
         this.§>t§[1].Set(1,0);
         this.§>t§[2].Set(0,1);
         this.§>t§[3].Set(-1,0);
         this.§+!g§.§ "2§();
      }
      
      public function §@!7§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         this.§[d§ = 4;
         this.§8!-§(4);
         this.§4"+§[0].Set(-param1,-param2);
         this.§4"+§[1].Set(param1,-param2);
         this.§4"+§[2].Set(param1,param2);
         this.§4"+§[3].Set(-param1,param2);
         this.§>t§[0].Set(0,-1);
         this.§>t§[1].Set(1,0);
         this.§>t§[2].Set(0,1);
         this.§>t§[3].Set(-1,0);
         this.§+!g§ = param3;
         var _loc5_:b2Transform;
         (_loc5_ = new b2Transform()).position = param3;
         _loc5_.R.Set(param4);
         var _loc6_:int = 0;
         while(_loc6_ < this.§[d§)
         {
            this.§4"+§[_loc6_] = b2Math.§53§(_loc5_,this.§4"+§[_loc6_]);
            this.§>t§[_loc6_] = b2Math.§%r§(_loc5_.R,this.§>t§[_loc6_]);
            _loc6_++;
         }
      }
      
      public function §=f§(param1:b2Vec2, param2:b2Vec2) : void
      {
         this.§[d§ = 2;
         this.§8!-§(2);
         this.§4"+§[0].SetV(param1);
         this.§4"+§[1].SetV(param2);
         this.§+!g§.x = 0.5 * (param1.x + param2.x);
         this.§+!g§.y = 0.5 * (param1.y + param2.y);
         this.§>t§[0] = b2Math.§8b§(b2Math.§2"=§(param2,param1),1);
         this.§>t§[0].Normalize();
         this.§>t§[1].x = -this.§>t§[0].x;
         this.§>t§[1].y = -this.§>t§[0].y;
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
         while(_loc9_ < this.§[d§)
         {
            _loc3_ = this.§4"+§[_loc9_];
            _loc5_ = _loc7_ - _loc3_.x;
            _loc6_ = _loc8_ - _loc3_.y;
            _loc3_ = this.§>t§[_loc9_];
            if((_loc10_ = _loc3_.x * _loc5_ + _loc3_.y * _loc6_) > 0)
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
         var _loc5_:Number = param2.§;L§;
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
         while(_loc17_ < this.§[d§)
         {
            _loc6_ = (_loc9_ = this.§4"+§[_loc17_]).x - _loc10_;
            _loc7_ = _loc9_.y - _loc11_;
            _loc18_ = (_loc9_ = this.§>t§[_loc17_]).x * _loc6_ + _loc9_.y * _loc7_;
            if((_loc19_ = _loc9_.x * _loc14_ + _loc9_.y * _loc15_) == 0)
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
            _loc9_ = this.§>t§[_loc16_];
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
         var _loc4_:b2Vec2 = this.§4"+§[0];
         var _loc5_:Number = param2.position.x + (_loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y);
         var _loc6_:Number = param2.position.y + (_loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y);
         var _loc7_:Number = _loc5_;
         var _loc8_:Number = _loc6_;
         var _loc9_:int = 1;
         while(_loc9_ < this.§[d§)
         {
            _loc4_ = this.§4"+§[_loc9_];
            _loc10_ = param2.position.x + (_loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y);
            _loc11_ = param2.position.y + (_loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y);
            _loc5_ = _loc5_ < _loc10_ ? Number(_loc5_) : Number(_loc10_);
            _loc6_ = _loc6_ < _loc11_ ? Number(_loc6_) : Number(_loc11_);
            _loc7_ = _loc7_ > _loc10_ ? Number(_loc7_) : Number(_loc10_);
            _loc8_ = _loc8_ > _loc11_ ? Number(_loc8_) : Number(_loc11_);
            _loc9_++;
         }
         param1.§>9§.x = _loc5_ - b2internal::'"D;
         param1.§>9§.y = _loc6_ - b2internal::'"D;
         param1.§2M§.x = _loc7_ + b2internal::'"D;
         param1.§2M§.y = _loc8_ + b2internal::'"D;
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
         if(this.§[d§ == 2)
         {
            param1.§""F§.x = 0.5 * (this.§4"+§[0].x + this.§4"+§[1].x);
            param1.§""F§.y = 0.5 * (this.§4"+§[0].y + this.§4"+§[1].y);
            param1.§-W§ = 0;
            param1.I = 0;
            return;
         }
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:Number = 0;
         var _loc10_:int = 0;
         while(_loc10_ < this.§[d§)
         {
            _loc11_ = this.§4"+§[_loc10_];
            _loc12_ = _loc10_ + 1 < this.§[d§ ? this.§4"+§[int(_loc10_ + 1)] : this.§4"+§[0];
            _loc13_ = _loc11_.x - 0;
            _loc14_ = _loc11_.y - 0;
            _loc15_ = _loc12_.x - 0;
            _loc16_ = _loc12_.y - 0;
            _loc17_ = _loc13_ * _loc16_ - _loc14_ * _loc15_;
            _loc18_ = 0.5 * _loc17_;
            _loc5_ += _loc18_;
            _loc3_ += _loc18_ * 0.3333333333333333 * (0 + _loc11_.x + _loc12_.x);
            _loc4_ += _loc18_ * 0.3333333333333333 * (0 + _loc11_.y + _loc12_.y);
            _loc19_ = 0;
            _loc20_ = 0;
            _loc21_ = _loc13_;
            _loc22_ = _loc14_;
            _loc23_ = _loc15_;
            _loc24_ = _loc16_;
            _loc25_ = 0.3333333333333333 * (0.25 * (_loc21_ * _loc21_ + _loc23_ * _loc21_ + _loc23_ * _loc23_) + (_loc19_ * _loc21_ + _loc19_ * _loc23_)) + 0.5 * _loc19_ * _loc19_;
            _loc26_ = 0.3333333333333333 * (0.25 * (_loc22_ * _loc22_ + _loc24_ * _loc22_ + _loc24_ * _loc24_) + (_loc20_ * _loc22_ + _loc20_ * _loc24_)) + 0.5 * _loc20_ * _loc20_;
            _loc6_ += _loc17_ * (_loc25_ + _loc26_);
            _loc10_++;
         }
         param1.§-W§ = param2 * _loc5_;
         _loc3_ *= 1 / _loc5_;
         _loc4_ *= 1 / _loc5_;
         param1.§""F§.Set(_loc3_,_loc4_);
         param1.I = param2 * _loc6_;
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc12_:int = 0;
         var _loc22_:b2Vec2 = null;
         var _loc23_:* = false;
         var _loc24_:b2MassData = null;
         var _loc25_:Number = NaN;
         var _loc5_:b2Vec2 = b2Math.§@^§(param3.R,param1);
         var _loc6_:Number = param2 - b2Math.§"!<§(param1,param3.position);
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         var _loc8_:int = 0;
         var _loc9_:int = -1;
         var _loc10_:int = -1;
         var _loc11_:Boolean = false;
         _loc12_ = 0;
         while(_loc12_ < this.§[d§)
         {
            _loc7_[_loc12_] = b2Math.§"!<§(_loc5_,this.§4"+§[_loc12_]) - _loc6_;
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
                  param4.SetV(b2Math.§53§(param3,_loc24_.§""F§));
                  return _loc24_.§-W§;
               }
               return 0;
               break;
            case 1:
               if(_loc9_ == -1)
               {
                  _loc9_ = this.§[d§ - 1;
                  break;
               }
               _loc10_ = this.§[d§ - 1;
               break;
         }
         var _loc13_:int = (_loc9_ + 1) % this.§[d§;
         var _loc14_:int = (_loc10_ + 1) % this.§[d§;
         var _loc15_:Number = (0 - _loc7_[_loc9_]) / (_loc7_[_loc13_] - _loc7_[_loc9_]);
         var _loc16_:Number = (0 - _loc7_[_loc10_]) / (_loc7_[_loc14_] - _loc7_[_loc10_]);
         var _loc17_:b2Vec2 = new b2Vec2(this.§4"+§[_loc9_].x * (1 - _loc15_) + this.§4"+§[_loc13_].x * _loc15_,this.§4"+§[_loc9_].y * (1 - _loc15_) + this.§4"+§[_loc13_].y * _loc15_);
         var _loc18_:b2Vec2 = new b2Vec2(this.§4"+§[_loc10_].x * (1 - _loc16_) + this.§4"+§[_loc14_].x * _loc16_,this.§4"+§[_loc10_].y * (1 - _loc16_) + this.§4"+§[_loc14_].y * _loc16_);
         var _loc19_:Number = 0;
         var _loc20_:b2Vec2 = new b2Vec2();
         var _loc21_:b2Vec2 = this.§4"+§[_loc13_];
         _loc12_ = _loc13_;
         while(_loc12_ != _loc14_)
         {
            if((_loc12_ = (_loc12_ + 1) % this.§[d§) == _loc14_)
            {
               _loc22_ = _loc18_;
            }
            else
            {
               _loc22_ = this.§4"+§[_loc12_];
            }
            _loc25_ = 0.5 * ((_loc21_.x - _loc17_.x) * (_loc22_.y - _loc17_.y) - (_loc21_.y - _loc17_.y) * (_loc22_.x - _loc17_.x));
            _loc19_ += _loc25_;
            _loc20_.x += _loc25_ * (_loc17_.x + _loc21_.x + _loc22_.x) / 3;
            _loc20_.y += _loc25_ * (_loc17_.y + _loc21_.y + _loc22_.y) / 3;
            _loc21_ = _loc22_;
         }
         _loc20_.§4z§(1 / _loc19_);
         param4.SetV(b2Math.§53§(param3,_loc20_));
         return _loc19_;
      }
      
      public function §"V§() : int
      {
         return this.§[d§;
      }
      
      public function §<!I§() : Vector.<b2Vec2>
      {
         return this.§4"+§;
      }
      
      public function §=!+§() : Vector.<b2Vec2>
      {
         return this.§>t§;
      }
      
      public function §1$§(param1:b2Vec2) : int
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§4"+§[0].x * param1.x + this.§4"+§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[d§)
         {
            if((_loc5_ = this.§4"+§[_loc4_].x * param1.x + this.§4"+§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function §4`§(param1:b2Vec2) : b2Vec2
      {
         var _loc5_:Number = NaN;
         var _loc2_:int = 0;
         var _loc3_:Number = this.§4"+§[0].x * param1.x + this.§4"+§[0].y * param1.y;
         var _loc4_:int = 1;
         while(_loc4_ < this.§[d§)
         {
            if((_loc5_ = this.§4"+§[_loc4_].x * param1.x + this.§4"+§[_loc4_].y * param1.y) > _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc5_;
            }
            _loc4_++;
         }
         return this.§4"+§[_loc2_];
      }
      
      private function §<!v§() : Boolean
      {
         return false;
      }
      
      private function §8!-§(param1:int) : void
      {
         var _loc2_:int = this.§4"+§.length;
         while(_loc2_ < param1)
         {
            this.§4"+§[_loc2_] = new b2Vec2();
            this.§>t§[_loc2_] = new b2Vec2();
            _loc2_++;
         }
      }
   }
}
