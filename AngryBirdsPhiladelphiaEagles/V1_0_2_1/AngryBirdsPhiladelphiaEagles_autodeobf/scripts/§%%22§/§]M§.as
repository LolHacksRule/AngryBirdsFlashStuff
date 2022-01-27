package §%"§
{
   import §<!N§.§&M§;
   import §<!N§.Sprite;
   import §^'§.§!!M§;
   import §^'§.§,!2§;
   
   public class §]M§
   {
       
      
      private var §=!"§:Sprite;
      
      private var §73§:§,!2§;
      
      private var §1!%§:Boolean;
      
      public function §]M§(param1:Sprite, param2:§,!2§, param3:Boolean = false)
      {
         super();
         this.§=!"§ = param1;
         this.§73§ = param2;
         this.§1!%§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§=!"§.numChildren > 0)
         {
            this.§=!"§.removeChildAt(0,true);
         }
      }
      
      public function §+!3§(param1:int) : void
      {
         var _loc6_:§!!M§ = null;
         var _loc7_:§&M§ = null;
         this.clear();
         var _loc2_:Array = this.§&!G§(this.§71§(param1));
         var _loc3_:int = this.§6!?§(_loc2_);
         var _loc4_:int = this.§,m§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §&M§(_loc6_.texture,this.§1!%§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§=!"§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§=!"§.flatten();
      }
      
      private function §71§(param1:int) : Array
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
      
      private function §&!G§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§!!M§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§73§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §6!?§(param1:Array) : int
      {
         var _loc3_:§!!M§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §,m§(param1:Array) : int
      {
         var _loc5_:§!!M§ = null;
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
