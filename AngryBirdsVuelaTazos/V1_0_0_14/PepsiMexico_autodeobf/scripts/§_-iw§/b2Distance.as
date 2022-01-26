package §_-iw§
{
   import §_-4n§.*;
   import §_-bW§.*;
   import §_-yJ§.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var §_-Oq§:b2Simplex = new b2Simplex();
      
      private static var §_-eI§:Vector.<int> = new Vector.<int>(3);
      
      private static var §_-Tg§:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function §_-ef§(param1:b2DistanceOutput, param2:b2SimplexCache, param3:b2DistanceInput) : void
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
         var _loc4_:b2DistanceProxy = param3.§_-uI§;
         var _loc5_:b2DistanceProxy = param3.§_-Hj§;
         var _loc6_:b2Transform = param3.§_-B3§;
         var _loc7_:b2Transform = param3.§_-c4§;
         var _loc8_:b2Simplex;
         (_loc8_ = §_-Oq§).§_-57§(param2,_loc4_,_loc6_,_loc5_,_loc7_);
         var _loc9_:Vector.<b2SimplexVertex> = _loc8_.§_-dR§;
         var _loc11_:Vector.<int> = §_-eI§;
         var _loc12_:Vector.<int> = §_-Tg§;
         var _loc13_:int = 0;
         var _loc15_:Number;
         var _loc14_:b2Vec2;
         var _loc16_:Number = _loc15_ = (_loc14_ = _loc8_.§_-M6§()).§_-xA§();
         var _loc19_:int = 0;
         while(_loc19_ < 20)
         {
            _loc13_ = _loc8_.§_-XS§;
            _loc17_ = 0;
            while(_loc17_ < _loc13_)
            {
               _loc11_[_loc17_] = _loc9_[_loc17_].indexA;
               _loc12_[_loc17_] = _loc9_[_loc17_].indexB;
               _loc17_++;
            }
            switch(_loc8_.§_-XS§)
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
            if(_loc8_.§_-XS§ == 3)
            {
               break;
            }
            if((_loc16_ = (_loc18_ = _loc8_.§_-M6§()).§_-xA§()) > _loc15_)
            {
            }
            _loc15_ = _loc16_;
            if((_loc20_ = _loc8_.§_-xx§()).§_-xA§() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            (_loc21_ = _loc9_[_loc8_.§_-XS§]).indexA = _loc4_.§_-ex§(b2Math.§_-Wl§(_loc6_.R,_loc20_.§_-iJ§()));
            _loc21_.§finally§ = b2Math.§_-7c§(_loc6_,_loc4_.§_-a7§(_loc21_.indexA));
            _loc21_.indexB = _loc5_.§_-ex§(b2Math.§_-Wl§(_loc7_.R,_loc20_));
            _loc21_.§_-8K§ = b2Math.§_-7c§(_loc7_,_loc5_.§_-a7§(_loc21_.indexB));
            _loc21_.§_-7n§ = b2Math.§_-nM§(_loc21_.§_-8K§,_loc21_.§finally§);
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
            ++_loc8_.§_-XS§;
         }
         b2_gjkMaxIters = b2Math.§_-NX§(b2_gjkMaxIters,_loc19_);
         _loc8_.§_-bm§(param1.§_-mu§,param1.§_-Db§);
         param1.§_-EH§ = b2Math.§_-nM§(param1.§_-mu§,param1.§_-Db§).§_-K-§();
         param1.§_-kP§ = _loc19_;
         _loc8_.§_-Hq§(param2);
         if(param3.§_-DN§)
         {
            _loc23_ = _loc4_.§_-9H§;
            _loc24_ = _loc5_.§_-9H§;
            if(param1.§_-EH§ > _loc23_ + _loc24_ && param1.§_-EH§ > Number.MIN_VALUE)
            {
               param1.§_-EH§ -= _loc23_ + _loc24_;
               (_loc25_ = b2Math.§_-nM§(param1.§_-Db§,param1.§_-mu§)).Normalize();
               param1.§_-mu§.x += _loc23_ * _loc25_.x;
               param1.§_-mu§.y += _loc23_ * _loc25_.y;
               param1.§_-Db§.x -= _loc24_ * _loc25_.x;
               param1.§_-Db§.y -= _loc24_ * _loc25_.y;
            }
            else
            {
               (_loc18_ = new b2Vec2()).x = 0.5 * (param1.§_-mu§.x + param1.§_-Db§.x);
               _loc18_.y = 0.5 * (param1.§_-mu§.y + param1.§_-Db§.y);
               param1.§_-mu§.x = param1.§_-Db§.x = _loc18_.x;
               param1.§_-mu§.y = param1.§_-Db§.y = _loc18_.y;
               param1.§_-EH§ = 0;
            }
         }
      }
   }
}
