package §3E§
{
   import §7u§.§&!C§;
   import §7u§.Sprite;
   import §`!B§.§2j§;
   import §`!B§.§4!I§;
   
   public class §'!G§
   {
       
      
      private var §3!F§:Sprite;
      
      private var §,N§:§2j§;
      
      private var §+O§:Boolean;
      
      public function §'!G§(param1:Sprite, param2:§2j§, param3:Boolean = false)
      {
         super();
         this.§3!F§ = param1;
         this.§,N§ = param2;
         this.§+O§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§3!F§.numChildren > 0)
         {
            this.§3!F§.removeChildAt(0,true);
         }
      }
      
      public function §#!'§(param1:int) : void
      {
         var _loc6_:§4!I§ = null;
         var _loc7_:§&!C§ = null;
         this.clear();
         var _loc2_:Array = this.§ true§(this.§<`§(param1));
         var _loc3_:int = this.§#f§(_loc2_);
         var _loc4_:int = this.§"!-§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §&!C§(_loc6_.texture,this.§+O§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§3!F§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§3!F§.flatten();
      }
      
      private function §<`§(param1:int) : Array
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
      
      private function § true§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§4!I§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§,N§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §#f§(param1:Array) : int
      {
         var _loc3_:§4!I§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §"!-§(param1:Array) : int
      {
         var _loc5_:§4!I§ = null;
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
