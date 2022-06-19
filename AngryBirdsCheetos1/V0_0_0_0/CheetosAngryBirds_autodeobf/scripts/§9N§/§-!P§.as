package §9N§
{
   import §4W§.§2f§;
   import §4W§.§>c§;
   import §`a§.§>?§;
   import §`a§.Sprite;
   
   public class §-!P§
   {
       
      
      private var §9!A§:Sprite;
      
      private var §7P§:§2f§;
      
      private var §3L§:Boolean;
      
      public function §-!P§(param1:Sprite, param2:§2f§, param3:Boolean = false)
      {
         super();
         this.§9!A§ = param1;
         this.§7P§ = param2;
         this.§3L§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§9!A§.numChildren > 0)
         {
            this.§9!A§.removeChildAt(0,true);
         }
      }
      
      public function §5!?§(param1:int) : void
      {
         var _loc6_:§>c§ = null;
         var _loc7_:§>?§ = null;
         this.clear();
         var _loc2_:Array = this.§6>§(this.§%'§(param1));
         var _loc3_:int = this.§7!A§(_loc2_);
         var _loc4_:int = this.§]$§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §>?§(_loc6_.texture,this.§3L§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§9!A§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§9!A§.flatten();
      }
      
      private function §%'§(param1:int) : Array
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
      
      private function §6>§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§>c§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§7P§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §7!A§(param1:Array) : int
      {
         var _loc3_:§>c§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §]$§(param1:Array) : int
      {
         var _loc5_:§>c§ = null;
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
