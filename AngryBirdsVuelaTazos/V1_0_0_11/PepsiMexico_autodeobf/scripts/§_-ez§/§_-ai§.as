package §_-ez§
{
   import §_-Bp§.§_-9c§;
   import §_-Bp§.§_-wQ§;
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   
   public class §_-ai§
   {
       
      
      private var §_-0O§:Sprite;
      
      private var §_-9b§:§_-wQ§;
      
      public function §_-ai§(param1:Sprite, param2:§_-wQ§)
      {
         super();
         this.§_-0O§ = param1;
         this.§_-9b§ = param2;
      }
      
      public function clear() : void
      {
         while(this.§_-0O§.numChildren > 0)
         {
            this.§_-0O§.removeChildAt(0,true);
         }
      }
      
      public function §_-4v§(param1:int) : void
      {
         var _loc6_:§_-9c§ = null;
         var _loc7_:§_-OW§ = null;
         this.clear();
         var _loc2_:Array = this.§_-fu§(this.§_-RE§(param1));
         var _loc3_:int = this.§_-F9§(_loc2_);
         var _loc4_:int = this.§_-dO§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §_-OW§(_loc6_.texture);
            this.§_-0O§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.texture.width;
         }
         this.§_-0O§.flatten();
      }
      
      private function §_-RE§(param1:int) : Array
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
      
      private function §_-fu§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§_-9c§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-9b§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §_-F9§(param1:Array) : int
      {
         var _loc3_:§_-9c§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.texture.width;
         }
         return _loc2_;
      }
      
      private function §_-dO§(param1:Array) : int
      {
         var _loc5_:§_-9c§ = null;
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
