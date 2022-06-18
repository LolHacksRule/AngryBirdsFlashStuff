package §;'§
{
   import §;^§.§ @§;
   import §;^§.Sprite;
   import §=!K§.;
   import §=!K§.§@p§;
   
   public class §7K§
   {
       
      
      private var §>@§:Sprite;
      
      private var §5>§:§#4§;
      
      private var §catch§:Boolean;
      
      public function §7K§(param1:Sprite, param2:§#4§, param3:Boolean = false)
      {
         super();
         this.§>@§ = param1;
         this.§5>§ = param2;
         this.§catch§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§>@§.numChildren > 0)
         {
            this.§>@§.removeChildAt(0,true);
         }
      }
      
      public function §3i§(param1:int) : void
      {
         var _loc6_:§@p§ = null;
         var _loc7_:§ @§ = null;
         this.clear();
         var _loc2_:Array = this.§>9§(this.§0!4§(param1));
         var _loc3_:int = this.§[!3§(_loc2_);
         var _loc4_:int = this.§>S§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new § @§(_loc6_.texture,this.§catch§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§>@§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§>@§.flatten();
      }
      
      private function §0!4§(param1:int) : Array
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
      
      private function §>9§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§@p§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§5>§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §[!3§(param1:Array) : int
      {
         var _loc3_:§@p§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §>S§(param1:Array) : int
      {
         var _loc5_:§@p§ = null;
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
