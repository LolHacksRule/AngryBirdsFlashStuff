package §6A§
{
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §9K§.§!?§;
   import §9K§.§,z§;
   
   public class §-@§
   {
       
      
      private var §,!7§:Sprite;
      
      private var §>f§:§!?§;
      
      private var §4!B§:Boolean;
      
      public function §-@§(param1:Sprite, param2:§!?§, param3:Boolean = false)
      {
         super();
         this.§,!7§ = param1;
         this.§>f§ = param2;
         this.§4!B§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§,!7§.numChildren > 0)
         {
            this.§,!7§.removeChildAt(0,true);
         }
      }
      
      public function §>!,§(param1:int) : void
      {
         var _loc6_:§,z§ = null;
         var _loc7_:§?T§ = null;
         this.clear();
         var _loc2_:Array = this.§9!%§(this.§'!N§(param1));
         var _loc3_:int = this.§&1§(_loc2_);
         var _loc4_:int = this.§'6§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §?T§(_loc6_.texture,this.§4!B§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§,!7§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§,!7§.flatten();
      }
      
      private function §'!N§(param1:int) : Array
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
      
      private function §9!%§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§,z§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§>f§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §&1§(param1:Array) : int
      {
         var _loc3_:§,z§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §'6§(param1:Array) : int
      {
         var _loc5_:§,z§ = null;
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
