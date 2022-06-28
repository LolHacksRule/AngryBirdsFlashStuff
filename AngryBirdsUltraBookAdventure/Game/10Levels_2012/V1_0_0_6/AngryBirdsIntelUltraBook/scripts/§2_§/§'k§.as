package §2_§
{
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import §^!Y§.§1C§;
   import §^!Y§.§4!f§;
   
   public class §'k§
   {
       
      
      private var §2O§:Sprite;
      
      private var §?B§:§4!f§;
      
      private var §#!%§:Boolean;
      
      public function §'k§(param1:Sprite, param2:§4!f§, param3:Boolean = false)
      {
         super();
         this.§2O§ = param1;
         this.§?B§ = param2;
         this.§#!%§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§2O§.numChildren > 0)
         {
            this.§2O§.removeChildAt(0,true);
         }
      }
      
      public function §6%§(param1:int) : void
      {
         var _loc6_:§1C§ = null;
         var _loc7_:§-§ = null;
         this.clear();
         var _loc2_:Array = this.§@9§(this.§0! §(param1));
         var _loc3_:int = this.§2p§(_loc2_);
         var _loc4_:int = this.§#!L§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §-§(_loc6_.texture,this.§#!%§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§2O§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§2O§.flatten();
      }
      
      private function §0! §(param1:int) : Array
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
      
      private function §@9§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§1C§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§?B§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §2p§(param1:Array) : int
      {
         var _loc3_:§1C§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §#!L§(param1:Array) : int
      {
         var _loc5_:§1C§ = null;
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
