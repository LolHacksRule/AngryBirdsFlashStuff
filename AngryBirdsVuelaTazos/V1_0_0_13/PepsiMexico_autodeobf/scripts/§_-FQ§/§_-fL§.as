package §_-FQ§
{
   import §_-UX§.Sprite;
   import §_-UX§.§_-2S§;
   import §_-rQ§.§_-Fv§;
   import §_-rQ§.§_-MV§;
   
   public class §_-fL§
   {
       
      
      private var §_-bB§:Sprite;
      
      private var §_-iF§:§_-Fv§;
      
      public function §_-fL§(param1:Sprite, param2:§_-Fv§)
      {
         super();
         this.§_-bB§ = param1;
         this.§_-iF§ = param2;
      }
      
      public function clear() : void
      {
         while(this.§_-bB§.numChildren > 0)
         {
            this.§_-bB§.removeChildAt(0,true);
         }
      }
      
      public function §_-SH§(param1:int) : void
      {
         var _loc6_:§_-MV§ = null;
         var _loc7_:§_-2S§ = null;
         this.clear();
         var _loc2_:Array = this.§_-Pe§(this.§_-kU§(param1));
         var _loc3_:int = this.§_-Gl§(_loc2_);
         var _loc4_:int = this.§_-6p§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §_-2S§(_loc6_.texture);
            this.§_-bB§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.texture.width;
         }
         this.§_-bB§.flatten();
      }
      
      private function §_-kU§(param1:int) : Array
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
      
      private function §_-Pe§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§_-MV§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-iF§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §_-Gl§(param1:Array) : int
      {
         var _loc3_:§_-MV§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.texture.width;
         }
         return _loc2_;
      }
      
      private function §_-6p§(param1:Array) : int
      {
         var _loc5_:§_-MV§ = null;
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
