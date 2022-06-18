package §0J§
{
   import §[!3§.*;
   import §]!o§.*;
   import §`# §.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §?!1§:b2Simplex = new b2Simplex();
      
      private static var §?$5§:Vector.<int> = new Vector.<int>(3);
      
      private static var §%#a§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §3$4§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§[#G§;
         var _loc5_:b2DistanceProxy = param3.§[$@§;
         var _loc6_:b2Transform = param3.§@D§;
         var _loc7_:b2Transform = param3.§"#L§;
         var _loc8_:b2Simplex;
         (_loc8_ = §?!1§).§20§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§["q§;
         var _loc11_:Vector.<int> = §?$5§;
         var _loc12_:Vector.<int> = §%#a§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc16_:Number = _loc15_ = _loc8_.§6"c§().§&!X§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§%"r§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§%"r§)
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
            if(_loc8_.§%"r§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§6"c§()).§&!X§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§4$@§()).§&!X§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§%"r§]).indexA = _loc4_.§2#^§(b2Math.§5L§(_loc6_.R,_loc20_.§%!C§()));
            _loc21_.§@#X§ = b2Math.§=!t§(_loc6_,_loc4_.§2"m§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§2#^§(b2Math.§5L§(_loc7_.R,_loc20_));
            _loc21_.§?#t§ = b2Math.§=!t§(_loc7_,_loc5_.§2"m§(_loc21_.indexB));
            _loc21_.w = b2Math.§?"S§(_loc21_.§?#t§,_loc21_.§@#X§);
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
            ++_loc8_.§%"r§;
         }
         b2_gjkMaxIters = b2Math.§"8§(b2_gjkMaxIters,_loc19_);
         _loc8_.§#"G§(param1.§#!4§,param1.§&9§);
         param1.§5$3§ = b2Math.§?"S§(param1.§#!4§,param1.§&9§).Length();
         param1.§'"N§ = _loc19_;
         _loc8_.§`!8§(param2);
         if(param3.§1#%§)
         {
            _loc23_ = _loc4_.§,"k§;
            _loc24_ = _loc5_.§,"k§;
            if(param1.§5$3§ > _loc23_ + _loc24_ && param1.§5$3§ > Number.MIN_VALUE)
            {
               param1.§5$3§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§?"S§(param1.§&9§,param1.§#!4§)).Normalize();
               param1.§#!4§.x += _loc23_ * _loc25_.x;
               param1.§#!4§.y += _loc23_ * _loc25_.y;
               param1.§&9§.x -= _loc24_ * _loc25_.x;
               param1.§&9§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§#!4§.x + param1.§&9§.x);
               _loc18_.y = 0.5 * (param1.§#!4§.y + param1.§&9§.y);
               param1.§#!4§.x = param1.§&9§.x = _loc18_.x;
               param1.§#!4§.y = param1.§&9§.y = _loc18_.y;
               param1.§5$3§ = 0;
            }
         }
      }
   }
}
