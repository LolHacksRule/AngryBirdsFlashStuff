package §40§
{
   import §=`§.§#`§;
   import §=`§.§%!L§;
   import §`g§.§"<§;
   import §`g§.Sprite;
   
   public class §&d§
   {
       
      
      private var §]2§:Sprite;
      
      private var § K§:§%!L§;
      
      private var §7!W§:Boolean;
      
      public function §&d§(param1:Sprite, param2:§%!L§, param3:Boolean = false)
      {
         super();
         this.§]2§ = param1;
         this.§ K§ = param2;
         this.§7!W§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§]2§.numChildren > 0)
         {
            this.§]2§.removeChildAt(0,true);
         }
      }
      
      public function §1u§(param1:int) : void
      {
         var _loc6_:§#`§ = null;
         var _loc7_:§"<§ = null;
         this.clear();
         var _loc2_:Array = this.§9!f§(this.§ !b§(param1));
         var _loc3_:int = this.§]k§(_loc2_);
         var _loc4_:int = this.§%"#§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §"<§(_loc6_.texture,this.§7!W§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§]2§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§]2§.flatten();
      }
      
      private function § !b§(param1:int) : Array
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
      
      private function §9!f§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§#`§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§ K§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §]k§(param1:Array) : int
      {
         var _loc3_:§#`§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §%"#§(param1:Array) : int
      {
         var _loc5_:§#`§ = null;
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
