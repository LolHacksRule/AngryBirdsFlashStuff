package §_-gE§
{
   import §_-03n§.*;
   import §_-5§.*;
   import §_-Yp§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §_-Ex§:b2Simplex = new b2Simplex();
      
      private static var §_-E8§:Vector.<int> = new Vector.<int>(3);
      
      private static var §_-cS§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §_-Gt§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§_-05Z§;
         var _loc5_:b2DistanceProxy = param3.§_-l4§;
         var _loc6_:b2Transform = param3.§_-Jr§;
         var _loc7_:b2Transform = param3.§_-St§;
         var _loc8_:b2Simplex;
         (_loc8_ = §_-Ex§).§_-4m§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§_-09U§;
         var _loc11_:Vector.<int> = §_-E8§;
         var _loc12_:Vector.<int> = §_-cS§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§_-oo§()).§_-wN§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§_-ru§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§_-ru§)
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
            if(_loc8_.§_-ru§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§_-oo§()).§_-wN§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§_-Au§()).§_-wN§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§_-ru§]).indexA = _loc4_.§_-02l§(b2Math.§_-bf§(_loc6_.R,_loc20_.§_-5M§()));
            _loc21_.§_-9x§ = b2Math.§_-yP§(_loc6_,_loc4_.§_-0-e§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§_-02l§(b2Math.§_-bf§(_loc7_.R,_loc20_));
            _loc21_.§_-8S§ = b2Math.§_-yP§(_loc7_,_loc5_.§_-0-e§(_loc21_.indexB));
            _loc21_.§_-04b§ = b2Math.§_-DO§(_loc21_.§_-8S§,_loc21_.§_-9x§);
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
            ++_loc8_.§_-ru§;
         }
         b2_gjkMaxIters = b2Math.§_-yL§(b2_gjkMaxIters,_loc19_);
         _loc8_.§use§(param1.§_-dQ§,param1.§_-pV§);
         param1.§_-1P§ = b2Math.§_-DO§(param1.§_-dQ§,param1.§_-pV§).§_-YT§();
         param1.§_-08F§ = _loc19_;
         _loc8_.§_-OX§(param2);
         if(param3.§_-029§)
         {
            _loc23_ = _loc4_.§_-0CZ§;
            _loc24_ = _loc5_.§_-0CZ§;
            if(param1.§_-1P§ > _loc23_ + _loc24_ && param1.§_-1P§ > Number.MIN_VALUE)
            {
               param1.§_-1P§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§_-DO§(param1.§_-pV§,param1.§_-dQ§)).Normalize();
               param1.§_-dQ§.x += _loc23_ * _loc25_.x;
               param1.§_-dQ§.y += _loc23_ * _loc25_.y;
               param1.§_-pV§.x -= _loc24_ * _loc25_.x;
               param1.§_-pV§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§_-dQ§.x + param1.§_-pV§.x);
               _loc18_.y = 0.5 * (param1.§_-dQ§.y + param1.§_-pV§.y);
               param1.§_-dQ§.x = param1.§_-pV§.x = _loc18_.x;
               param1.§_-dQ§.y = param1.§_-pV§.y = _loc18_.y;
               param1.§_-1P§ = 0;
            }
         }
      }
   }
}
