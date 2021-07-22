package §0!2§
{
   import §#S§.§-$§;
   import §#S§.§6!r§;
   import §]!v§.§'!=§;
   import §]!v§.Sprite;
   
   public class §3!0§
   {
       
      
      private var §`b§:Sprite;
      
      private var §%=§:§-$§;
      
      private var § "?§:Boolean;
      
      public function §3!0§(param1:Sprite, param2:§-$§, param3:Boolean = false)
      {
         super();
         this.§`b§ = param1;
         this.§%=§ = param2;
         this.§ "?§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§`b§.numChildren > 0)
         {
            this.§`b§.removeChildAt(0,true);
         }
      }
      
      public function §]<§(param1:int) : void
      {
         var _loc6_:§6!r§ = null;
         var _loc7_:§'!=§ = null;
         this.clear();
         var _loc2_:Array = this.§@!g§(this.§""0§(param1));
         var _loc3_:int = this.§9!T§(_loc2_);
         var _loc4_:int = this.§`n§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §'!=§(_loc6_.texture,this.§ "?§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§`b§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§`b§.flatten();
      }
      
      private function §""0§(param1:int) : Array
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
      
      private function §@!g§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§6!r§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§%=§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §9!T§(param1:Array) : int
      {
         var _loc3_:§6!r§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §`n§(param1:Array) : int
      {
         var _loc5_:§6!r§ = null;
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
