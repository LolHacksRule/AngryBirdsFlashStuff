package §@!b§
{
   import §&[§.§'!$§;
   import §&[§.§,!"§;
   import §2!g§.§<7§;
   import §2!g§.Sprite;
   
   public class §&;§
   {
       
      
      private var §[8§:Sprite;
      
      private var §7!j§:§'!$§;
      
      private var §51§:Boolean;
      
      public function §&;§(param1:Sprite, param2:§'!$§, param3:Boolean = false)
      {
         super();
         this.§[8§ = param1;
         this.§7!j§ = param2;
         this.§51§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§[8§.numChildren > 0)
         {
            this.§[8§.removeChildAt(0,true);
         }
      }
      
      public function §"R§(param1:int) : void
      {
         var _loc6_:§,!"§ = null;
         var _loc7_:§<7§ = null;
         this.clear();
         var _loc2_:Array = this.§`!T§(this.§?W§(param1));
         var _loc3_:int = this.§2!B§(_loc2_);
         var _loc4_:int = this.§@!N§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §<7§(_loc6_.texture,this.§51§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§[8§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§[8§.flatten();
      }
      
      private function §?W§(param1:int) : Array
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
      
      private function §`!T§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§,!"§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§7!j§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §2!B§(param1:Array) : int
      {
         var _loc3_:§,!"§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §@!N§(param1:Array) : int
      {
         var _loc5_:§,!"§ = null;
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
