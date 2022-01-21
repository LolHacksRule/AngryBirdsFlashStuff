package §<L§
{
   import §&!!§.§7N§;
   import §&!!§.§[!]§;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   
   public class §-!4§
   {
       
      
      private var §%!l§:Sprite;
      
      private var §%X§:§[!]§;
      
      private var §`K§:Boolean;
      
      public function §-!4§(param1:Sprite, param2:§[!]§, param3:Boolean = false)
      {
         super();
         this.§%!l§ = param1;
         this.§%X§ = param2;
         this.§`K§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§%!l§.numChildren > 0)
         {
            this.§%!l§.removeChildAt(0,true);
         }
      }
      
      public function §"Z§(param1:int) : void
      {
         var _loc6_:§7N§ = null;
         var _loc7_:§[!U§ = null;
         this.clear();
         var _loc2_:Array = this.§5-§(this.§ !Y§(param1));
         var _loc3_:int = this.§+!J§(_loc2_);
         var _loc4_:int = this.§%!U§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §[!U§(_loc6_.texture,this.§`K§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§%!l§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§%!l§.flatten();
      }
      
      private function § !Y§(param1:int) : Array
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
      
      private function §5-§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§7N§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§%X§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §+!J§(param1:Array) : int
      {
         var _loc3_:§7N§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §%!U§(param1:Array) : int
      {
         var _loc5_:§7N§ = null;
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
