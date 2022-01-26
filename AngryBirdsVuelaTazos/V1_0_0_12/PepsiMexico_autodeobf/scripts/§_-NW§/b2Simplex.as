package §_-Nw§
{
   import §_-9z§.*;
   import §_-Bt§.*;
   import §_-sU§.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var §_-2M§:Vector.<b2SimplexVertex>;
      
      public var §_-KJ§:int;
      
      function b2Simplex()
      {
         this.m_v1 = new b2SimplexVertex();
         this.m_v2 = new b2SimplexVertex();
         this.m_v3 = new b2SimplexVertex();
         this.§_-2M§ = new Vector.<b2SimplexVertex>(3);
         super();
         this.§_-2M§[0] = this.m_v1;
         this.§_-2M§[1] = this.m_v2;
         this.§_-2M§[2] = this.m_v3;
      }
      
      public function §_-fx§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:b2SimplexVertex = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         b2Settings.b2Assert(0 <= param1.count && param1.count <= 3);
         this.§_-KJ§ = param1.count;
         var _loc8_:Vector.<b2SimplexVertex> = this.§_-2M§;
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-KJ§)
         {
            (_loc10_ = _loc8_[_loc9_]).indexA = param1.indexA[_loc9_];
            _loc10_.indexB = param1.indexB[_loc9_];
            _loc6_ = param2.§false§(_loc10_.indexA);
            _loc7_ = param4.§false§(_loc10_.indexB);
            _loc10_.§_-hc§ = b2Math.§_-sF§(param3,_loc6_);
            _loc10_.§_-fA§ = b2Math.§_-sF§(param5,_loc7_);
            _loc10_.§_-Rj§ = b2Math.§_-9M§(_loc10_.§_-fA§,_loc10_.§_-hc§);
            _loc10_.a = 0;
            _loc9_++;
         }
         if(this.§_-KJ§ > 1)
         {
            _loc11_ = param1.§_-Qp§;
            if((_loc12_ = this.§_-o8§()) < 0.5 * _loc11_ || 2 * _loc11_ < _loc12_ || _loc12_ < Number.MIN_VALUE)
            {
               this.§_-KJ§ = 0;
            }
         }
         if(this.§_-KJ§ == 0)
         {
            (_loc10_ = _loc8_[0]).indexA = 0;
            _loc10_.indexB = 0;
            _loc6_ = param2.§false§(0);
            _loc7_ = param4.§false§(0);
            _loc10_.§_-hc§ = b2Math.§_-sF§(param3,_loc6_);
            _loc10_.§_-fA§ = b2Math.§_-sF§(param5,_loc7_);
            _loc10_.§_-Rj§ = b2Math.§_-9M§(_loc10_.§_-fA§,_loc10_.§_-hc§);
            this.§_-KJ§ = 1;
         }
      }
      
      public function §_-DO§(param1:b2SimplexCache) : void
      {
         param1.§_-Qp§ = this.§_-o8§();
         param1.count = uint(this.§_-KJ§);
         var _loc2_:Vector.<b2SimplexVertex> = this.§_-2M§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§_-KJ§)
         {
            param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
            param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
            _loc3_++;
         }
      }
      
      public function §_-Un§() : b2Vec2
      {
         var _loc1_:b2Vec2 = null;
         var _loc2_:Number = NaN;
         switch(this.§_-KJ§)
         {
            case 1:
               return this.m_v1.§_-Rj§.§_-Hv§();
            case 2:
               _loc1_ = b2Math.§_-9M§(this.m_v2.§_-Rj§,this.m_v1.§_-Rj§);
               _loc2_ = b2Math.§_-1K§(_loc1_,this.m_v1.§_-Rj§.§_-Hv§());
               if(_loc2_ > 0)
               {
                  return b2Math.§_-Lf§(1,_loc1_);
               }
               return b2Math.§_-XH§(_loc1_,1);
               break;
            default:
               b2Settings.b2Assert(false);
               return new b2Vec2();
         }
      }
      
      public function §_-f2§() : b2Vec2
      {
         switch(this.§_-KJ§)
         {
            case 0:
               b2Settings.b2Assert(false);
               return new b2Vec2();
            case 1:
               return this.m_v1.§_-Rj§;
            case 2:
               return new b2Vec2(this.m_v1.a * this.m_v1.§_-Rj§.x + this.m_v2.a * this.m_v2.§_-Rj§.x,this.m_v1.a * this.m_v1.§_-Rj§.y + this.m_v2.a * this.m_v2.§_-Rj§.y);
            default:
               b2Settings.b2Assert(false);
               return new b2Vec2();
         }
      }
      
      public function §_-qb§(param1:b2Vec2, param2:b2Vec2) : void
      {
         switch(this.§_-KJ§)
         {
            case 0:
               b2Settings.b2Assert(false);
               break;
            case 1:
               param1.SetV(this.m_v1.§_-hc§);
               param2.SetV(this.m_v1.§_-fA§);
               break;
            case 2:
               param1.x = this.m_v1.a * this.m_v1.§_-hc§.x + this.m_v2.a * this.m_v2.§_-hc§.x;
               param1.y = this.m_v1.a * this.m_v1.§_-hc§.y + this.m_v2.a * this.m_v2.§_-hc§.y;
               param2.x = this.m_v1.a * this.m_v1.§_-fA§.x + this.m_v2.a * this.m_v2.§_-fA§.x;
               param2.y = this.m_v1.a * this.m_v1.§_-fA§.y + this.m_v2.a * this.m_v2.§_-fA§.y;
               break;
            case 3:
               param2.x = param1.x = this.m_v1.a * this.m_v1.§_-hc§.x + this.m_v2.a * this.m_v2.§_-hc§.x + this.m_v3.a * this.m_v3.§_-hc§.x;
               param2.y = param1.y = this.m_v1.a * this.m_v1.§_-hc§.y + this.m_v2.a * this.m_v2.§_-hc§.y + this.m_v3.a * this.m_v3.§_-hc§.y;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §_-o8§() : Number
      {
         switch(this.§_-KJ§)
         {
            case 0:
               b2Settings.b2Assert(false);
               return 0;
            case 1:
               return 0;
            case 2:
               return b2Math.§_-9M§(this.m_v1.§_-Rj§,this.m_v2.§_-Rj§).§_-UN§();
            case 3:
               return b2Math.§_-1K§(b2Math.§_-9M§(this.m_v2.§_-Rj§,this.m_v1.§_-Rj§),b2Math.§_-9M§(this.m_v3.§_-Rj§,this.m_v1.§_-Rj§));
            default:
               b2Settings.b2Assert(false);
               return 0;
         }
      }
      
      public function Solve2() : void
      {
         var _loc1_:b2Vec2 = this.m_v1.§_-Rj§;
         var _loc2_:b2Vec2 = this.m_v2.§_-Rj§;
         var _loc3_:b2Vec2 = b2Math.§_-9M§(_loc2_,_loc1_);
         var _loc4_:Number;
         if((_loc4_ = -(_loc1_.x * _loc3_.x + _loc1_.y * _loc3_.y)) <= 0)
         {
            this.m_v1.a = 1;
            this.§_-KJ§ = 1;
            return;
         }
         var _loc5_:Number;
         if((_loc5_ = _loc2_.x * _loc3_.x + _loc2_.y * _loc3_.y) <= 0)
         {
            this.m_v2.a = 1;
            this.§_-KJ§ = 1;
            this.m_v1.Set(this.m_v2);
            return;
         }
         var _loc6_:Number = 1 / (_loc5_ + _loc4_);
         this.m_v1.a = _loc5_ * _loc6_;
         this.m_v2.a = _loc4_ * _loc6_;
         this.§_-KJ§ = 2;
      }
      
      public function Solve3() : void
      {
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc1_:b2Vec2 = this.m_v1.§_-Rj§;
         var _loc2_:b2Vec2 = this.m_v2.§_-Rj§;
         var _loc3_:b2Vec2 = this.m_v3.§_-Rj§;
         var _loc4_:b2Vec2 = b2Math.§_-9M§(_loc2_,_loc1_);
         var _loc5_:Number = b2Math.§_-aI§(_loc1_,_loc4_);
         var _loc6_:Number;
         var _loc7_:Number = _loc6_ = b2Math.§_-aI§(_loc2_,_loc4_);
         var _loc8_:Number = -_loc5_;
         var _loc9_:b2Vec2 = b2Math.§_-9M§(_loc3_,_loc1_);
         var _loc10_:Number = b2Math.§_-aI§(_loc1_,_loc9_);
         var _loc11_:Number;
         var _loc12_:Number = _loc11_ = b2Math.§_-aI§(_loc3_,_loc9_);
         var _loc13_:Number = -_loc10_;
         var _loc14_:b2Vec2 = b2Math.§_-9M§(_loc3_,_loc2_);
         var _loc15_:Number = b2Math.§_-aI§(_loc2_,_loc14_);
         var _loc16_:Number;
         var _loc17_:Number = _loc16_ = b2Math.§_-aI§(_loc3_,_loc14_);
         var _loc18_:Number = -_loc15_;
         var _loc19_:Number;
         var _loc20_:Number = (_loc19_ = b2Math.§_-1K§(_loc4_,_loc9_)) * b2Math.§_-1K§(_loc2_,_loc3_);
         var _loc21_:Number = _loc19_ * b2Math.§_-1K§(_loc3_,_loc1_);
         var _loc22_:Number = _loc19_ * b2Math.§_-1K§(_loc1_,_loc2_);
         if(_loc8_ <= 0 && _loc13_ <= 0)
         {
            this.m_v1.a = 1;
            this.§_-KJ§ = 1;
            return;
         }
         if(_loc7_ > 0 && _loc8_ > 0 && _loc22_ <= 0)
         {
            _loc24_ = 1 / (_loc7_ + _loc8_);
            this.m_v1.a = _loc7_ * _loc24_;
            this.m_v2.a = _loc8_ * _loc24_;
            this.§_-KJ§ = 2;
            return;
         }
         if(_loc12_ > 0 && _loc13_ > 0 && _loc21_ <= 0)
         {
            _loc25_ = 1 / (_loc12_ + _loc13_);
            this.m_v1.a = _loc12_ * _loc25_;
            this.m_v3.a = _loc13_ * _loc25_;
            this.§_-KJ§ = 2;
            this.m_v2.Set(this.m_v3);
            return;
         }
         if(_loc7_ <= 0 && _loc18_ <= 0)
         {
            this.m_v2.a = 1;
            this.§_-KJ§ = 1;
            this.m_v1.Set(this.m_v2);
            return;
         }
         if(_loc12_ <= 0 && _loc17_ <= 0)
         {
            this.m_v3.a = 1;
            this.§_-KJ§ = 1;
            this.m_v1.Set(this.m_v3);
            return;
         }
         if(_loc17_ > 0 && _loc18_ > 0 && _loc20_ <= 0)
         {
            _loc26_ = 1 / (_loc17_ + _loc18_);
            this.m_v2.a = _loc17_ * _loc26_;
            this.m_v3.a = _loc18_ * _loc26_;
            this.§_-KJ§ = 2;
            this.m_v1.Set(this.m_v3);
            return;
         }
         var _loc23_:Number = 1 / (_loc20_ + _loc21_ + _loc22_);
         this.m_v1.a = _loc20_ * _loc23_;
         this.m_v2.a = _loc21_ * _loc23_;
         this.m_v3.a = _loc22_ * _loc23_;
         this.§_-KJ§ = 3;
      }
   }
}
