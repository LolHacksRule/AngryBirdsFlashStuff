package §!X§
{
   import § `§.§6!=§;
   import § `§.§^1§;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   
   public class §@!'§
   {
       
      
      private var §?!N§:Sprite;
      
      private var §68§:§^1§;
      
      private var §2!2§:Boolean;
      
      public function §@!'§(param1:Sprite, param2:§^1§, param3:Boolean = false)
      {
         super();
         this.§?!N§ = param1;
         this.§68§ = param2;
         this.§2!2§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§?!N§.numChildren > 0)
         {
            this.§?!N§.removeChildAt(0,true);
         }
      }
      
      public function § x§(param1:int) : void
      {
         var _loc6_:§6!=§ = null;
         var _loc7_:§`!C§ = null;
         this.clear();
         var _loc2_:Array = this.§9!F§(this.§4t§(param1));
         var _loc3_:int = this.§"@§(_loc2_);
         var _loc4_:int = this.§,7§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §`!C§(_loc6_.texture,this.§2!2§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§?!N§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§?!N§.flatten();
      }
      
      private function §4t§(param1:int) : Array
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
      
      private function §9!F§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§6!=§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§68§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §"@§(param1:Array) : int
      {
         var _loc3_:§6!=§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §,7§(param1:Array) : int
      {
         var _loc5_:§6!=§ = null;
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
