package §3G§
{
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §5`§.§%F§;
   import §5`§.§+R§;
   
   public class §]!>§
   {
       
      
      private var §62§:Sprite;
      
      private var §^N§:§+R§;
      
      private var §;6§:Boolean;
      
      public function §]!>§(param1:Sprite, param2:§+R§, param3:Boolean = false)
      {
         super();
         this.§62§ = param1;
         this.§^N§ = param2;
         this.§;6§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§62§.numChildren > 0)
         {
            this.§62§.removeChildAt(0,true);
         }
      }
      
      public function §^!>§(param1:int) : void
      {
         var _loc6_:§%F§ = null;
         var _loc7_:§4K§ = null;
         this.clear();
         var _loc2_:Array = this.§'!9§(this.§4`§(param1));
         var _loc3_:int = this.§9$§(_loc2_);
         var _loc4_:int = this.§8'§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §4K§(_loc6_.texture,this.§;6§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§62§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§62§.flatten();
      }
      
      private function §4`§(param1:int) : Array
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
      
      private function §'!9§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§%F§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§^N§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §9$§(param1:Array) : int
      {
         var _loc3_:§%F§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §8'§(param1:Array) : int
      {
         var _loc5_:§%F§ = null;
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
