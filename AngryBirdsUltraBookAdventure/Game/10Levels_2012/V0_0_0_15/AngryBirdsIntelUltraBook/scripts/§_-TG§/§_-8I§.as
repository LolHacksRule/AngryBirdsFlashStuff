package §_-TG§
{
   import §_-8d§.§_-J§;
   import §_-8d§.§_-vz§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   
   public class §_-8I§
   {
       
      
      private var §_-FQ§:Sprite;
      
      private var §_-NM§:§_-J§;
      
      private var §_-064§:Boolean;
      
      public function §_-8I§(param1:Sprite, param2:§_-J§, param3:Boolean = false)
      {
         super();
         this.§_-FQ§ = param1;
         this.§_-NM§ = param2;
         this.§_-064§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§_-FQ§.numChildren > 0)
         {
            this.§_-FQ§.removeChildAt(0,true);
         }
      }
      
      public function §_-04T§(param1:int) : void
      {
         var _loc6_:§_-vz§ = null;
         var _loc7_:§_-09b§ = null;
         this.clear();
         var _loc2_:Array = this.§_-NS§(this.§_-OD§(param1));
         var _loc3_:int = this.§_-FD§(_loc2_);
         var _loc4_:int = this.§_-vX§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §_-09b§(_loc6_.texture,this.§_-064§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§_-FQ§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§_-FQ§.flatten();
      }
      
      private function §_-OD§(param1:int) : Array
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
      
      private function §_-NS§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§_-vz§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§_-NM§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §_-FD§(param1:Array) : int
      {
         var _loc3_:§_-vz§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §_-vX§(param1:Array) : int
      {
         var _loc5_:§_-vz§ = null;
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
