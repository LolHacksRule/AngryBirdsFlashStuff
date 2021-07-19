package §%!0§
{
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §;"7§.§"!B§;
   import §;"7§.§+!I§;
   
   public class §@W§
   {
       
      
      private var § D§:Sprite;
      
      private var §-?§:§"!B§;
      
      private var §>!l§:Boolean;
      
      public function §@W§(param1:Sprite, param2:§"!B§, param3:Boolean = false)
      {
         super();
         this.§ D§ = param1;
         this.§-?§ = param2;
         this.§>!l§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§ D§.numChildren > 0)
         {
            this.§ D§.removeChildAt(0,true);
         }
      }
      
      public function § "@§(param1:int) : void
      {
         var _loc6_:§+!I§ = null;
         var _loc7_:§7"#§ = null;
         this.clear();
         var _loc2_:Array = this.§+!§(this.§ "0§(param1));
         var _loc3_:int = this.§;,§(_loc2_);
         var _loc4_:int = this.§=7§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §7"#§(_loc6_.texture,this.§>!l§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§ D§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§ D§.flatten();
      }
      
      private function § "0§(param1:int) : Array
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
      
      private function §+!§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§+!I§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§-?§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §;,§(param1:Array) : int
      {
         var _loc3_:§+!I§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §=7§(param1:Array) : int
      {
         var _loc5_:§+!I§ = null;
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
