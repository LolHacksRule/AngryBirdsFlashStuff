package §,!F§
{
   import §+f§.§0Q§;
   import §+f§.§=3§;
   import §4G§.Sprite;
   import §4G§.§`l§;
   
   public class §-y§
   {
       
      
      private var §!!+§:Sprite;
      
      private var §#!@§:§0Q§;
      
      private var §<a§:Boolean;
      
      public function §-y§(param1:Sprite, param2:§0Q§, param3:Boolean = false)
      {
         super();
         this.§!!+§ = param1;
         this.§#!@§ = param2;
         this.§<a§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§!!+§.numChildren > 0)
         {
            this.§!!+§.removeChildAt(0,true);
         }
      }
      
      public function §1K§(param1:int) : void
      {
         var _loc6_:§=3§ = null;
         var _loc7_:§`l§ = null;
         this.clear();
         var _loc2_:Array = this.§2,§(this.§0P§(param1));
         var _loc3_:int = this.§%v§(_loc2_);
         var _loc4_:int = this.§0s§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §`l§(_loc6_.texture,this.§<a§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§!!+§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§!!+§.flatten();
      }
      
      private function §0P§(param1:int) : Array
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
      
      private function §2,§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§=3§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§#!@§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §%v§(param1:Array) : int
      {
         var _loc3_:§=3§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §0s§(param1:Array) : int
      {
         var _loc5_:§=3§ = null;
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
