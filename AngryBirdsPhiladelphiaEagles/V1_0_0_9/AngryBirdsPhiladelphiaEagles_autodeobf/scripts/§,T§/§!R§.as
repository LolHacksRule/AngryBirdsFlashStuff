package §,T§
{
   import §-!'§.§3!1§;
   import §-!'§.Sprite;
   import §<A§.§8<§;
   import §<A§.§;V§;
   
   public class §!R§
   {
       
      
      private var §46§:Sprite;
      
      private var §^J§:§;V§;
      
      private var §?A§:Boolean;
      
      public function §!R§(param1:Sprite, param2:§;V§, param3:Boolean = false)
      {
         super();
         this.§46§ = param1;
         this.§^J§ = param2;
         this.§?A§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§46§.numChildren > 0)
         {
            this.§46§.removeChildAt(0,true);
         }
      }
      
      public function §0B§(param1:int) : void
      {
         var _loc6_:§8<§ = null;
         var _loc7_:§3!1§ = null;
         this.clear();
         var _loc2_:Array = this.§[6§(this.§#!$§(param1));
         var _loc3_:int = this.§8!;§(_loc2_);
         var _loc4_:int = this.§`!B§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §3!1§(_loc6_.texture,this.§?A§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§46§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§46§.flatten();
      }
      
      private function §#!$§(param1:int) : Array
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
      
      private function §[6§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§8<§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§^J§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §8!;§(param1:Array) : int
      {
         var _loc3_:§8<§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §`!B§(param1:Array) : int
      {
         var _loc5_:§8<§ = null;
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
