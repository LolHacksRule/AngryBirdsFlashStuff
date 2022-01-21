package §<!!§
{
   import §"U§.*;
   import §,7§.*;
   import §=!X§.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var §<!T§:Vector.<b2SimplexVertex>;
      
      public var §^,§:int;
      
      function b2Simplex()
      {
         this.m_v1 = new b2SimplexVertex();
         this.m_v2 = new b2SimplexVertex();
         this.m_v3 = new b2SimplexVertex();
         this.§<!T§ = new Vector.<b2SimplexVertex>(3);
         super();
         this.§<!T§[0] = this.m_v1;
         this.§<!T§[1] = this.m_v2;
         this.§<!T§[2] = this.m_v3;
      }
      
      public function §>!&§(param1:b2SimplexCache, param2:b2DistanceProxy, param3:b2Transform, param4:b2DistanceProxy, param5:b2Transform) : void
      {
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc10_:b2SimplexVertex = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         b2Settings.b2Assert(0 <= param1.count && param1.count <= 3);
         this.§^,§ = param1.count;
         var _loc8_:Vector.<b2SimplexVertex> = this.§<!T§;
         var _loc9_:int = 0;
         while(_loc9_ < this.§^,§)
         {
            (_loc10_ = _loc8_[_loc9_]).indexA = param1.indexA[_loc9_];
            _loc10_.indexB = param1.indexB[_loc9_];
            _loc6_ = param2.§#!&§(_loc10_.indexA);
            _loc7_ = param4.§#!&§(_loc10_.indexB);
            _loc10_.dynamic = b2Math.§<!E§(param3,_loc6_);
            _loc10_.§1j§ = b2Math.§<!E§(param5,_loc7_);
            _loc10_.§!!T§ = b2Math.§^!Y§(_loc10_.§1j§,_loc10_.dynamic);
            _loc10_.a = 0;
            _loc9_++;
         }
         if(this.§^,§ > 1)
         {
            _loc11_ = param1.§5!7§;
            if((_loc12_ = this.§`!2§()) < 0.5 * _loc11_ || 2 * _loc11_ < _loc12_ || _loc12_ < Number.MIN_VALUE)
            {
               this.§^,§ = 0;
            }
         }
         if(this.§^,§ == 0)
         {
            (_loc10_ = _loc8_[0]).indexA = 0;
            _loc10_.indexB = 0;
            _loc6_ = param2.§#!&§(0);
            _loc7_ = param4.§#!&§(0);
            _loc10_.dynamic = b2Math.§<!E§(param3,_loc6_);
            _loc10_.§1j§ = b2Math.§<!E§(param5,_loc7_);
            _loc10_.§!!T§ = b2Math.§^!Y§(_loc10_.§1j§,_loc10_.dynamic);
            this.§^,§ = 1;
         }
      }
      
      public function §?o§(param1:b2SimplexCache) : void
      {
         param1.§5!7§ = this.§`!2§();
         param1.count = uint(this.§^,§);
         var _loc2_:Vector.<b2SimplexVertex> = this.§<!T§;
         var _loc3_:int = 0;
         while(_loc3_ < this.§^,§)
         {
            param1.indexA[_loc3_] = uint(_loc2_[_loc3_].indexA);
            param1.indexB[_loc3_] = uint(_loc2_[_loc3_].indexB);
            _loc3_++;
         }
      }
      
      public function §%h§() : b2Vec2
      {
         var _loc1_:b2Vec2 = null;
         var _loc2_:Number = NaN;
         switch(this.§^,§)
         {
            case 1:
               return this.m_v1.§!!T§.§#6§();
            case 2:
               _loc1_ = b2Math.§^!Y§(this.m_v2.§!!T§,this.m_v1.§!!T§);
               _loc2_ = b2Math.§[!o§(_loc1_,this.m_v1.§!!T§.§#6§());
               if(_loc2_ > 0)
               {
                  return b2Math.§%!p§(1,_loc1_);
               }
               return b2Math.§?j§(_loc1_,1);
               break;
            default:
               b2Settings.b2Assert(false);
               return new b2Vec2();
         }
      }
      
      public function §0J§() : b2Vec2
      {
         switch(this.§^,§)
         {
            case 0:
               b2Settings.b2Assert(false);
               return new b2Vec2();
            case 1:
               return this.m_v1.§!!T§;
            case 2:
               return new b2Vec2(this.m_v1.a * this.m_v1.§!!T§.x + this.m_v2.a * this.m_v2.§!!T§.x,this.m_v1.a * this.m_v1.§!!T§.y + this.m_v2.a * this.m_v2.§!!T§.y);
            default:
               b2Settings.b2Assert(false);
               return new b2Vec2();
         }
      }
      
      public function §"!m§(param1:b2Vec2, param2:b2Vec2) : void
      {
         switch(this.§^,§)
         {
            case 0:
               b2Settings.b2Assert(false);
               break;
            case 1:
               param1.SetV(this.m_v1.dynamic);
               param2.SetV(this.m_v1.§1j§);
               break;
            case 2:
               param1.x = this.m_v1.a * this.m_v1.dynamic.x + this.m_v2.a * this.m_v2.dynamic.x;
               param1.y = this.m_v1.a * this.m_v1.dynamic.y + this.m_v2.a * this.m_v2.dynamic.y;
               param2.x = this.m_v1.a * this.m_v1.§1j§.x + this.m_v2.a * this.m_v2.§1j§.x;
               param2.y = this.m_v1.a * this.m_v1.§1j§.y + this.m_v2.a * this.m_v2.§1j§.y;
               break;
            case 3:
               param2.x = param1.x = this.m_v1.a * this.m_v1.dynamic.x + this.m_v2.a * this.m_v2.dynamic.x + this.m_v3.a * this.m_v3.dynamic.x;
               param2.y = param1.y = this.m_v1.a * this.m_v1.dynamic.y + this.m_v2.a * this.m_v2.dynamic.y + this.m_v3.a * this.m_v3.dynamic.y;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function §`!2§() : Number
      {
         switch(this.§^,§)
         {
            case 0:
               b2Settings.b2Assert(false);
               return 0;
            case 1:
               return 0;
            case 2:
               return b2Math.§^!Y§(this.m_v1.§!!T§,this.m_v2.§!!T§).§+W§();
            case 3:
               return b2Math.§[!o§(b2Math.§^!Y§(this.m_v2.§!!T§,this.m_v1.§!!T§),b2Math.§^!Y§(this.m_v3.§!!T§,this.m_v1.§!!T§));
            default:
               b2Settings.b2Assert(false);
               return 0;
         }
      }
      
      public function Solve2() : void
      {
         var _loc1_:b2Vec2 = this.m_v1.§!!T§;
         var _loc2_:b2Vec2 = this.m_v2.§!!T§;
         var _loc3_:b2Vec2 = b2Math.§^!Y§(_loc2_,_loc1_);
         var _loc4_:Number;
         if((_loc4_ = -(_loc1_.x * _loc3_.x + _loc1_.y * _loc3_.y)) <= 0)
         {
            this.m_v1.a = 1;
            this.§^,§ = 1;
            return;
         }
         var _loc5_:Number;
         if((_loc5_ = _loc2_.x * _loc3_.x + _loc2_.y * _loc3_.y) <= 0)
         {
            this.m_v2.a = 1;
            this.§^,§ = 1;
            this.m_v1.Set(this.m_v2);
            return;
         }
         var _loc6_:Number = 1 / (_loc5_ + _loc4_);
         this.m_v1.a = _loc5_ * _loc6_;
         this.m_v2.a = _loc4_ * _loc6_;
         this.§^,§ = 2;
      }
      
      public function Solve3() : void
      {
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc1_:b2Vec2 = this.m_v1.§!!T§;
         var _loc2_:b2Vec2 = this.m_v2.§!!T§;
         var _loc3_:b2Vec2 = this.m_v3.§!!T§;
         var _loc4_:b2Vec2 = b2Math.§^!Y§(_loc2_,_loc1_);
         var _loc5_:Number = b2Math.§`z§(_loc1_,_loc4_);
         var _loc6_:Number;
         var _loc7_:Number = _loc6_ = b2Math.§`z§(_loc2_,_loc4_);
         var _loc8_:Number = -_loc5_;
         var _loc9_:b2Vec2 = b2Math.§^!Y§(_loc3_,_loc1_);
         var _loc10_:Number = b2Math.§`z§(_loc1_,_loc9_);
         var _loc11_:Number;
         var _loc12_:Number = _loc11_ = b2Math.§`z§(_loc3_,_loc9_);
         var _loc13_:Number = -_loc10_;
         var _loc14_:b2Vec2 = b2Math.§^!Y§(_loc3_,_loc2_);
         var _loc15_:Number = b2Math.§`z§(_loc2_,_loc14_);
         var _loc16_:Number;
         var _loc17_:Number = _loc16_ = b2Math.§`z§(_loc3_,_loc14_);
         var _loc18_:Number = -_loc15_;
         var _loc19_:Number;
         var _loc20_:Number = (_loc19_ = b2Math.§[!o§(_loc4_,_loc9_)) * b2Math.§[!o§(_loc2_,_loc3_);
         var _loc21_:Number = _loc19_ * b2Math.§[!o§(_loc3_,_loc1_);
         var _loc22_:Number = _loc19_ * b2Math.§[!o§(_loc1_,_loc2_);
         if(_loc8_ <= 0 && _loc13_ <= 0)
         {
            this.m_v1.a = 1;
            this.§^,§ = 1;
            return;
         }
         if(_loc7_ > 0 && _loc8_ > 0 && _loc22_ <= 0)
         {
            _loc24_ = 1 / (_loc7_ + _loc8_);
            this.m_v1.a = _loc7_ * _loc24_;
            this.m_v2.a = _loc8_ * _loc24_;
            this.§^,§ = 2;
            return;
         }
         if(_loc12_ > 0 && _loc13_ > 0 && _loc21_ <= 0)
         {
            _loc25_ = 1 / (_loc12_ + _loc13_);
            this.m_v1.a = _loc12_ * _loc25_;
            this.m_v3.a = _loc13_ * _loc25_;
            this.§^,§ = 2;
            this.m_v2.Set(this.m_v3);
            return;
         }
         if(_loc7_ <= 0 && _loc18_ <= 0)
         {
            this.m_v2.a = 1;
            this.§^,§ = 1;
            this.m_v1.Set(this.m_v2);
            return;
         }
         if(_loc12_ <= 0 && _loc17_ <= 0)
         {
            this.m_v3.a = 1;
            this.§^,§ = 1;
            this.m_v1.Set(this.m_v3);
            return;
         }
         if(_loc17_ > 0 && _loc18_ > 0 && _loc20_ <= 0)
         {
            _loc26_ = 1 / (_loc17_ + _loc18_);
            this.m_v2.a = _loc17_ * _loc26_;
            this.m_v3.a = _loc18_ * _loc26_;
            this.§^,§ = 2;
            this.m_v1.Set(this.m_v3);
            return;
         }
         var _loc23_:Number = 1 / (_loc20_ + _loc21_ + _loc22_);
         this.m_v1.a = _loc20_ * _loc23_;
         this.m_v2.a = _loc21_ * _loc23_;
         this.m_v3.a = _loc22_ * _loc23_;
         this.§^,§ = 3;
      }
   }
}
