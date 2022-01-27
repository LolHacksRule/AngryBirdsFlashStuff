package §2z§
{
   import §=!E§.Sprite;
   import §=!E§.§try§;
   import §]!C§.§'!!§;
   import §]!C§.§<!c§;
   
   public class §85§
   {
       
      
      private var §"!B§:Sprite;
      
      private var §82§:§<!c§;
      
      private var §4!5§:Boolean;
      
      public function §85§(param1:Sprite, param2:§<!c§, param3:Boolean = false)
      {
         super();
         this.§"!B§ = param1;
         this.§82§ = param2;
         this.§4!5§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§"!B§.numChildren > 0)
         {
            this.§"!B§.removeChildAt(0,true);
         }
      }
      
      public function §08§(param1:int) : void
      {
         var _loc6_:§'!!§ = null;
         var _loc7_:§try§ = null;
         this.clear();
         var _loc2_:Array = this.§#!@§(this.§&!;§(param1));
         var _loc3_:int = this.§%Y§(_loc2_);
         var _loc4_:int = this.§2!O§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §try§(_loc6_.texture,this.§4!5§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§"!B§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§"!B§.flatten();
      }
      
      private function §&!;§(param1:int) : Array
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
      
      private function §#!@§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§'!!§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§82§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §%Y§(param1:Array) : int
      {
         var _loc3_:§'!!§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §2!O§(param1:Array) : int
      {
         var _loc5_:§'!!§ = null;
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
