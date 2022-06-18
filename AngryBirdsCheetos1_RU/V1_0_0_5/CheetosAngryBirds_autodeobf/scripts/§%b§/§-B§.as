package §%b§
{
   import §@!§.§ !N§;
   import §@!§.§8!W§;
   import §null §.§%!G§;
   import §null §.Sprite;
   
   public class §-B§
   {
       
      
      private var §&!C§:Sprite;
      
      private var §;E§:§8!W§;
      
      private var §@!8§:Boolean;
      
      public function §-B§(param1:Sprite, param2:§8!W§, param3:Boolean = false)
      {
         super();
         this.§&!C§ = param1;
         this.§;E§ = param2;
         this.§@!8§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§&!C§.numChildren > 0)
         {
            this.§&!C§.removeChildAt(0,true);
         }
      }
      
      public function §9!2§(param1:int) : void
      {
         var _loc6_:§ !N§ = null;
         var _loc7_:§%!G§ = null;
         this.clear();
         var _loc2_:Array = this.§`s§(this.§+j§(param1));
         var _loc3_:int = this.§73§(_loc2_);
         var _loc4_:int = this.§=!V§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §%!G§(_loc6_.texture,this.§@!8§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§&!C§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§&!C§.flatten();
      }
      
      private function §+j§(param1:int) : Array
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
      
      private function §`s§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§ !N§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§;E§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §73§(param1:Array) : int
      {
         var _loc3_:§ !N§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §=!V§(param1:Array) : int
      {
         var _loc5_:§ !N§ = null;
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
