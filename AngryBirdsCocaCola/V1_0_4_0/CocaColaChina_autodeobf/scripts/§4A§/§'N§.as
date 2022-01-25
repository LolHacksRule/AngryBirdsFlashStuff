package §4A§
{
   import § !K§.§5+§;
   import § !K§.Sprite;
   import §9!Y§.§"#§;
   import §9!Y§.§<!%§;
   
   public class §'N§
   {
       
      
      private var §]!+§:Sprite;
      
      private var §#N§:§<!%§;
      
      private var §9y§:Boolean;
      
      public function §'N§(param1:Sprite, param2:§<!%§, param3:Boolean = false)
      {
         super();
         this.§]!+§ = param1;
         this.§#N§ = param2;
         this.§9y§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§]!+§.numChildren > 0)
         {
            this.§]!+§.removeChildAt(0,true);
         }
      }
      
      public function §8!%§(param1:int) : void
      {
         var _loc6_:§"#§ = null;
         var _loc7_:§5+§ = null;
         this.clear();
         var _loc2_:Array = this.§!!C§(this.§`!M§(param1));
         var _loc3_:int = this.§+o§(_loc2_);
         var _loc4_:int = this.§!o§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §5+§(_loc6_.texture,this.§9y§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§]!+§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§]!+§.flatten();
      }
      
      private function §`!M§(param1:int) : Array
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
      
      private function §!!C§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§"#§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§#N§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §+o§(param1:Array) : int
      {
         var _loc3_:§"#§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §!o§(param1:Array) : int
      {
         var _loc5_:§"#§ = null;
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
