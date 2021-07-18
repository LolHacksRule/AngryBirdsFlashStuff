package §[x§
{
   import §1n§.§1D§;
   import §1n§.§?!C§;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   
   public class §'t§
   {
       
      
      private var §1-§:Sprite;
      
      private var §1q§:§?!C§;
      
      private var §&4§:Boolean;
      
      public function §'t§(param1:Sprite, param2:§?!C§, param3:Boolean = false)
      {
         super();
         this.§1-§ = param1;
         this.§1q§ = param2;
         this.§&4§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§1-§.numChildren > 0)
         {
            this.§1-§.removeChildAt(0,true);
         }
      }
      
      public function §;7§(param1:int) : void
      {
         var _loc6_:§1D§ = null;
         var _loc7_:§1!,§ = null;
         this.clear();
         var _loc2_:Array = this.§;w§(this.§65§(param1));
         var _loc3_:int = this.§5!E§(_loc2_);
         var _loc4_:int = this.§^C§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §1!,§(_loc6_.texture,this.§&4§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§1-§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§1-§.flatten();
      }
      
      private function §65§(param1:int) : Array
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
      
      private function §;w§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§1D§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§1q§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §5!E§(param1:Array) : int
      {
         var _loc3_:§1D§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §^C§(param1:Array) : int
      {
         var _loc5_:§1D§ = null;
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
