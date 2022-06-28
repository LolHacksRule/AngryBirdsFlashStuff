package §+&§
{
   import §,6§.§5z§;
   import §,6§.§^!>§;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   
   public class §0!,§
   {
       
      
      private var §8!9§:Sprite;
      
      private var §!!j§:§^!>§;
      
      private var §^#§:Boolean;
      
      public function §0!,§(param1:Sprite, param2:§^!>§, param3:Boolean = false)
      {
         super();
         this.§8!9§ = param1;
         this.§!!j§ = param2;
         this.§^#§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§8!9§.numChildren > 0)
         {
            this.§8!9§.removeChildAt(0,true);
         }
      }
      
      public function §[R§(param1:int) : void
      {
         var _loc6_:§5z§ = null;
         var _loc7_:§;!U§ = null;
         this.clear();
         var _loc2_:Array = this.§4b§(this.§0y§(param1));
         var _loc3_:int = this.§9^§(_loc2_);
         var _loc4_:int = this.§+!k§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §;!U§(_loc6_.texture,this.§^#§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§8!9§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§8!9§.flatten();
      }
      
      private function §0y§(param1:int) : Array
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
      
      private function §4b§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§5z§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§!!j§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §9^§(param1:Array) : int
      {
         var _loc3_:§5z§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §+!k§(param1:Array) : int
      {
         var _loc5_:§5z§ = null;
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
