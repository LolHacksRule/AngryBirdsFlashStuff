package §"o§
{
   import §&V§.§,_§;
   import §&V§.§;Q§;
   import §@!=§.§"S§;
   import §@!=§.Sprite;
   
   public class §,,§
   {
       
      
      private var §+x§:Sprite;
      
      private var §5,§:§,_§;
      
      private var §>;§:Boolean;
      
      public function §,,§(param1:Sprite, param2:§,_§, param3:Boolean = false)
      {
         super();
         this.§+x§ = param1;
         this.§5,§ = param2;
         this.§>;§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§+x§.numChildren > 0)
         {
            this.§+x§.removeChildAt(0,true);
         }
      }
      
      public function §6@§(param1:int) : void
      {
         var _loc6_:§;Q§ = null;
         var _loc7_:§"S§ = null;
         this.clear();
         var _loc2_:Array = this.§0!§(this.§3a§(param1));
         var _loc3_:int = this.§'1§(_loc2_);
         var _loc4_:int = this.§0!>§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §"S§(_loc6_.texture,this.§>;§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§+x§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§+x§.flatten();
      }
      
      private function §3a§(param1:int) : Array
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
      
      private function §0!§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§;Q§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§5,§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §'1§(param1:Array) : int
      {
         var _loc3_:§;Q§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §0!>§(param1:Array) : int
      {
         var _loc5_:§;Q§ = null;
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
