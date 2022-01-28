package §5!V§
{
   import §&"5§.§+2§;
   import §&"5§.§6!L§;
   import §default§.§=!Z§;
   import §default§.Sprite;
   
   public class §%!h§
   {
       
      
      private var §!&§:Sprite;
      
      private var §%"9§:§+2§;
      
      private var §@!E§:Boolean;
      
      public function §%!h§(param1:Sprite, param2:§+2§, param3:Boolean = false)
      {
         super();
         this.§!&§ = param1;
         this.§%"9§ = param2;
         this.§@!E§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§!&§.numChildren > 0)
         {
            this.§!&§.removeChildAt(0,true);
         }
      }
      
      public function §!!=§(param1:int) : void
      {
         var _loc6_:§6!L§ = null;
         var _loc7_:§=!Z§ = null;
         this.clear();
         var _loc2_:Array = this.§8Q§(this.§0!e§(param1));
         var _loc3_:int = this.§=y§(_loc2_);
         var _loc4_:int = this.§-p§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §=!Z§(_loc6_.texture,this.§@!E§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§!&§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§!&§.flatten();
      }
      
      private function §0!e§(param1:int) : Array
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
      
      private function §8Q§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§6!L§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§%"9§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §=y§(param1:Array) : int
      {
         var _loc3_:§6!L§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §-p§(param1:Array) : int
      {
         var _loc5_:§6!L§ = null;
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
