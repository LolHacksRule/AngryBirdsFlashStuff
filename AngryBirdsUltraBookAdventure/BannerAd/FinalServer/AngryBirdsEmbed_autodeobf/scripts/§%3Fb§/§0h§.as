package §?b§
{
   import §'k§.§2v§;
   import §'k§.§7x§;
   import §9W§.§6!0§;
   import §9W§.Sprite;
   
   public class §0h§
   {
       
      
      private var §[0§:Sprite;
      
      private var §"! §:§7x§;
      
      private var §36§:Boolean;
      
      public function §0h§(param1:Sprite, param2:§7x§, param3:Boolean = false)
      {
         super();
         this.§[0§ = param1;
         this.§"! § = param2;
         this.§36§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§[0§.numChildren > 0)
         {
            this.§[0§.removeChildAt(0,true);
         }
      }
      
      public function §<C§(param1:int) : void
      {
         var _loc6_:§2v§ = null;
         var _loc7_:§6!0§ = null;
         this.clear();
         var _loc2_:Array = this.§1!'§(this.§&M§(param1));
         var _loc3_:int = this.§"!1§(_loc2_);
         var _loc4_:int = this.§,!%§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §6!0§(_loc6_.texture,this.§36§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§[0§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§[0§.flatten();
      }
      
      private function §&M§(param1:int) : Array
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
      
      private function §1!'§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§2v§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§"! §.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §"!1§(param1:Array) : int
      {
         var _loc3_:§2v§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §,!%§(param1:Array) : int
      {
         var _loc5_:§2v§ = null;
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
