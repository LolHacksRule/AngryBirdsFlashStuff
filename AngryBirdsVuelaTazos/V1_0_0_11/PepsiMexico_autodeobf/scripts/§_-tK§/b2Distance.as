package §_-tK§
{
   import §_-26§.*;
   import §_-dx§.*;
   import §_-iO§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §_-Ni§:b2Simplex = new b2Simplex();
      
      private static var §_-l3§:Vector.<int> = new Vector.<int>(3);
      
      private static var §_-p3§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §_-aO§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
      {
         var _loc17_:int = 0;
         var _loc18_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2SimplexVertex = null;
         var _loc22_:Boolean = false;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:b2Vec2 = null;
         ++b2_gjkCalls;
         var _loc4_:b2DistanceProxy = param3.§_-sM§;
         var _loc5_:b2DistanceProxy = param3.§_-cZ§;
         var _loc6_:b2Transform = param3.§_-3K§;
         var _loc7_:b2Transform = param3.§_-Yp§;
         var _loc8_:b2Simplex;
         (_loc8_ = §_-Ni§).§_-GI§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§_-n6§;
         var _loc11_:Vector.<int> = §_-l3§;
         var _loc12_:Vector.<int> = §_-p3§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§_-Ks§()).§_-u4§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§_-Xp§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§_-Xp§)
            {
               case 1:
                  break;
               case 2:
                  _loc8_.Solve2();
                  break;
               case 3:
                  _loc8_.Solve3();
                  break;
               default:
                  b2Settings.b2Assert(false);
            }
            if(_loc8_.§_-Xp§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§_-Ks§()).§_-u4§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§_-c7§()).§_-u4§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§_-Xp§]).indexA = _loc4_.§_-na§(b2Math.§_-vC§(_loc6_.R,_loc20_.§_-3T§()));
            _loc21_.§_-UL§ = b2Math.§_-nn§(_loc6_,_loc4_.§_-sZ§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§_-na§(b2Math.§_-vC§(_loc7_.R,_loc20_));
            _loc21_.§_-Mb§ = b2Math.§_-nn§(_loc7_,_loc5_.§_-sZ§(_loc21_.indexB));
            _loc21_.§_-D0§ = b2Math.§_-L6§(_loc21_.§_-Mb§,_loc21_.§_-UL§);
            _loc19_++;
            ++b2_gjkIters;
            _loc22_ = false;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               if(_loc21_.indexA == _loc11_[_loc17_] && _loc21_.indexB == _loc12_[_loc17_])
               {
                  _loc22_ = true;
                  break;
               }
               _loc17_++;
            }
            if(_loc22_)
            {
               break;
            }
            ++_loc8_.§_-Xp§;
         }
         b2_gjkMaxIters = b2Math.§_-Cz§(b2_gjkMaxIters,_loc19_);
         _loc8_.§_-og§(param1.§_-Z-§,param1.§false§);
         param1.§_-9q§ = b2Math.§_-L6§(param1.§_-Z-§,param1.§false§).§_-gq§();
         param1.§ each§ = _loc19_;
         _loc8_.§_-4f§(param2);
         if(param3.§_-pJ§)
         {
            _loc23_ = _loc4_.§_-8z§;
            _loc24_ = _loc5_.§_-8z§;
            if(param1.§_-9q§ > _loc23_ + _loc24_ && param1.§_-9q§ > Number.MIN_VALUE)
            {
               param1.§_-9q§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§_-L6§(param1.§false§,param1.§_-Z-§)).Normalize();
               param1.§_-Z-§.x += _loc23_ * _loc25_.x;
               param1.§_-Z-§.y += _loc23_ * _loc25_.y;
               param1.§false§.x -= _loc24_ * _loc25_.x;
               param1.§false§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§_-Z-§.x + param1.§false§.x);
               _loc18_.y = 0.5 * (param1.§_-Z-§.y + param1.§false§.y);
               param1.§_-Z-§.x = param1.§false§.x = _loc18_.x;
               param1.§_-Z-§.y = param1.§false§.y = _loc18_.y;
               param1.§_-9q§ = 0;
            }
         }
      }
   }
}
