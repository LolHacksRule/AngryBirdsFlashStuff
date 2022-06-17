package §="o§
{
   import flash.geom.Point;
   
   public class §<!X§
   {
       
      
      public function §<!X§()
      {
         super();
      }
      
      public static function §0!I§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : §>"f§
      {
         var _loc8_:Number = param6 - param1;
         var _loc9_:Number = param7 - param2;
         var _loc10_:Point = new Point(Math.cos(param5),Math.sin(param5));
         var _loc11_:Point = new Point(Math.cos(param5 + Math.PI * 0.5),Math.sin(param5 + Math.PI * 0.5));
         _loc10_.normalize(1);
         _loc11_.normalize(1);
         var _loc12_:Vector.<Number> = new Vector.<Number>(2);
         var _loc13_:Vector.<Number> = new <Number>[param3 / 2,param4 / 2];
         var _loc14_:Vector.<Point> = new <Point>[_loc10_,_loc11_];
         var _loc15_:Number = 0;
         var _loc16_:Number = 0;
         var _loc17_:int = 0;
         while(_loc17_ < 2)
         {
            _loc12_[_loc17_] = §'"4§(_loc8_,_loc9_,_loc14_[_loc17_].x,_loc14_[_loc17_].y);
            if(_loc12_[_loc17_] < -_loc13_[_loc17_])
            {
               _loc15_ = _loc12_[_loc17_] + _loc13_[_loc17_];
               _loc16_ += _loc15_ * _loc15_;
               _loc12_[_loc17_] = -_loc13_[_loc17_];
            }
            else if(_loc12_[_loc17_] > _loc13_[_loc17_])
            {
               _loc15_ = _loc12_[_loc17_] - _loc13_[_loc17_];
               _loc16_ += _loc15_ * _loc15_;
               _loc12_[_loc17_] = _loc13_[_loc17_];
            }
            _loc17_++;
         }
         var _loc18_:Point = new Point(param1,param2);
         _loc17_ = 0;
         while(_loc17_ < 2)
         {
            _loc18_.x += _loc12_[_loc17_] * _loc14_[_loc17_].x;
            _loc18_.y += _loc12_[_loc17_] * _loc14_[_loc17_].y;
            _loc17_++;
         }
         var _loc19_:§>"f§;
         (_loc19_ = new §>"f§()).§6V§ = Math.sqrt(_loc16_);
         _loc19_.§&$-§ = _loc18_;
         return _loc19_;
      }
      
      public static function §'"4§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param1 * param3 + param2 * param4;
      }
   }
}
