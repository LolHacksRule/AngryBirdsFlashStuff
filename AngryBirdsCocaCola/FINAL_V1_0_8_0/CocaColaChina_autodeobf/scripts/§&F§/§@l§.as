package §&F§
{
   import §&!9§.§,,§;
   import §&!9§.Sprite;
   import §48§.§6!Z§;
   import §48§.§8!'§;
   
   public class §@l§
   {
       
      
      private var §@!Y§:Sprite;
      
      private var §=1§:§8!'§;
      
      private var §72§:Boolean;
      
      public function §@l§(param1:Sprite, param2:§8!'§, param3:Boolean = false)
      {
         super();
         this.§@!Y§ = param1;
         this.§=1§ = param2;
         this.§72§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§@!Y§.numChildren > 0)
         {
            this.§@!Y§.removeChildAt(0,true);
         }
      }
      
      public function §7S§(param1:int) : void
      {
         var _loc6_:§6!Z§ = null;
         var _loc7_:§,,§ = null;
         this.clear();
         var _loc2_:Array = this.§6B§(this.§=!c§(param1));
         var _loc3_:int = this.§6<§(_loc2_);
         var _loc4_:int = this.§'!M§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §,,§(_loc6_.texture,this.§72§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§@!Y§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§@!Y§.flatten();
      }
      
      private function §=!c§(param1:int) : Array
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
      
      private function §6B§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§6!Z§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§=1§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §6<§(param1:Array) : int
      {
         var _loc3_:§6!Z§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §'!M§(param1:Array) : int
      {
         var _loc5_:§6!Z§ = null;
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
