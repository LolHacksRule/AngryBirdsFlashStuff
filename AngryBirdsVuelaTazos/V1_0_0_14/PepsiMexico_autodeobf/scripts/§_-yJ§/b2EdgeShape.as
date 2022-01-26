package §_-yJ§
{
   import §_-4n§.b2Mat22;
   import §_-4n§.b2Math;
   import §_-4n§.b2Transform;
   import §_-4n§.b2Vec2;
   import §_-bW§.b2Settings;
   import §_-bW§.b2internal;
   import §_-iw§.b2AABB;
   import §_-iw§.b2RayCastInput;
   import §_-iw§.b2RayCastOutput;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §_-VQ§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §_-CJ§:Number;
      
      b2internal var §_-l§:b2Vec2;
      
      b2internal var §_-iQ§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §_-rq§:b2EdgeShape;
      
      b2internal var §_-Jh§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         this.§_-VQ§ = new b2Vec2();
         this.m_v1 = new b2Vec2();
         this.m_v2 = new b2Vec2();
         this.m_coreV1 = new b2Vec2();
         this.m_coreV2 = new b2Vec2();
         this.§_-l§ = new b2Vec2();
         this.§_-iQ§ = new b2Vec2();
         this.m_cornerDir1 = new b2Vec2();
         this.m_cornerDir2 = new b2Vec2();
         super();
         §_-rI§ = b2internal::_-Rn;
         this.§_-Jh§ = null;
         this.§_-rq§ = null;
         this.m_v1 = param1;
         this.m_v2 = param2;
         this.§_-iQ§.Set(this.m_v2.x - this.m_v1.x,this.m_v2.y - this.m_v1.y);
         this.§_-CJ§ = this.§_-iQ§.Normalize();
         this.§_-l§.Set(this.§_-iQ§.y,-this.§_-iQ§.x);
         this.m_coreV1.Set(-b2Settings.b2_toiSlop * (this.§_-l§.x - this.§_-iQ§.x) + this.m_v1.x,-b2Settings.b2_toiSlop * (this.§_-l§.y - this.§_-iQ§.y) + this.m_v1.y);
         this.m_coreV2.Set(-b2Settings.b2_toiSlop * (this.§_-l§.x + this.§_-iQ§.x) + this.m_v2.x,-b2Settings.b2_toiSlop * (this.§_-l§.y + this.§_-iQ§.y) + this.m_v2.y);
         this.m_cornerDir1 = this.§_-l§;
         this.m_cornerDir2.Set(-this.§_-l§.x,-this.§_-l§.y);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc4_:b2Mat22 = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc5_:Number = param2.p2.x - param2.p1.x;
         var _loc6_:Number = param2.p2.y - param2.p1.y;
         _loc4_ = param3.R;
         var _loc7_:Number = param3.position.x + (_loc4_.col1.x * this.m_v1.x + _loc4_.col2.x * this.m_v1.y);
         var _loc8_:Number = param3.position.y + (_loc4_.col1.y * this.m_v1.x + _loc4_.col2.y * this.m_v1.y);
         var _loc9_:Number = param3.position.y + (_loc4_.col1.y * this.m_v2.x + _loc4_.col2.y * this.m_v2.y) - _loc8_;
         var _loc10_:Number = -(param3.position.x + (_loc4_.col1.x * this.m_v2.x + _loc4_.col2.x * this.m_v2.y) - _loc7_);
         var _loc11_:Number = 100 * Number.MIN_VALUE;
         var _loc12_:Number;
         if((_loc12_ = -(_loc5_ * _loc9_ + _loc6_ * _loc10_)) > _loc11_)
         {
            _loc13_ = param2.p1.x - _loc7_;
            _loc14_ = param2.p1.y - _loc8_;
            _loc15_ = _loc13_ * _loc9_ + _loc14_ * _loc10_;
            if(0 <= _loc15_ && _loc15_ <= param2.§_-k-§ * _loc12_)
            {
               _loc16_ = -_loc5_ * _loc14_ + _loc6_ * _loc13_;
               if(-_loc11_ * _loc12_ <= _loc16_ && _loc16_ <= _loc12_ * (1 + _loc11_))
               {
                  _loc15_ /= _loc12_;
                  param1.fraction = _loc15_;
                  _loc17_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
                  param1.normal.x = _loc9_ / _loc17_;
                  param1.normal.y = _loc10_ / _loc17_;
                  return true;
               }
            }
         }
         return false;
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         _loc4_ = param2.position.x + (_loc3_.col1.x * this.m_v1.x + _loc3_.col2.x * this.m_v1.y);
         _loc5_ = param2.position.y + (_loc3_.col1.y * this.m_v1.x + _loc3_.col2.y * this.m_v1.y);
         _loc6_ = param2.position.x + (_loc3_.col1.x * this.m_v2.x + _loc3_.col2.x * this.m_v2.y);
         _loc7_ = param2.position.y + (_loc3_.col1.y * this.m_v2.x + _loc3_.col2.y * this.m_v2.y);
         if(_loc4_ < _loc6_)
         {
            param1.§_-Cd§.x = _loc4_;
            param1.§_-sZ§.x = _loc6_;
         }
         else
         {
            param1.§_-Cd§.x = _loc6_;
            param1.§_-sZ§.x = _loc4_;
         }
         if(_loc5_ < _loc7_)
         {
            param1.§_-Cd§.y = _loc5_;
            param1.§_-sZ§.y = _loc7_;
         }
         else
         {
            param1.§_-Cd§.y = _loc7_;
            param1.§_-sZ§.y = _loc5_;
         }
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         param1.§_-bR§ = 0;
         param1.center.SetV(this.m_v1);
         param1.§_-2y§ = 0;
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc5_:b2Vec2 = new b2Vec2(param1.x * param2,param1.y * param2);
         var _loc6_:b2Vec2 = b2Math.§_-7c§(param3,this.m_v1);
         var _loc7_:b2Vec2 = b2Math.§_-7c§(param3,this.m_v2);
         var _loc8_:Number = b2Math.§_-pS§(param1,_loc6_) - param2;
         var _loc9_:Number = b2Math.§_-pS§(param1,_loc7_) - param2;
         if(_loc8_ > 0)
         {
            if(_loc9_ > 0)
            {
               return 0;
            }
            _loc6_.x = -_loc9_ / (_loc8_ - _loc9_) * _loc6_.x + _loc8_ / (_loc8_ - _loc9_) * _loc7_.x;
            _loc6_.y = -_loc9_ / (_loc8_ - _loc9_) * _loc6_.y + _loc8_ / (_loc8_ - _loc9_) * _loc7_.y;
         }
         else if(_loc9_ > 0)
         {
            _loc7_.x = -_loc9_ / (_loc8_ - _loc9_) * _loc6_.x + _loc8_ / (_loc8_ - _loc9_) * _loc7_.x;
            _loc7_.y = -_loc9_ / (_loc8_ - _loc9_) * _loc6_.y + _loc8_ / (_loc8_ - _loc9_) * _loc7_.y;
         }
         param4.x = (_loc5_.x + _loc6_.x + _loc7_.x) / 3;
         param4.y = (_loc5_.y + _loc6_.y + _loc7_.y) / 3;
         return 0.5 * ((_loc6_.x - _loc5_.x) * (_loc7_.y - _loc5_.y) - (_loc6_.y - _loc5_.y) * (_loc7_.x - _loc5_.x));
      }
      
      public function §_-FY§() : Number
      {
         return this.§_-CJ§;
      }
      
      public function GetVertex1() : b2Vec2
      {
         return this.m_v1;
      }
      
      public function GetVertex2() : b2Vec2
      {
         return this.m_v2;
      }
      
      public function GetCoreVertex1() : b2Vec2
      {
         return this.m_coreV1;
      }
      
      public function GetCoreVertex2() : b2Vec2
      {
         return this.m_coreV2;
      }
      
      public function §_-Hg§() : b2Vec2
      {
         return this.§_-l§;
      }
      
      public function §_-EC§() : b2Vec2
      {
         return this.§_-iQ§;
      }
      
      public function GetCorner1Vector() : b2Vec2
      {
         return this.m_cornerDir1;
      }
      
      public function GetCorner2Vector() : b2Vec2
      {
         return this.m_cornerDir2;
      }
      
      public function Corner1IsConvex() : Boolean
      {
         return this.m_cornerConvex1;
      }
      
      public function Corner2IsConvex() : Boolean
      {
         return this.m_cornerConvex2;
      }
      
      public function §_-uB§(param1:b2Transform) : b2Vec2
      {
         var _loc2_:b2Mat22 = param1.R;
         return new b2Vec2(param1.position.x + (_loc2_.col1.x * this.m_coreV1.x + _loc2_.col2.x * this.m_coreV1.y),param1.position.y + (_loc2_.col1.y * this.m_coreV1.x + _loc2_.col2.y * this.m_coreV1.y));
      }
      
      public function §_-Q8§() : b2EdgeShape
      {
         return this.§_-rq§;
      }
      
      public function §_-fH§() : b2EdgeShape
      {
         return this.§_-Jh§;
      }
      
      public function §_-RL§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc4_:b2Mat22 = param1.R;
         var _loc5_:Number = param1.position.x + (_loc4_.col1.x * this.m_coreV1.x + _loc4_.col2.x * this.m_coreV1.y);
         var _loc6_:Number = param1.position.y + (_loc4_.col1.y * this.m_coreV1.x + _loc4_.col2.y * this.m_coreV1.y);
         var _loc7_:Number = param1.position.x + (_loc4_.col1.x * this.m_coreV2.x + _loc4_.col2.x * this.m_coreV2.y);
         var _loc8_:Number = param1.position.y + (_loc4_.col1.y * this.m_coreV2.x + _loc4_.col2.y * this.m_coreV2.y);
         if(_loc5_ * param2 + _loc6_ * param3 > _loc7_ * param2 + _loc8_ * param3)
         {
            this.§_-VQ§.x = _loc5_;
            this.§_-VQ§.y = _loc6_;
         }
         else
         {
            this.§_-VQ§.x = _loc7_;
            this.§_-VQ§.y = _loc8_;
         }
         return this.§_-VQ§;
      }
      
      b2internal function §_-z2§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         this.§_-Jh§ = param1;
         this.m_coreV1 = param2;
         this.m_cornerDir1 = param3;
         this.m_cornerConvex1 = param4;
      }
      
      b2internal function §_-mE§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         this.§_-rq§ = param1;
         this.m_coreV2 = param2;
         this.m_cornerDir2 = param3;
         this.m_cornerConvex2 = param4;
      }
   }
}
