package §]!@§
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.Animation;
   
   public class §]!1§
   {
       
      
      private var §"!,§:Sprite;
      
      private var §;6§:Animation;
      
      private var §2!0§:Boolean;
      
      public function §]!1§(param1:Sprite, param2:Animation, param3:Boolean = false)
      {
         super();
         this.§"!,§ = param1;
         this.§;6§ = param2;
         this.§2!0§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§"!,§.numChildren > 0)
         {
            this.§"!,§.removeChildAt(0,true);
         }
      }
      
      public function §=>§(param1:int) : void
      {
         var _loc6_:§ H§ = null;
         var _loc7_:§0!b§ = null;
         this.clear();
         var _loc2_:Array = this.§5!U§(this.§'!M§(param1));
         var _loc3_:int = this.§,?§(_loc2_);
         var _loc4_:int = this.§<!g§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            _loc7_ = new §0!b§(_loc6_.texture,this.§2!0§);
            _loc7_.scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§"!,§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§"!,§.flatten();
      }
      
      private function §'!M§(param1:int) : Array
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
      
      private function §5!U§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§ H§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§;6§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §,?§(param1:Array) : int
      {
         var _loc3_:§ H§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §<!g§(param1:Array) : int
      {
         var _loc5_:§ H§ = null;
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
