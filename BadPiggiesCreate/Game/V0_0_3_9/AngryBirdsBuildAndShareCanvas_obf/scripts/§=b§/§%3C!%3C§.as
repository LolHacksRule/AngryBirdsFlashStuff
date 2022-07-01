package §=b§
{
   import §7q§.§0!§;
   import §7q§.Sprite;
   import §;!<§.§9B§;
   import §;!<§.§<!D§;
   
   public class §<!<§
   {
       
      
      private var §5H§:Sprite;
      
      private var §<!w§:§9B§;
      
      private var §3!s§:Boolean;
      
      public function §<!<§(param1:Sprite, param2:§9B§, param3:Boolean = false)
      {
         super();
         this.§5H§ = param1;
         this.§<!w§ = param2;
         this.§3!s§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§5H§.numChildren > 0)
         {
            this.§5H§.removeChildAt(0,true);
         }
      }
      
      public function §'!c§(param1:int) : void
      {
         var _loc6_:§<!D§ = null;
         var _loc7_:§0!§ = null;
         this.clear();
         var _loc2_:Array = this.§0!d§(this.§;"$§(param1));
         var _loc3_:int = this.§4!d§(_loc2_);
         var _loc4_:int = this.§4!<§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §0!§(_loc6_.texture,this.§3!s§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§5H§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§5H§.flatten();
      }
      
      private function §;"$§(param1:int) : Array
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
      
      private function §0!d§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§<!D§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§<!w§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §4!d§(param1:Array) : int
      {
         var _loc3_:§<!D§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §4!<§(param1:Array) : int
      {
         var _loc5_:§<!D§ = null;
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
