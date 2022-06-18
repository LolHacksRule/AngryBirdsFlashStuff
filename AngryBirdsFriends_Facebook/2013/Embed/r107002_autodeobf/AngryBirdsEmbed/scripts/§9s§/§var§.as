package §9s§
{
   import §#!@§.§0V§;
   import §#!@§.Sprite;
   import §[v§.§'P§;
   import §[v§.§03§;
   
   public class §var§
   {
       
      
      private var §;e§:Sprite;
      
      private var §!b§:§03§;
      
      private var §#!1§:Boolean;
      
      public function §var§(param1:Sprite, param2:§03§, param3:Boolean = false)
      {
         super();
         this.§;e§ = param1;
         this.§!b§ = param2;
         this.§#!1§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§;e§.numChildren > 0)
         {
            this.§;e§.removeChildAt(0,true);
         }
      }
      
      public function §-8§(param1:int) : void
      {
         var _loc6_:§'P§ = null;
         var _loc7_:§0V§ = null;
         this.clear();
         var _loc2_:Array = this.§''§(this.§[P§(param1));
         var _loc3_:int = this.§6!B§(_loc2_);
         var _loc4_:int = this.§ E§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §0V§(_loc6_.texture,this.§#!1§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§;e§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§;e§.flatten();
      }
      
      private function §[P§(param1:int) : Array
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
      
      private function §''§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§'P§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§!b§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §6!B§(param1:Array) : int
      {
         var _loc3_:§'P§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function § E§(param1:Array) : int
      {
         var _loc5_:§'P§ = null;
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
