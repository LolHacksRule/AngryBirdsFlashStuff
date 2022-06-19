package §,§
{
   import §9t§.§"h§;
   import §9t§.§35§;
   import §^a§.§6p§;
   import §^a§.Sprite;
   
   public class §&!M§
   {
       
      
      private var §8!2§:Sprite;
      
      private var §4S§:§"h§;
      
      private var §=!W§:Boolean;
      
      public function §&!M§(param1:Sprite, param2:§"h§, param3:Boolean = false)
      {
         super();
         this.§8!2§ = param1;
         this.§4S§ = param2;
         this.§=!W§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§8!2§.numChildren > 0)
         {
            this.§8!2§.removeChildAt(0,true);
         }
      }
      
      public function §8V§(param1:int) : void
      {
         var _loc6_:§35§ = null;
         var _loc7_:§6p§ = null;
         this.clear();
         var _loc2_:Array = this.§;O§(this.§<b§(param1));
         var _loc3_:int = this.§[k§(_loc2_);
         var _loc4_:int = this.§>;§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §6p§(_loc6_.texture,this.§=!W§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§8!2§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§8!2§.flatten();
      }
      
      private function §<b§(param1:int) : Array
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
      
      private function §;O§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§35§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§4S§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §[k§(param1:Array) : int
      {
         var _loc3_:§35§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §>;§(param1:Array) : int
      {
         var _loc5_:§35§ = null;
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
