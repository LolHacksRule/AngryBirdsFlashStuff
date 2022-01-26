package §_-0y§
{
   import §_-KS§.§_-3l§;
   import §_-KS§.§_-Wt§;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   
   public class §_-DE§
   {
       
      
      private var §_-Pj§:Sprite;
      
      private var §_-Pd§:§_-3l§;
      
      public function §_-DE§(param1:Sprite, param2:§_-3l§)
      {
         super();
         this.§_-Pj§ = param1;
         this.§_-Pd§ = param2;
      }
      
      public function clear() : void
      {
         while(this.§_-Pj§.numChildren > 0)
         {
            this.§_-Pj§.removeChildAt(0,true);
         }
      }
      
      public function §_-Er§(param1:int) : void
      {
         var _loc6_:§_-Wt§ = null;
         var _loc7_:§_-N§ = null;
         this.clear();
         var _loc2_:Array = this.§_-VW§(this.§_-aM§(param1));
         var _loc3_:int = this.§_-Mw§(_loc2_);
         var _loc4_:int = this.§_-PD§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §_-N§(_loc6_.texture);
            this.§_-Pj§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.texture.width;
         }
         this.§_-Pj§.flatten();
      }
      
      private function §_-aM§(param1:int) : Array
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
      
      private function §_-VW§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§_-Wt§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-Pd§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §_-Mw§(param1:Array) : int
      {
         var _loc3_:§_-Wt§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.texture.width;
         }
         return _loc2_;
      }
      
      private function §_-PD§(param1:Array) : int
      {
         var _loc5_:§_-Wt§ = null;
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
