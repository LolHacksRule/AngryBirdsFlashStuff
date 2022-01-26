package §_-rp§
{
   import §_-1P§.§_-XN§;
   import §_-1P§.§_-uT§;
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   
   public class §_-3S§
   {
       
      
      private var §_-C8§:Sprite;
      
      private var §_-4Y§:§_-uT§;
      
      public function §_-3S§(param1:Sprite, param2:§_-uT§)
      {
         super();
         this.§_-C8§ = param1;
         this.§_-4Y§ = param2;
      }
      
      public function clear() : void
      {
         while(this.§_-C8§.numChildren > 0)
         {
            this.§_-C8§.removeChildAt(0,true);
         }
      }
      
      public function §_-jO§(param1:int) : void
      {
         var _loc6_:§_-XN§ = null;
         var _loc7_:§_-gY§ = null;
         this.clear();
         var _loc2_:Array = this.§_-qF§(this.§_-0F§(param1));
         var _loc3_:int = this.§_-4a§(_loc2_);
         var _loc4_:int = this.§_-Ws§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §_-gY§(_loc6_.texture);
            this.§_-C8§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.texture.width;
         }
         this.§_-C8§.flatten();
      }
      
      private function §_-0F§(param1:int) : Array
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
      
      private function §_-qF§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§_-XN§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-4Y§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §_-4a§(param1:Array) : int
      {
         var _loc3_:§_-XN§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.texture.width;
         }
         return _loc2_;
      }
      
      private function §_-Ws§(param1:Array) : int
      {
         var _loc5_:§_-XN§ = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc5_ in param1)
         {
            _loc2_ = -_loc5_.pivotY;
            _loc3_ = _loc2_ + _loc5_.texture.height;
         }
         return _loc3_ - _loc2_;
      }
   }
}
