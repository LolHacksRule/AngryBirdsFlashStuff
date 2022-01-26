package §_-5Y§
{
   import §_-PC§.§_-ob§;
   import §_-PC§.§_-qH§;
   import §_-b5§.Sprite;
   import §_-b5§.§_-Xj§;
   
   public class §_-u5§
   {
       
      
      private var §_-MT§:Sprite;
      
      private var §_-Aw§:§_-ob§;
      
      public function §_-u5§(param1:Sprite, param2:§_-ob§)
      {
         super();
         this.§_-MT§ = param1;
         this.§_-Aw§ = param2;
      }
      
      public function clear() : void
      {
         while(this.§_-MT§.numChildren > 0)
         {
            this.§_-MT§.removeChildAt(0,true);
         }
      }
      
      public function §_-PB§(param1:int) : void
      {
         var _loc6_:§_-qH§ = null;
         var _loc7_:§_-Xj§ = null;
         this.clear();
         var _loc2_:Array = this.§_-U8§(this.§_-ke§(param1));
         var _loc3_:int = this.§_-aj§(_loc2_);
         var _loc4_:int = this.§_-vb§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §_-Xj§(_loc6_.texture);
            this.§_-MT§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.texture.width;
         }
         this.§_-MT§.flatten();
      }
      
      private function §_-ke§(param1:int) : Array
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
      
      private function §_-U8§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§_-qH§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-Aw§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §_-aj§(param1:Array) : int
      {
         var _loc3_:§_-qH§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.texture.width;
         }
         return _loc2_;
      }
      
      private function §_-vb§(param1:Array) : int
      {
         var _loc5_:§_-qH§ = null;
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
