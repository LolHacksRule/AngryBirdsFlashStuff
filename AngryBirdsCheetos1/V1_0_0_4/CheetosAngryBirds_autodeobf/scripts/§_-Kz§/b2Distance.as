package §_-Kz§
{
   import §_-Jf§.*;
   import §_-OY§.*;
   import §_-Vn§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §_-qM§:b2Simplex = new b2Simplex();
      
      private static var §_-DO§:Vector.<int> = new Vector.<int>(3);
      
      private static var §_-la§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §_-N§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§_-t6§;
         var _loc5_:b2DistanceProxy = param3.§_-iZ§;
         var _loc6_:b2Transform = param3.§_-p8§;
         var _loc7_:b2Transform = param3.§_-Mv§;
         var _loc8_:b2Simplex;
         (_loc8_ = §_-qM§).§_-Ls§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§_-ja§;
         var _loc11_:Vector.<int> = §_-DO§;
         var _loc12_:Vector.<int> = §_-la§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§_-YQ§()).§_-Tv§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§_-xi§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§_-xi§)
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
            if(_loc8_.§_-xi§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§_-YQ§()).§_-Tv§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§_-rr§()).§_-Tv§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§_-xi§]).indexA = _loc4_.§_-Bv§(b2Math.§_-dE§(_loc6_.R,_loc20_.§_-Ge§()));
            _loc21_.§_-fv§ = b2Math.§_-jR§(_loc6_,_loc4_.§_-QB§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§_-Bv§(b2Math.§_-dE§(_loc7_.R,_loc20_));
            _loc21_.§_-9W§ = b2Math.§_-jR§(_loc7_,_loc5_.§_-QB§(_loc21_.indexB));
            _loc21_.§_-Oo§ = b2Math.§_-FN§(_loc21_.§_-9W§,_loc21_.§_-fv§);
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
            ++_loc8_.§_-xi§;
         }
         b2_gjkMaxIters = b2Math.§_-6y§(b2_gjkMaxIters,_loc19_);
         _loc8_.§_-PW§(param1.§_-gv§,param1.§_-JJ§);
         param1.§_-TQ§ = b2Math.§_-FN§(param1.§_-gv§,param1.§_-JJ§).§_-VY§();
         param1.static = _loc19_;
         _loc8_.§_-6b§(param2);
         if(param3.§_-7H§)
         {
            _loc23_ = _loc4_.§_-EG§;
            _loc24_ = _loc5_.§_-EG§;
            if(param1.§_-TQ§ > _loc23_ + _loc24_ && param1.§_-TQ§ > Number.MIN_VALUE)
            {
               param1.§_-TQ§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§_-FN§(param1.§_-JJ§,param1.§_-gv§)).Normalize();
               param1.§_-gv§.x += _loc23_ * _loc25_.x;
               param1.§_-gv§.y += _loc23_ * _loc25_.y;
               param1.§_-JJ§.x -= _loc24_ * _loc25_.x;
               param1.§_-JJ§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§_-gv§.x + param1.§_-JJ§.x);
               _loc18_.y = 0.5 * (param1.§_-gv§.y + param1.§_-JJ§.y);
               param1.§_-gv§.x = param1.§_-JJ§.x = _loc18_.x;
               param1.§_-gv§.y = param1.§_-JJ§.y = _loc18_.y;
               param1.§_-TQ§ = 0;
            }
         }
      }
   }
}
