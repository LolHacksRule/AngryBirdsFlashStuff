package §8!`§
{
   import §"k§.§5!7§;
   import §"k§.§;!Z§;
   import §;!Q§.§%o§;
   import §;!Q§.Sprite;
   
   public class § ?§
   {
       
      
      private var §`K§:Sprite;
      
      private var §7p§:§;!Z§;
      
      private var §62§:Boolean;
      
      public function § ?§(param1:Sprite, param2:§;!Z§, param3:Boolean = false)
      {
         super();
         this.§`K§ = param1;
         this.§7p§ = param2;
         this.§62§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§`K§.numChildren > 0)
         {
            this.§`K§.removeChildAt(0,true);
         }
      }
      
      public function §4!'§(param1:int) : void
      {
         var _loc6_:§5!7§ = null;
         var _loc7_:§%o§ = null;
         this.clear();
         var _loc2_:Array = this.§2U§(this.§0!H§(param1));
         var _loc3_:int = this.§-6§(_loc2_);
         var _loc4_:int = this.§>!2§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §%o§(_loc6_.texture,this.§62§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§`K§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§`K§.flatten();
      }
      
      private function §0!H§(param1:int) : Array
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
      
      private function §2U§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§5!7§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§7p§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §-6§(param1:Array) : int
      {
         var _loc3_:§5!7§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §>!2§(param1:Array) : int
      {
         var _loc5_:§5!7§ = null;
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
