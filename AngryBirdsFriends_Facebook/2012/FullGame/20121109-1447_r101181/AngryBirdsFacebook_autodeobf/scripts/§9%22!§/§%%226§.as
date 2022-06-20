package §9"!§
{
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §6!D§.§"A§;
   import §6!D§.§3!K§;
   
   public class §%"6§
   {
       
      
      private var §3^§:Sprite;
      
      private var §&";§:§"A§;
      
      private var §[!$§:Boolean;
      
      public function §%"6§(param1:Sprite, param2:§"A§, param3:Boolean = false)
      {
         super();
         this.§3^§ = param1;
         this.§&";§ = param2;
         this.§[!$§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§3^§.numChildren > 0)
         {
            this.§3^§.removeChildAt(0,true);
         }
      }
      
      public function §3"<§(param1:int) : void
      {
         var _loc6_:§3!K§ = null;
         var _loc7_:§0!N§ = null;
         this.clear();
         var _loc2_:Array = this.§0a§(this.§06§(param1));
         var _loc3_:int = this.§<j§(_loc2_);
         var _loc4_:int = this.§`G§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §0!N§(_loc6_.texture,this.§[!$§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§3^§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§3^§.flatten();
      }
      
      private function §06§(param1:int) : Array
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
      
      private function §0a§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§3!K§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§&";§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §<j§(param1:Array) : int
      {
         var _loc3_:§3!K§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §`G§(param1:Array) : int
      {
         var _loc5_:§3!K§ = null;
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
