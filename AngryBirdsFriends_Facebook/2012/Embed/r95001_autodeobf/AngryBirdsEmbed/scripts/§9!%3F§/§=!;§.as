package §9!?§
{
   import §<k§.§"!=§;
   import §<k§.Sprite;
   import §[n§.§#H§;
   import §[n§.§2!9§;
   
   public class §=!;§
   {
       
      
      private var §8!!§:Sprite;
      
      private var §[!6§:§2!9§;
      
      private var § else§:Boolean;
      
      public function §=!;§(param1:Sprite, param2:§2!9§, param3:Boolean = false)
      {
         super();
         this.§8!!§ = param1;
         this.§[!6§ = param2;
         this.§ else§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§8!!§.numChildren > 0)
         {
            this.§8!!§.removeChildAt(0,true);
         }
      }
      
      public function §^!;§(param1:int) : void
      {
         var _loc6_:§#H§ = null;
         var _loc7_:§"!=§ = null;
         this.clear();
         var _loc2_:Array = this.§2!7§(this.§0!F§(param1));
         var _loc3_:int = this.§;K§(_loc2_);
         var _loc4_:int = this.§=^§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §"!=§(_loc6_.texture,this.§ else§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§8!!§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§8!!§.flatten();
      }
      
      private function §0!F§(param1:int) : Array
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
      
      private function §2!7§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§#H§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§[!6§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §;K§(param1:Array) : int
      {
         var _loc3_:§#H§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §=^§(param1:Array) : int
      {
         var _loc5_:§#H§ = null;
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
