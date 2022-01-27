package §;!Z§
{
   import §'!a§.*;
   import §4!W§.*;
   import §6!n§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §@[§:b2Simplex = new b2Simplex();
      
      private static var §;"@§:Vector.<int> = new Vector.<int>(3);
      
      private static var §5F§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §4!T§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§+z§;
         var _loc5_:b2DistanceProxy = param3.§5!$§;
         var _loc6_:b2Transform = param3.§+!g§;
         var _loc7_:b2Transform = param3.§,X§;
         var _loc8_:b2Simplex;
         (_loc8_ = §@[§).§>!q§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§[!F§;
         var _loc11_:Vector.<int> = §;"@§;
         var _loc12_:Vector.<int> = §5F§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§+"'§()).§@""§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§""6§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§""6§)
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
            if(_loc8_.§""6§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§+"'§()).§@""§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§2!m§()).§@""§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§""6§]).indexA = _loc4_.§'^§(b2Math.§6s§(_loc6_.R,_loc20_.§3!F§()));
            _loc21_.§[w§ = b2Math.§<!-§(_loc6_,_loc4_.§[E§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§'^§(b2Math.§6s§(_loc7_.R,_loc20_));
            _loc21_.§"!e§ = b2Math.§<!-§(_loc7_,_loc5_.§[E§(_loc21_.indexB));
            _loc21_.w = b2Math.§%!q§(_loc21_.§"!e§,_loc21_.§[w§);
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
            ++_loc8_.§""6§;
         }
         b2_gjkMaxIters = b2Math.§0"C§(b2_gjkMaxIters,_loc19_);
         _loc8_.§[e§(param1.§3-§,param1.§=!I§);
         param1.§2v§ = b2Math.§%!q§(param1.§3-§,param1.§=!I§).§4"3§();
         param1.§?!s§ = _loc19_;
         _loc8_.§<f§(param2);
         if(param3.§>D§)
         {
            _loc23_ = _loc4_.§!!l§;
            _loc24_ = _loc5_.§!!l§;
            if(param1.§2v§ > _loc23_ + _loc24_ && param1.§2v§ > Number.MIN_VALUE)
            {
               param1.§2v§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§%!q§(param1.§=!I§,param1.§3-§)).Normalize();
               param1.§3-§.x += _loc23_ * _loc25_.x;
               param1.§3-§.y += _loc23_ * _loc25_.y;
               param1.§=!I§.x -= _loc24_ * _loc25_.x;
               param1.§=!I§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§3-§.x + param1.§=!I§.x);
               _loc18_.y = 0.5 * (param1.§3-§.y + param1.§=!I§.y);
               param1.§3-§.x = param1.§=!I§.x = _loc18_.x;
               param1.§3-§.y = param1.§=!I§.y = _loc18_.y;
               param1.§2v§ = 0;
            }
         }
      }
   }
}
