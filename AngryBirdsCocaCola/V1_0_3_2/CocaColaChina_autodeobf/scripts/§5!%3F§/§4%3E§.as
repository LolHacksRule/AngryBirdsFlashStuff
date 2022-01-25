package §5!?§
{
   import §8r§.§-!$§;
   import §8r§.§^!a§;
   import §;t§.§=_§;
   import §;t§.Sprite;
   
   public class §4>§
   {
       
      
      private var §8q§:Sprite;
      
      private var §%!F§:§^!a§;
      
      private var §6!C§:Boolean;
      
      public function §4>§(param1:Sprite, param2:§^!a§, param3:Boolean = false)
      {
         super();
         this.§8q§ = param1;
         this.§%!F§ = param2;
         this.§6!C§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§8q§.numChildren > 0)
         {
            this.§8q§.removeChildAt(0,true);
         }
      }
      
      public function §!!5§(param1:int) : void
      {
         var _loc6_:§-!$§ = null;
         var _loc7_:§=_§ = null;
         this.clear();
         var _loc2_:Array = this.§#!2§(this.§#!§(param1));
         var _loc3_:int = this.§'g§(_loc2_);
         var _loc4_:int = this.§#O§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §=_§(_loc6_.texture,this.§6!C§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§8q§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§8q§.flatten();
      }
      
      private function §#!§(param1:int) : Array
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
      
      private function §#!2§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§-!$§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§%!F§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §'g§(param1:Array) : int
      {
         var _loc3_:§-!$§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §#O§(param1:Array) : int
      {
         var _loc5_:§-!$§ = null;
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
