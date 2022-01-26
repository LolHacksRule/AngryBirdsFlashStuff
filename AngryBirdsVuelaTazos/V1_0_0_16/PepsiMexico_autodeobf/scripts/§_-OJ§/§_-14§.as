package §_-OJ§
{
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-Ra§.§_-RO§;
   import §_-Ra§.§_-Vr§;
   
   public class §_-14§
   {
       
      
      private var §_-Cv§:Sprite;
      
      private var §_-5r§:§_-RO§;
      
      public function §_-14§(param1:Sprite, param2:§_-RO§)
      {
         super();
         this.§_-Cv§ = param1;
         this.§_-5r§ = param2;
      }
      
      public function clear() : void
      {
         while(this.§_-Cv§.numChildren > 0)
         {
            this.§_-Cv§.removeChildAt(0,true);
         }
      }
      
      public function §_-Ot§(param1:int) : void
      {
         var _loc6_:§_-Vr§ = null;
         var _loc7_:§_-19§ = null;
         this.clear();
         var _loc2_:Array = this.§_-Sw§(this.§_-UK§(param1));
         var _loc3_:int = this.§while§(_loc2_);
         var _loc4_:int = this.§_-YY§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §_-19§(_loc6_.texture);
            this.§_-Cv§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.texture.width;
         }
         this.§_-Cv§.flatten();
      }
      
      private function §_-UK§(param1:int) : Array
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
      
      private function §_-Sw§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§_-Vr§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-5r§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §while§(param1:Array) : int
      {
         var _loc3_:§_-Vr§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.texture.width;
         }
         return _loc2_;
      }
      
      private function §_-YY§(param1:Array) : int
      {
         var _loc5_:§_-Vr§ = null;
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
