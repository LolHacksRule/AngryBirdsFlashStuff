package §9T§
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import §#e§.§4^§;
   import §#e§.§`!9§;
   
   public class §'!?§
   {
       
      
      private var §8A§:Sprite;
      
      private var §%M§:§4^§;
      
      private var §`?§:Boolean;
      
      public function §'!?§(param1:Sprite, param2:§4^§, param3:Boolean = false)
      {
         super();
         this.§8A§ = param1;
         this.§%M§ = param2;
         this.§`?§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§8A§.numChildren > 0)
         {
            this.§8A§.removeChildAt(0,true);
         }
      }
      
      public function §1M§(param1:int) : void
      {
         var _loc6_:§`!9§ = null;
         var _loc7_:§1!A§ = null;
         this.clear();
         var _loc2_:Array = this.§],§(this.§4<§(param1));
         var _loc3_:int = this.§[k§(_loc2_);
         var _loc4_:int = this.§-I§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §1!A§(_loc6_.texture,this.§`?§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§8A§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§8A§.flatten();
      }
      
      private function §4<§(param1:int) : Array
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
      
      private function §],§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§`!9§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§%M§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §[k§(param1:Array) : int
      {
         var _loc3_:§`!9§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §-I§(param1:Array) : int
      {
         var _loc5_:§`!9§ = null;
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
