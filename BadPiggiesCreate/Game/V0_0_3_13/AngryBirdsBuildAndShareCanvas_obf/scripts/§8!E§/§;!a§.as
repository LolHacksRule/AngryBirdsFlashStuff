package §8!E§
{
   import §`"2§.§%3§;
   import §`"2§.§>",§;
   import §`L§.§-;§;
   import §`L§.Sprite;
   
   public class §;!a§
   {
       
      
      private var §`B§:Sprite;
      
      private var §""=§:§>",§;
      
      private var §;!;§:Boolean;
      
      public function §;!a§(param1:Sprite, param2:§>",§, param3:Boolean = false)
      {
         super();
         this.§`B§ = param1;
         this.§""=§ = param2;
         this.§;!;§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§`B§.numChildren > 0)
         {
            this.§`B§.removeChildAt(0,true);
         }
      }
      
      public function §=!^§(param1:int) : void
      {
         var _loc6_:§%3§ = null;
         var _loc7_:§-;§ = null;
         this.clear();
         var _loc2_:Array = this.§+u§(this.§'"!§(param1));
         var _loc3_:int = this.§ "=§(_loc2_);
         var _loc4_:int = this.§>!F§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §-;§(_loc6_.texture,this.§;!;§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§`B§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§`B§.flatten();
      }
      
      private function §'"!§(param1:int) : Array
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
      
      private function §+u§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§%3§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§""=§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function § "=§(param1:Array) : int
      {
         var _loc3_:§%3§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §>!F§(param1:Array) : int
      {
         var _loc5_:§%3§ = null;
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
