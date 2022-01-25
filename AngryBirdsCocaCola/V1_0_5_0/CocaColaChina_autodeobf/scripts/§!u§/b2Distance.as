package §!u§
{
   import §54§.*;
   import §;h§.*;
   import §]!7§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §6!X§:b2Simplex = new b2Simplex();
      
      private static var §do §:Vector.<int> = new Vector.<int>(3);
      
      private static var §%!5§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §6!_§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§8G§;
         var _loc5_:b2DistanceProxy = param3.§@e§;
         var _loc6_:b2Transform = param3.§&!5§;
         var _loc7_:b2Transform = param3.§6w§;
         var _loc8_:b2Simplex;
         (_loc8_ = §6!X§).§]!#§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§9d§;
         var _loc11_:Vector.<int> = §do §;
         var _loc12_:Vector.<int> = §%!5§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§<!>§()).§&T§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§0!K§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§0!K§)
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
            if(_loc8_.§0!K§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§<!>§()).§&T§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§+]§()).§&T§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§0!K§]).indexA = _loc4_.§2!c§(b2Math.§[B§(_loc6_.R,_loc20_.§'g§()));
            _loc21_.§+!d§ = b2Math.§9l§(_loc6_,_loc4_.§>R§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§2!c§(b2Math.§[B§(_loc7_.R,_loc20_));
            _loc21_.§,!-§ = b2Math.§9l§(_loc7_,_loc5_.§>R§(_loc21_.indexB));
            _loc21_.§"!2§ = b2Math.§"!S§(_loc21_.§,!-§,_loc21_.§+!d§);
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
            ++_loc8_.§0!K§;
         }
         b2_gjkMaxIters = b2Math.§@!'§(b2_gjkMaxIters,_loc19_);
         _loc8_.§!!0§(param1.§<W§,param1.§<f§);
         param1.§4m§ = b2Math.§"!S§(param1.§<W§,param1.§<f§).§&c§();
         param1.§<!M§ = _loc19_;
         _loc8_.§1p§(param2);
         if(param3.§!!?§)
         {
            _loc23_ = _loc4_.§,!3§;
            _loc24_ = _loc5_.§,!3§;
            if(param1.§4m§ > _loc23_ + _loc24_ && param1.§4m§ > Number.MIN_VALUE)
            {
               param1.§4m§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§"!S§(param1.§<f§,param1.§<W§)).Normalize();
               param1.§<W§.x += _loc23_ * _loc25_.x;
               param1.§<W§.y += _loc23_ * _loc25_.y;
               param1.§<f§.x -= _loc24_ * _loc25_.x;
               param1.§<f§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§<W§.x + param1.§<f§.x);
               _loc18_.y = 0.5 * (param1.§<W§.y + param1.§<f§.y);
               param1.§<W§.x = param1.§<f§.x = _loc18_.x;
               param1.§<W§.y = param1.§<f§.y = _loc18_.y;
               param1.§4m§ = 0;
            }
         }
      }
   }
}
