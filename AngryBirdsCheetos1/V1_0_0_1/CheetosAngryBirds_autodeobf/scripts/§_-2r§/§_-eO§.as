package §_-2r§
{
   import §_-5p§.§_-4§;
   import §_-5p§.§_-b1§;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-Nd§;
   
   public class §_-eO§
   {
       
      
      private var §_-S0§:Sprite;
      
      private var §_-f4§:§_-b1§;
      
      private var §_-eA§:Boolean;
      
      public function §_-eO§(param1:Sprite, param2:§_-b1§, param3:Boolean = false)
      {
         super();
         this.§_-S0§ = param1;
         this.§_-f4§ = param2;
         this.§_-eA§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§_-S0§.numChildren > 0)
         {
            this.§_-S0§.removeChildAt(0,true);
         }
      }
      
      public function §_-eB§(param1:int) : void
      {
         var _loc6_:§_-4§ = null;
         var _loc7_:§_-Nd§ = null;
         this.clear();
         var _loc2_:Array = this.§_-Z9§(this.§_-wd§(param1));
         var _loc3_:int = this.§_-8D§(_loc2_);
         var _loc4_:int = this.§_-0r§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §_-Nd§(_loc6_.texture,this.§_-eA§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§_-S0§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§_-S0§.flatten();
      }
      
      private function §_-wd§(param1:int) : Array
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
      
      private function §_-Z9§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§_-4§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-f4§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §_-8D§(param1:Array) : int
      {
         var _loc3_:§_-4§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §_-0r§(param1:Array) : int
      {
         var _loc5_:§_-4§ = null;
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
