package §`!4§
{
   import §#?§.§7!A§;
   import §#?§.§^@§;
   import §90§.§8S§;
   import §90§.Sprite;
   
   public class §;g§
   {
       
      
      private var §`8§:Sprite;
      
      private var §2O§:§7!A§;
      
      private var §<%§:Boolean;
      
      public function §;g§(param1:Sprite, param2:§7!A§, param3:Boolean = false)
      {
         super();
         this.§`8§ = param1;
         this.§2O§ = param2;
         this.§<%§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§`8§.numChildren > 0)
         {
            this.§`8§.removeChildAt(0,true);
         }
      }
      
      public function §&x§(param1:int) : void
      {
         var _loc6_:§^@§ = null;
         var _loc7_:§8S§ = null;
         this.clear();
         var _loc2_:Array = this.§?M§(this.§9P§(param1));
         var _loc3_:int = this.§&!<§(_loc2_);
         var _loc4_:int = this.§13§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §8S§(_loc6_.texture,this.§<%§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§`8§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§`8§.flatten();
      }
      
      private function §9P§(param1:int) : Array
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
      
      private function §?M§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§^@§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§2O§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §&!<§(param1:Array) : int
      {
         var _loc3_:§^@§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §13§(param1:Array) : int
      {
         var _loc5_:§^@§ = null;
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
