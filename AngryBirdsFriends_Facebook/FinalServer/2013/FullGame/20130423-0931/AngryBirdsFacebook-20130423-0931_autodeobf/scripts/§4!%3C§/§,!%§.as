package §4!<§
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §<T§.§4!N§;
   import §<T§.§^"5§;
   
   public class §,!%§
   {
       
      
      private var §?!T§:Sprite;
      
      private var §'>§:§4!N§;
      
      private var §6#§:Boolean;
      
      public function §,!%§(param1:Sprite, param2:§4!N§, param3:Boolean = false)
      {
         super();
         this.§?!T§ = param1;
         this.§'>§ = param2;
         this.§6#§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§?!T§.numChildren > 0)
         {
            this.§?!T§.removeChildAt(0,true);
         }
      }
      
      public function § P§(param1:int) : void
      {
         var _loc6_:§^"5§ = null;
         var _loc7_:§ "E§ = null;
         this.clear();
         var _loc2_:Array = this.§<%§(this.§`O§(param1));
         var _loc3_:int = this.§`"V§(_loc2_);
         var _loc4_:int = this.§0a§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new § "E§(_loc6_.texture,this.§6#§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§?!T§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§?!T§.flatten();
      }
      
      private function §`O§(param1:int) : Array
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
      
      private function §<%§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§^"5§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§'>§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §`"V§(param1:Array) : int
      {
         var _loc3_:§^"5§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §0a§(param1:Array) : int
      {
         var _loc5_:§^"5§ = null;
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
