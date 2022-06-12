package §4!y§
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §<U§ extends Sprite
   {
      
      private static const §?F§:Number = 0;
      
      private static const §6!H§:Number = 1;
      
      private static const §6!D§:Number = 1;
      
      private static const §3!H§:Number = 27;
       
      
      private var §0!Z§:Vector.<§1">§>;
      
      private var §[!A§:int;
      
      public function §<U§()
      {
         this.§0!Z§ = new Vector.<§1">§>();
         super();
      }
      
      public function draw(param1:XML, param2:Number = 0.0, param3:Number = 0.0) : void
      {
         var _loc5_:XML = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc9_:Point = null;
         var _loc10_:Point = null;
         var _loc11_:Point = null;
         var _loc12_:Point = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:§1">§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§0!Z§ = new Vector.<§1">§>();
         var _loc4_:Vector.<Point> = new Vector.<Point>();
         for each(_loc5_ in param1.point)
         {
            _loc4_.push(new Point(_loc5_.@x,_loc5_.@y));
         }
         _loc6_ = 0;
         _loc7_ = 1;
         while(_loc7_ < _loc4_.length - 2)
         {
            _loc9_ = _loc4_[_loc7_ - 1];
            _loc10_ = _loc4_[_loc7_];
            _loc11_ = _loc4_[_loc7_ + 1];
            _loc12_ = _loc4_[_loc7_ + 2];
            _loc13_ = this.§2"#§(_loc9_,_loc10_,_loc11_,_loc12_);
            _loc14_ = _loc6_;
            while(_loc14_ < _loc13_)
            {
               _loc14_ = Math.min(_loc14_,_loc13_);
               _loc15_ = this.§6"9§(_loc9_,_loc10_,_loc11_,_loc12_,_loc14_);
               _loc16_ = this.§0!6§(_loc15_,_loc9_.x,_loc10_.x,_loc11_.x,_loc12_.x);
               _loc17_ = this.§0!6§(_loc15_,_loc9_.y,_loc10_.y,_loc11_.y,_loc12_.y);
               _loc18_ = new §1">§(_loc16_,_loc17_);
               addChild(_loc18_);
               this.§0!Z§.push(_loc18_);
               _loc14_ += §3!H§;
            }
            _loc6_ = _loc14_ - _loc13_;
            _loc7_++;
         }
         var _loc8_:int = Math.round(this.§0!Z§.length * param2);
         _loc7_ = 0;
         while(_loc7_ < _loc8_)
         {
            this.§0!Z§[_loc7_].highlight();
            _loc7_++;
         }
         this.§[!A§ = Math.round(this.§0!Z§.length * param3) - _loc8_;
         _loc7_ = _loc8_;
         while(_loc7_ < this.§[!A§ + _loc8_)
         {
            this.§0!Z§[_loc7_].highlight(_loc7_ + 10 - _loc8_);
            this.§0!Z§[_loc7_].addEventListener(Event.COMPLETE,this.§%e§);
            _loc7_++;
         }
      }
      
      private function §%e§(param1:Event) : void
      {
         --this.§[!A§;
         if(this.§[!A§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function §2!@§(param1:Number) : §1">§
      {
         var _loc2_:int = Math.round(this.§0!Z§.length * param1);
         return this.§0!Z§[_loc2_];
      }
      
      private function §0!6§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         var _loc6_:Number = 0.5 * ((1 - §?F§) * (1 + §6!H§) * (1 + §6!D§) * (param3 - param2) + (1 - §?F§) * (1 - §6!H§) * (1 - §6!D§) * (param4 - param3));
         var _loc7_:Number = 0.5 * ((1 - §?F§) * (1 - §6!H§) * (1 + §6!D§) * (param4 - param3) + (1 - §?F§) * (1 + §6!H§) * (1 - §6!D§) * (param5 - param4));
         var _loc8_:Number = (1 + 2 * param1) * Math.pow(1 - param1,2);
         var _loc9_:Number = param1 * Math.pow(param1 - 1,2);
         var _loc10_:Number = Math.pow(param1,2) * (3 - 2 * param1);
         var _loc11_:Number = Math.pow(param1,2) * (param1 - 1);
         return _loc8_ * param3 + _loc9_ * _loc6_ + _loc10_ * param4 + _loc11_ * _loc7_;
      }
      
      private function §9'§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         var _loc6_:Number = 0.5 * ((1 - §?F§) * (1 + §6!H§) * (1 + §6!D§) * (param3 - param2) + (1 - §?F§) * (1 - §6!H§) * (1 - §6!D§) * (param4 - param3));
         var _loc7_:Number = 0.5 * ((1 - §?F§) * (1 - §6!H§) * (1 + §6!D§) * (param4 - param3) + (1 - §?F§) * (1 + §6!H§) * (1 - §6!D§) * (param5 - param4));
         var _loc8_:Number = -6 * param1 + 6 * Math.pow(param1,2);
         var _loc9_:Number = 1 - 4 * param1 + 3 * Math.pow(param1,2);
         var _loc10_:Number = 6 * param1 - 6 * Math.pow(param1,2);
         var _loc11_:Number = -2 * param1 + 3 * Math.pow(param1,2);
         return _loc8_ * param3 + _loc9_ * _loc6_ + _loc10_ * param4 + _loc11_ * _loc7_;
      }
      
      private function §6!r§(param1:Point, param2:Point, param3:Point, param4:Point, param5:Number) : Number
      {
         return Math.sqrt(Math.pow(this.§9'§(param5,param1.x,param2.x,param3.x,param4.x),2) + Math.pow(this.§9'§(param5,param1.y,param2.y,param3.y,param4.y),2));
      }
      
      private function §2"#§(param1:Point, param2:Point, param3:Point, param4:Point, param5:Number = 1.0) : Number
      {
         return param5 / 2 * (0.5556 * this.§6!r§(param1,param2,param3,param4,param5 / 2 * -0.7746 + param5 / 2) + 0.8889 * this.§6!r§(param1,param2,param3,param4,param5 / 2 * 0 + param5 / 2) + 0.5556 * this.§6!r§(param1,param2,param3,param4,param5 / 2 * 0.7746 + param5 / 2));
      }
      
      private function §6"9§(param1:Point, param2:Point, param3:Point, param4:Point, param5:Number) : Number
      {
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc8_:Number = this.§2"#§(param1,param2,param3,param4);
         var _loc9_:Number = param5 / _loc8_;
         var _loc10_:Number = 0;
         var _loc11_:Number = 1;
         var _loc12_:int = 0;
         while(_loc12_ < 100)
         {
            _loc13_ = this.§2"#§(param1,param2,param3,param4,_loc9_) - param5;
            if((_loc14_ = Math.abs(_loc13_)) < 0.01)
            {
               return _loc9_;
            }
            _loc15_ = this.§6!r§(param1,param2,param3,param4,_loc9_);
            _loc16_ = _loc9_ - _loc13_ / _loc15_;
            if(_loc13_ > 0)
            {
               _loc11_ = _loc9_;
               if(_loc16_ <= _loc10_)
               {
                  _loc9_ = 0.5 * (_loc11_ + _loc10_);
               }
               else
               {
                  _loc9_ = _loc16_;
               }
            }
            else
            {
               _loc10_ = _loc9_;
               if(_loc16_ >= _loc11_)
               {
                  _loc9_ = 0.5 * (_loc11_ + _loc10_);
               }
               else
               {
                  _loc9_ = _loc16_;
               }
            }
            _loc12_++;
         }
         return _loc9_;
      }
   }
}
