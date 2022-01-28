package §_-Di§
{
   import §_-3b§.§_-5p§;
   import §_-3b§.§_-Lf§;
   import §_-SE§.Sprite;
   import §_-SE§.§_-rl§;
   
   public class §_-47§
   {
       
      
      private var §_-j§:Sprite;
      
      private var §_-Hm§:§_-5p§;
      
      private var §_-HJ§:Boolean;
      
      public function §_-47§(param1:Sprite, param2:§_-5p§, param3:Boolean = false)
      {
         super();
         this.§_-j§ = param1;
         this.§_-Hm§ = param2;
         this.§_-HJ§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§_-j§.numChildren > 0)
         {
            this.§_-j§.removeChildAt(0,true);
         }
      }
      
      public function §_-pJ§(param1:int) : void
      {
         var _loc6_:§_-Lf§ = null;
         var _loc7_:§_-rl§ = null;
         this.clear();
         var _loc2_:Array = this.§_-f7§(this.§_-kW§(param1));
         var _loc3_:int = this.§_-YQ§(_loc2_);
         var _loc4_:int = this.§_-Cy§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §_-rl§(_loc6_.texture,this.§_-HJ§);
            this.§_-j§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.texture.width;
         }
         this.§_-j§.flatten();
      }
      
      private function §_-kW§(param1:int) : Array
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
      
      private function §_-f7§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§_-Lf§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-Hm§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §_-YQ§(param1:Array) : int
      {
         var _loc3_:§_-Lf§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.texture.width;
         }
         return _loc2_;
      }
      
      private function §_-Cy§(param1:Array) : int
      {
         var _loc5_:§_-Lf§ = null;
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
