package §7z§
{
   import §1!A§.§;a§;
   import §1!A§.Sprite;
   import §8K§.§4i§;
   import §8K§.§9!S§;
   
   public class §+0§
   {
       
      
      private var §0!5§:Sprite;
      
      private var §=+§:§4i§;
      
      private var §;!L§:Boolean;
      
      public function §+0§(param1:Sprite, param2:§4i§, param3:Boolean = false)
      {
         super();
         this.§0!5§ = param1;
         this.§=+§ = param2;
         this.§;!L§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§0!5§.numChildren > 0)
         {
            this.§0!5§.removeChildAt(0,true);
         }
      }
      
      public function §3!4§(param1:int) : void
      {
         var _loc6_:§9!S§ = null;
         var _loc7_:§;a§ = null;
         this.clear();
         var _loc2_:Array = this.§<b§(this.§ ![§(param1));
         var _loc3_:int = this.§[!2§(_loc2_);
         var _loc4_:int = this.§>j§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §;a§(_loc6_.texture,this.§;!L§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§0!5§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§0!5§.flatten();
      }
      
      private function § ![§(param1:int) : Array
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
      
      private function §<b§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§9!S§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§=+§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §[!2§(param1:Array) : int
      {
         var _loc3_:§9!S§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §>j§(param1:Array) : int
      {
         var _loc5_:§9!S§ = null;
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
