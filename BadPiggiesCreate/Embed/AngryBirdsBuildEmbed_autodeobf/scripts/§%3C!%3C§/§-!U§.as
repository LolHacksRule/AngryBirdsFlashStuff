package §<!<§
{
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §=U§.§;P§;
   import §=U§.§>?§;
   
   public class §-!U§
   {
       
      
      private var §>E§:Sprite;
      
      private var §-3§:§;P§;
      
      private var §%Z§:Boolean;
      
      public function §-!U§(param1:Sprite, param2:§;P§, param3:Boolean = false)
      {
         super();
         this.§>E§ = param1;
         this.§-3§ = param2;
         this.§%Z§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§>E§.numChildren > 0)
         {
            this.§>E§.removeChildAt(0,true);
         }
      }
      
      public function §>D§(param1:int) : void
      {
         var _loc6_:§>?§ = null;
         var _loc7_:§7!J§ = null;
         this.clear();
         var _loc2_:Array = this.§4!X§(this.§`!=§(param1));
         var _loc3_:int = this.§&<§(_loc2_);
         var _loc4_:int = this.§=$§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §7!J§(_loc6_.texture,this.§%Z§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§>E§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§>E§.flatten();
      }
      
      private function §`!=§(param1:int) : Array
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
      
      private function §4!X§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§>?§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§-3§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §&<§(param1:Array) : int
      {
         var _loc3_:§>?§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §=$§(param1:Array) : int
      {
         var _loc5_:§>?§ = null;
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
