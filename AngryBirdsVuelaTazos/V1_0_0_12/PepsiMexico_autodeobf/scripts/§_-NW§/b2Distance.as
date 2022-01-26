package §_-Nw§
{
   import §_-9z§.*;
   import §_-Bt§.*;
   import §_-sU§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §_-SU§:b2Simplex = new b2Simplex();
      
      private static var §_-pJ§:Vector.<int> = new Vector.<int>(3);
      
      private static var §_-X7§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §_-OQ§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§_-gv§;
         var _loc5_:b2DistanceProxy = param3.§_-KQ§;
         var _loc6_:b2Transform = param3.§_-cv§;
         var _loc7_:b2Transform = param3.§_-Tr§;
         var _loc8_:b2Simplex;
         (_loc8_ = §_-SU§).§_-fx§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§_-2M§;
         var _loc11_:Vector.<int> = §_-pJ§;
         var _loc12_:Vector.<int> = §_-X7§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§_-f2§()).§_-8y§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§_-KJ§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§_-KJ§)
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
            if(_loc8_.§_-KJ§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§_-f2§()).§_-8y§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§_-Un§()).§_-8y§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§_-KJ§]).indexA = _loc4_.§_-uK§(b2Math.§_-fK§(_loc6_.R,_loc20_.§_-Hv§()));
            _loc21_.§_-hc§ = b2Math.§_-sF§(_loc6_,_loc4_.§false§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§_-uK§(b2Math.§_-fK§(_loc7_.R,_loc20_));
            _loc21_.§_-fA§ = b2Math.§_-sF§(_loc7_,_loc5_.§false§(_loc21_.indexB));
            _loc21_.§_-Rj§ = b2Math.§_-9M§(_loc21_.§_-fA§,_loc21_.§_-hc§);
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
            ++_loc8_.§_-KJ§;
         }
         b2_gjkMaxIters = b2Math.§_-DY§(b2_gjkMaxIters,_loc19_);
         _loc8_.§_-qb§(param1.§_-34§,param1.§case §);
         param1.§_-M9§ = b2Math.§_-9M§(param1.§_-34§,param1.§case §).§_-UN§();
         param1.§_-oy§ = _loc19_;
         _loc8_.§_-DO§(param2);
         if(param3.§_-JK§)
         {
            _loc23_ = _loc4_.§_-uB§;
            _loc24_ = _loc5_.§_-uB§;
            if(param1.§_-M9§ > _loc23_ + _loc24_ && param1.§_-M9§ > Number.MIN_VALUE)
            {
               param1.§_-M9§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§_-9M§(param1.§case §,param1.§_-34§)).Normalize();
               param1.§_-34§.x += _loc23_ * _loc25_.x;
               param1.§_-34§.y += _loc23_ * _loc25_.y;
               param1.§case §.x -= _loc24_ * _loc25_.x;
               param1.§case §.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§_-34§.x + param1.§case §.x);
               _loc18_.y = 0.5 * (param1.§_-34§.y + param1.§case §.y);
               param1.§_-34§.x = param1.§case §.x = _loc18_.x;
               param1.§_-34§.y = param1.§case §.y = _loc18_.y;
               param1.§_-M9§ = 0;
            }
         }
      }
   }
}
