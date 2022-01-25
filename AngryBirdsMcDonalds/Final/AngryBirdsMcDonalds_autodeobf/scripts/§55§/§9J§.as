package §55§
{
   import §0@§.§1]§;
   import §0@§.Sprite;
   import §7! §.§%!h§;
   import §7! §.§;!7§;
   
   public class §9J§
   {
       
      
      private var §#Y§:Sprite;
      
      private var §2!j§:§;!7§;
      
      private var §&4§:Boolean;
      
      public function §9J§(param1:Sprite, param2:§;!7§, param3:Boolean = false)
      {
         super();
         this.§#Y§ = param1;
         this.§2!j§ = param2;
         this.§&4§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§#Y§.numChildren > 0)
         {
            this.§#Y§.removeChildAt(0,true);
         }
      }
      
      public function §4Y§(param1:int) : void
      {
         var _loc6_:§%!h§ = null;
         var _loc7_:§1]§ = null;
         this.clear();
         var _loc2_:Array = this.§#!i§(this.§3Y§(param1));
         var _loc3_:int = this.§6!%§(_loc2_);
         var _loc4_:int = this.§[V§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §1]§(_loc6_.texture,this.§&4§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§#Y§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§#Y§.flatten();
      }
      
      private function §3Y§(param1:int) : Array
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
      
      private function §#!i§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§%!h§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§2!j§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §6!%§(param1:Array) : int
      {
         var _loc3_:§%!h§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §[V§(param1:Array) : int
      {
         var _loc5_:§%!h§ = null;
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
