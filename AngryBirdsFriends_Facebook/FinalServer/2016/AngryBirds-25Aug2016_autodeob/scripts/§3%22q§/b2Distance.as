package §3"q§
{
   import §0H§.*;
   import §0m§.*;
   import §?!c§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §0"L§:b2Simplex = new b2Simplex();
      
      private static var §1#r§:Vector.<int> = new Vector.<int>(3);
      
      private static var § M§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function § !R§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§["-§;
         var _loc5_:b2DistanceProxy = param3.§?$;§;
         var _loc6_:b2Transform = param3.§0E§;
         var _loc7_:b2Transform = param3.§6"M§;
         var _loc8_:b2Simplex;
         (_loc8_ = §0"L§).§5I§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§[#k§;
         var _loc11_:Vector.<int> = §1#r§;
         var _loc12_:Vector.<int> = § M§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc16_:Number = _loc15_ = _loc8_.§ "E§().§>#%§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§%!V§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§%!V§)
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
            if(_loc8_.§%!V§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§ "E§()).§>#%§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§1"?§()).§>#%§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§%!V§]).indexA = _loc4_.§^!T§(b2Math.§'h§(_loc6_.R,_loc20_.§6#5§()));
            _loc21_.§3"c§ = b2Math.§0#O§(_loc6_,_loc4_.§3"e§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§^!T§(b2Math.§'h§(_loc7_.R,_loc20_));
            _loc21_.§9"M§ = b2Math.§0#O§(_loc7_,_loc5_.§3"e§(_loc21_.indexB));
            _loc21_.w = b2Math.§>!6§(_loc21_.§9"M§,_loc21_.§3"c§);
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
            ++_loc8_.§%!V§;
         }
         b2_gjkMaxIters = b2Math.§;&§(b2_gjkMaxIters,_loc19_);
         _loc8_.§-T§(param1.§&"F§,param1.§6"-§);
         param1.§-!i§ = b2Math.§>!6§(param1.§&"F§,param1.§6"-§).Length();
         param1.§5?§ = _loc19_;
         _loc8_.§<^§(param2);
         if(param3.§2"4§)
         {
            _loc23_ = _loc4_.§0#I§;
            _loc24_ = _loc5_.§0#I§;
            if(param1.§-!i§ > _loc23_ + _loc24_ && param1.§-!i§ > Number.MIN_VALUE)
            {
               param1.§-!i§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§>!6§(param1.§6"-§,param1.§&"F§)).Normalize();
               param1.§&"F§.x += _loc23_ * _loc25_.x;
               param1.§&"F§.y += _loc23_ * _loc25_.y;
               param1.§6"-§.x -= _loc24_ * _loc25_.x;
               param1.§6"-§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§&"F§.x + param1.§6"-§.x);
               _loc18_.y = 0.5 * (param1.§&"F§.y + param1.§6"-§.y);
               param1.§&"F§.x = param1.§6"-§.x = _loc18_.x;
               param1.§&"F§.y = param1.§6"-§.y = _loc18_.y;
               param1.§-!i§ = 0;
            }
         }
      }
   }
}
