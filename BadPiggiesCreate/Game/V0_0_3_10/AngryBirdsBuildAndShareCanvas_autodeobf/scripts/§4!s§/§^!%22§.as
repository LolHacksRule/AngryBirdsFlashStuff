package §4!s§
{
   import §%t§.§#B§;
   import §%t§.§2!D§;
   import §^I§.§=!+§;
   import §^I§.Sprite;
   
   public class §^!"§
   {
       
      
      private var §;!E§:Sprite;
      
      private var §6!d§:§2!D§;
      
      private var §8!'§:Boolean;
      
      public function §^!"§(param1:Sprite, param2:§2!D§, param3:Boolean = false)
      {
         super();
         this.§;!E§ = param1;
         this.§6!d§ = param2;
         this.§8!'§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§;!E§.numChildren > 0)
         {
            this.§;!E§.removeChildAt(0,true);
         }
      }
      
      public function §,!7§(param1:int) : void
      {
         var _loc6_:§#B§ = null;
         var _loc7_:§=!+§ = null;
         this.clear();
         var _loc2_:Array = this.§0!@§(this.§0"0§(param1));
         var _loc3_:int = this.§>"#§(_loc2_);
         var _loc4_:int = this.§,Z§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §=!+§(_loc6_.texture,this.§8!'§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§;!E§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§;!E§.flatten();
      }
      
      private function §0"0§(param1:int) : Array
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
      
      private function §0!@§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§#B§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§6!d§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §>"#§(param1:Array) : int
      {
         var _loc3_:§#B§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §,Z§(param1:Array) : int
      {
         var _loc5_:§#B§ = null;
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
