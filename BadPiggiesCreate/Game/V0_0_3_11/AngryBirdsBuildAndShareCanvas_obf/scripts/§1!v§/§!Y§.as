package §1!v§
{
   import §1!Y§.§8C§;
   import §1!Y§.Sprite;
   import §[_§.§'!N§;
   import §[_§.§+!P§;
   
   public class §!Y§
   {
       
      
      private var § "5§:Sprite;
      
      private var §6C§:§+!P§;
      
      private var §!!^§:Boolean;
      
      public function §!Y§(param1:Sprite, param2:§+!P§, param3:Boolean = false)
      {
         super();
         this.§ "5§ = param1;
         this.§6C§ = param2;
         this.§!!^§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§ "5§.numChildren > 0)
         {
            this.§ "5§.removeChildAt(0,true);
         }
      }
      
      public function §#"#§(param1:int) : void
      {
         var _loc6_:§'!N§ = null;
         var _loc7_:§8C§ = null;
         this.clear();
         var _loc2_:Array = this.§'!p§(this.§+,§(param1));
         var _loc3_:int = this.§1!§(_loc2_);
         var _loc4_:int = this.§[S§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §8C§(_loc6_.texture,this.§!!^§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§ "5§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§ "5§.flatten();
      }
      
      private function §+,§(param1:int) : Array
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
      
      private function §'!p§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§'!N§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§6C§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §1!§(param1:Array) : int
      {
         var _loc3_:§'!N§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §[S§(param1:Array) : int
      {
         var _loc5_:§'!N§ = null;
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
