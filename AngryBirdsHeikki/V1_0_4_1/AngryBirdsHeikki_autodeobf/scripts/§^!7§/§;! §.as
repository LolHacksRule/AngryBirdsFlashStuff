package §^!7§
{
   import §%O§.§6?§;
   import §%O§.§=I§;
   import §<!-§.Sprite;
   import §<!-§.§^B§;
   
   public class §;! §
   {
       
      
      private var §0b§:Sprite;
      
      private var §4A§:§6?§;
      
      private var §0o§:Boolean;
      
      public function §;! §(param1:Sprite, param2:§6?§, param3:Boolean = false)
      {
         super();
         this.§0b§ = param1;
         this.§4A§ = param2;
         this.§0o§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§0b§.numChildren > 0)
         {
            this.§0b§.removeChildAt(0,true);
         }
      }
      
      public function §[t§(param1:int) : void
      {
         var _loc6_:§=I§ = null;
         var _loc7_:§^B§ = null;
         this.clear();
         var _loc2_:Array = this.§[!<§(this.§package§(param1));
         var _loc3_:int = this.§%Y§(_loc2_);
         var _loc4_:int = this.§%=§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §^B§(_loc6_.texture,this.§0o§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§0b§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§0b§.flatten();
      }
      
      private function §package§(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         if(param1 <= 0)
         {
            _loc2_.push(0);
         }
         else
         {
            while(param1 > 0)
            {
               _loc3_ = param1 % 10;
               param1 /= 10;
               _loc2_.push(_loc3_);
            }
         }
         _loc2_.reverse();
         return _loc2_;
      }
      
      private function §[!<§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§=I§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§4A§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §%Y§(param1:Array) : int
      {
         var _loc3_:§=I§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §%=§(param1:Array) : int
      {
         var _loc5_:§=I§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc5_ in param1)
         {
            _loc2_ = -_loc5_.pivotY;
            _loc3_ = _loc2_ + _loc5_.height;
         }
         return _loc3_ - _loc2_;
      }
   }
}
