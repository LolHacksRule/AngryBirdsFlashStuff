package §-A§
{
   import §,H§.§;!9§;
   import §,H§.Sprite;
   import §2!4§.§>5§;
   import §2!4§.§`!7§;
   
   public class §"A§
   {
       
      
      private var §=#§:Sprite;
      
      private var §2u§:§`!7§;
      
      private var §2!M§:Boolean;
      
      public function §"A§(param1:Sprite, param2:§`!7§, param3:Boolean = false)
      {
         super();
         this.§=#§ = param1;
         this.§2u§ = param2;
         this.§2!M§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§=#§.numChildren > 0)
         {
            this.§=#§.removeChildAt(0,true);
         }
      }
      
      public function §[o§(param1:int) : void
      {
         var _loc6_:§>5§ = null;
         var _loc7_:§;!9§ = null;
         this.clear();
         var _loc2_:Array = this.§case§(this.§!C§(param1));
         var _loc3_:int = this.§'?§(_loc2_);
         var _loc4_:int = this.§"7§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §;!9§(_loc6_.texture,this.§2!M§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§=#§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§=#§.flatten();
      }
      
      private function §!C§(param1:int) : Array
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
      
      private function §case§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§>5§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§2u§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §'?§(param1:Array) : int
      {
         var _loc3_:§>5§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §"7§(param1:Array) : int
      {
         var _loc5_:§>5§ = null;
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
