package §_-Kz§
{
   import §_-GY§.Sprite;
   import §_-GY§.§_-4W§;
   import §_-my§.§_-GX§;
   import §_-my§.§_-uG§;
   
   public class §_-Uw§
   {
       
      
      private var §_-xQ§:Sprite;
      
      private var §_-SS§:§_-uG§;
      
      private var §_-HU§:Boolean;
      
      public function §_-Uw§(param1:Sprite, param2:§_-uG§, param3:Boolean = false)
      {
         super();
         this.§_-xQ§ = param1;
         this.§_-SS§ = param2;
         this.§_-HU§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§_-xQ§.numChildren > 0)
         {
            this.§_-xQ§.removeChildAt(0,true);
         }
      }
      
      public function §_-I1§(param1:int) : void
      {
         var _loc6_:§_-GX§ = null;
         var _loc7_:§_-4W§ = null;
         this.clear();
         var _loc2_:Array = this.§_-kj§(this.§_-4i§(param1));
         var _loc3_:int = this.§_-Ut§(_loc2_);
         var _loc4_:int = this.§_-qy§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §_-4W§(_loc6_.texture,this.§_-HU§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§_-xQ§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§_-xQ§.flatten();
      }
      
      private function §_-4i§(param1:int) : Array
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
      
      private function §_-kj§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§_-GX§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-SS§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §_-Ut§(param1:Array) : int
      {
         var _loc3_:§_-GX§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §_-qy§(param1:Array) : int
      {
         var _loc5_:§_-GX§ = null;
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
