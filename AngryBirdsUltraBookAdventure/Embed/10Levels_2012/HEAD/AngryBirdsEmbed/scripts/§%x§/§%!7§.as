package §%x§
{
   import §%-§.§%!,§;
   import §%-§.Sprite;
   import §<h§.§<@§;
   import §<h§.§]^§;
   
   public class §%!7§
   {
       
      
      private var §0W§:Sprite;
      
      private var §2M§:§<@§;
      
      private var §4W§:Boolean;
      
      public function §%!7§(param1:Sprite, param2:§<@§, param3:Boolean = false)
      {
         super();
         this.§0W§ = param1;
         this.§2M§ = param2;
         this.§4W§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§0W§.numChildren > 0)
         {
            this.§0W§.removeChildAt(0,true);
         }
      }
      
      public function §+C§(param1:int) : void
      {
         var _loc6_:§]^§ = null;
         var _loc7_:§%!,§ = null;
         this.clear();
         var _loc2_:Array = this.§@!%§(this.§@#§(param1));
         var _loc3_:int = this.§`2§(_loc2_);
         var _loc4_:int = this.§[h§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §%!,§(_loc6_.texture,this.§4W§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§0W§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§0W§.flatten();
      }
      
      private function §@#§(param1:int) : Array
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
      
      private function §@!%§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§]^§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§2M§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §`2§(param1:Array) : int
      {
         var _loc3_:§]^§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §[h§(param1:Array) : int
      {
         var _loc5_:§]^§ = null;
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
