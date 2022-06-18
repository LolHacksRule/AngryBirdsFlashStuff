package §9T§
{
   import §9!a§.§"z§;
   import §9!a§.Sprite;
   import §=0§.§@_§;
   import §=0§.§^L§;
   
   public class §2j§
   {
       
      
      private var §"$§:Sprite;
      
      private var §4!N§:§@_§;
      
      private var §>M§:Boolean;
      
      public function §2j§(param1:Sprite, param2:§@_§, param3:Boolean = false)
      {
         super();
         this.§"$§ = param1;
         this.§4!N§ = param2;
         this.§>M§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§"$§.numChildren > 0)
         {
            this.§"$§.removeChildAt(0,true);
         }
      }
      
      public function §68§(param1:int) : void
      {
         var _loc6_:§^L§ = null;
         var _loc7_:§"z§ = null;
         this.clear();
         var _loc2_:Array = this.§`h§(this.§%c§(param1));
         var _loc3_:int = this.§'?§(_loc2_);
         var _loc4_:int = this.§0K§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §"z§(_loc6_.texture,this.§>M§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§"$§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§"$§.flatten();
      }
      
      private function §%c§(param1:int) : Array
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
      
      private function §`h§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§^L§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§4!N§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §'?§(param1:Array) : int
      {
         var _loc3_:§^L§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §0K§(param1:Array) : int
      {
         var _loc5_:§^L§ = null;
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
