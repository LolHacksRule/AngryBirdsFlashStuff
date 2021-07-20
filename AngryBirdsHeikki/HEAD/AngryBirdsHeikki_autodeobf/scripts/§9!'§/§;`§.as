package §9!'§
{
   import §+!]§.§+!=§;
   import §+!]§.§6H§;
   import §6!;§.§!>§;
   import §6!;§.Sprite;
   
   public class §;`§
   {
       
      
      private var §4!B§:Sprite;
      
      private var §43§:§6H§;
      
      private var §+6§:Boolean;
      
      public function §;`§(param1:Sprite, param2:§6H§, param3:Boolean = false)
      {
         super();
         this.§4!B§ = param1;
         this.§43§ = param2;
         this.§+6§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§4!B§.numChildren > 0)
         {
            this.§4!B§.removeChildAt(0,true);
         }
      }
      
      public function §4!,§(param1:int) : void
      {
         var _loc6_:§+!=§ = null;
         var _loc7_:§!>§ = null;
         this.clear();
         var _loc2_:Array = this.§`6§(this.§<!4§(param1));
         var _loc3_:int = this.§%T§(_loc2_);
         var _loc4_:int = this.§@!a§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §!>§(_loc6_.texture,this.§+6§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§4!B§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§4!B§.flatten();
      }
      
      private function §<!4§(param1:int) : Array
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
      
      private function §`6§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§+!=§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§43§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §%T§(param1:Array) : int
      {
         var _loc3_:§+!=§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §@!a§(param1:Array) : int
      {
         var _loc5_:§+!=§ = null;
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
