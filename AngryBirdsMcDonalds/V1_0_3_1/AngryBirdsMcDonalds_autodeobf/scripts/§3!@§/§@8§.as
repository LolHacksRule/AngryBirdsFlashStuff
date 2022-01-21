package §3!@§
{
   import § !%§.§0!U§;
   import § !%§.§>f§;
   import §&c§.§%!a§;
   import §&c§.Sprite;
   
   public class §@8§
   {
       
      
      private var §7U§:Sprite;
      
      private var §'!A§:§>f§;
      
      private var §45§:Boolean;
      
      public function §@8§(param1:Sprite, param2:§>f§, param3:Boolean = false)
      {
         super();
         this.§7U§ = param1;
         this.§'!A§ = param2;
         this.§45§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§7U§.numChildren > 0)
         {
            this.§7U§.removeChildAt(0,true);
         }
      }
      
      public function §@!L§(param1:int) : void
      {
         var _loc6_:§0!U§ = null;
         var _loc7_:§%!a§ = null;
         this.clear();
         var _loc2_:Array = this.§try§(this.§,!<§(param1));
         var _loc3_:int = this.§``§(_loc2_);
         var _loc4_:int = this.§^!h§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §%!a§(_loc6_.texture,this.§45§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§7U§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§7U§.flatten();
      }
      
      private function §,!<§(param1:int) : Array
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
      
      private function §try§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§0!U§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§'!A§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §``§(param1:Array) : int
      {
         var _loc3_:§0!U§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §^!h§(param1:Array) : int
      {
         var _loc5_:§0!U§ = null;
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
