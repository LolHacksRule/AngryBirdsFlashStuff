package §2!H§
{
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   
   public class §7&§
   {
       
      
      private var §'6§:Sprite;
      
      private var §%!9§:Animation;
      
      private var §<!K§:Boolean;
      
      public function §7&§(param1:Sprite, param2:Animation, param3:Boolean = false)
      {
         super();
         this.§'6§ = param1;
         this.§%!9§ = param2;
         this.§<!K§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§'6§.numChildren > 0)
         {
            this.§'6§.removeChildAt(0,true);
         }
      }
      
      public function §1!a§(param1:int) : void
      {
         var _loc6_:§;K§ = null;
         var _loc7_:§-m§ = null;
         this.clear();
         var _loc2_:Array = this.§?F§(this.§33§(param1));
         var _loc3_:int = this.§%!?§(_loc2_);
         var _loc4_:int = this.§==§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §-m§(_loc6_.texture,this.§<!K§);
            _loc7_.scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§'6§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§'6§.flatten();
      }
      
      private function §33§(param1:int) : Array
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
      
      private function §?F§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§;K§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§%!9§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §%!?§(param1:Array) : int
      {
         var _loc3_:§;K§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §==§(param1:Array) : int
      {
         var _loc5_:§;K§ = null;
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
