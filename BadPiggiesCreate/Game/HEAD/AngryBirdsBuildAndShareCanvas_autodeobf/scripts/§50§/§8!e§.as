package §50§
{
   import com.rovio.assets.§69§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §8!e§ extends Sprite
   {
      
      private static const §-!k§:Number = 0;
      
      private static const §[d§:Number = 1;
      
      private static const §]!Z§:Number = 1;
      
      private static const §""!§:Number = 27;
       
      
      private var §82§:Vector.<§+!&§>;
      
      private var §5!`§:int;
      
      public function §8!e§()
      {
         this.§82§ = new Vector.<§+!&§>();
         super();
      }
      
      public function draw(param1:XML, param2:Number = 0.0, param3:Number = 0.0) : void
      {
         var _loc5_:XML = null;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc9_:Class = null;
         var _loc10_:BitmapData = null;
         var _loc11_:Bitmap = null;
         var _loc12_:Point = null;
         var _loc13_:Point = null;
         var _loc14_:Point = null;
         var _loc15_:Point = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:§+!&§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.§82§ = new Vector.<§+!&§>();
         var _loc4_:Vector.<Point> = new Vector.<Point>();
         for each(_loc5_ in param1.point)
         {
            _loc4_.push(new Point(_loc5_.@x,_loc5_.@y));
            if(_loc5_.hasOwnProperty("@icon"))
            {
               if(_loc9_ = §69§.§ 0§(_loc5_.@icon,false))
               {
                  _loc10_ = new _loc9_() as BitmapData;
                  (_loc11_ = new Bitmap(_loc10_)).x = _loc5_.@x - _loc11_.width / 2;
                  _loc11_.y = _loc5_.@y - _loc11_.height / 2;
                  addChild(_loc11_);
               }
            }
         }
         _loc6_ = 0;
         _loc7_ = 1;
         while(_loc7_ < _loc4_.length - 2)
         {
            _loc12_ = _loc4_[_loc7_ - 1];
            _loc13_ = _loc4_[_loc7_];
            _loc14_ = _loc4_[_loc7_ + 1];
            _loc15_ = _loc4_[_loc7_ + 2];
            _loc16_ = this.§&U§(_loc12_,_loc13_,_loc14_,_loc15_);
            _loc17_ = _loc6_;
            while(_loc17_ < _loc16_)
            {
               _loc17_ = Math.min(_loc17_,_loc16_);
               _loc18_ = this.§8!7§(_loc12_,_loc13_,_loc14_,_loc15_,_loc17_);
               _loc19_ = this.§!5§(_loc18_,_loc12_.x,_loc13_.x,_loc14_.x,_loc15_.x);
               _loc20_ = this.§!5§(_loc18_,_loc12_.y,_loc13_.y,_loc14_.y,_loc15_.y);
               _loc21_ = new §+!&§(_loc19_,_loc20_);
               addChild(_loc21_);
               this.§82§.push(_loc21_);
               _loc17_ += §""!§;
            }
            _loc6_ = _loc17_ - _loc16_;
            _loc7_++;
         }
         var _loc8_:int = Math.round(this.§82§.length * param2);
         _loc7_ = 0;
         while(_loc7_ < _loc8_)
         {
            this.§82§[_loc7_].highlight();
            _loc7_++;
         }
         this.§5!`§ = Math.round(this.§82§.length * param3) - _loc8_;
         _loc7_ = _loc8_;
         while(_loc7_ < this.§5!`§ + _loc8_)
         {
            this.§82§[_loc7_].highlight(_loc7_ + 10 - _loc8_);
            this.§82§[_loc7_].addEventListener(Event.COMPLETE,this.§5!_§);
            _loc7_++;
         }
      }
      
      private function §5!_§(param1:Event) : void
      {
         --this.§5!`§;
         if(this.§5!`§ == 0)
         {
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      public function §^<§(param1:Number) : §+!&§
      {
         var _loc2_:int = Math.round(this.§82§.length * param1);
         return this.§82§[_loc2_];
      }
      
      private function §!5§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         var _loc6_:Number = 0.5 * ((1 - §-!k§) * (1 + §[d§) * (1 + §]!Z§) * (param3 - param2) + (1 - §-!k§) * (1 - §[d§) * (1 - §]!Z§) * (param4 - param3));
         var _loc7_:Number = 0.5 * ((1 - §-!k§) * (1 - §[d§) * (1 + §]!Z§) * (param4 - param3) + (1 - §-!k§) * (1 + §[d§) * (1 - §]!Z§) * (param5 - param4));
         var _loc8_:Number = (1 + 2 * param1) * Math.pow(1 - param1,2);
         var _loc9_:Number = param1 * Math.pow(param1 - 1,2);
         var _loc10_:Number = Math.pow(param1,2) * (3 - 2 * param1);
         var _loc11_:Number = Math.pow(param1,2) * (param1 - 1);
         return _loc8_ * param3 + _loc9_ * _loc6_ + _loc10_ * param4 + _loc11_ * _loc7_;
      }
      
      private function §%"$§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         var _loc6_:Number = 0.5 * ((1 - §-!k§) * (1 + §[d§) * (1 + §]!Z§) * (param3 - param2) + (1 - §-!k§) * (1 - §[d§) * (1 - §]!Z§) * (param4 - param3));
         var _loc7_:Number = 0.5 * ((1 - §-!k§) * (1 - §[d§) * (1 + §]!Z§) * (param4 - param3) + (1 - §-!k§) * (1 + §[d§) * (1 - §]!Z§) * (param5 - param4));
         var _loc8_:Number = -6 * param1 + 6 * Math.pow(param1,2);
         var _loc9_:Number = 1 - 4 * param1 + 3 * Math.pow(param1,2);
         var _loc10_:Number = 6 * param1 - 6 * Math.pow(param1,2);
         var _loc11_:Number = -2 * param1 + 3 * Math.pow(param1,2);
         return _loc8_ * param3 + _loc9_ * _loc6_ + _loc10_ * param4 + _loc11_ * _loc7_;
      }
      
      private function §2!X§(param1:Point, param2:Point, param3:Point, param4:Point, param5:Number) : Number
      {
         return Math.sqrt(Math.pow(this.§%"$§(param5,param1.x,param2.x,param3.x,param4.x),2) + Math.pow(this.§%"$§(param5,param1.y,param2.y,param3.y,param4.y),2));
      }
      
      private function §&U§(param1:Point, param2:Point, param3:Point, param4:Point, param5:Number = 1.0) : Number
      {
         return param5 / 2 * (0.5556 * this.§2!X§(param1,param2,param3,param4,param5 / 2 * -0.7746 + param5 / 2) + 0.8889 * this.§2!X§(param1,param2,param3,param4,param5 / 2 * 0 + param5 / 2) + 0.5556 * this.§2!X§(param1,param2,param3,param4,param5 / 2 * 0.7746 + param5 / 2));
      }
      
      private function §8!7§(param1:Point, param2:Point, param3:Point, param4:Point, param5:Number) : Number
      {
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc8_:Number = this.§&U§(param1,param2,param3,param4);
         var _loc9_:Number = param5 / _loc8_;
         var _loc10_:Number = 0;
         var _loc11_:Number = 1;
         var _loc12_:int = 0;
         while(_loc12_ < 100)
         {
            _loc13_ = this.§&U§(param1,param2,param3,param4,_loc9_) - param5;
            if((_loc14_ = Math.abs(_loc13_)) < 0.01)
            {
               return _loc9_;
            }
            _loc15_ = this.§2!X§(param1,param2,param3,param4,_loc9_);
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
