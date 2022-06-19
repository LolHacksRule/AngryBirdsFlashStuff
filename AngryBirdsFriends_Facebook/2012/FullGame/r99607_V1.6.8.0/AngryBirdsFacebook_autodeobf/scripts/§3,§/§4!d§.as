package §3,§
{
   import §?"<§.§"d§;
   import §?"<§.§?n§;
   import §]&§.§-§;
   import §]&§.Sprite;
   
   public class §4!d§
   {
       
      
      private var §3!b§:Sprite;
      
      private var §<!8§:§"d§;
      
      private var §=Q§:Boolean;
      
      public function §4!d§(param1:Sprite, param2:§"d§, param3:Boolean = false)
      {
         super();
         this.§3!b§ = param1;
         this.§<!8§ = param2;
         this.§=Q§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§3!b§.numChildren > 0)
         {
            this.§3!b§.removeChildAt(0,true);
         }
      }
      
      public function §7M§(param1:int) : void
      {
         var _loc6_:§?n§ = null;
         var _loc7_:§-§ = null;
         this.clear();
         var _loc2_:Array = this.§7$§(this.§]!2§(param1));
         var _loc3_:int = this.§-"&§(_loc2_);
         var _loc4_:int = this.§2<§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §-§(_loc6_.texture,this.§=Q§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§3!b§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§3!b§.flatten();
      }
      
      private function §]!2§(param1:int) : Array
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
      
      private function §7$§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§?n§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§<!8§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §-"&§(param1:Array) : int
      {
         var _loc3_:§?n§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §2<§(param1:Array) : int
      {
         var _loc5_:§?n§ = null;
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
