package §0V§
{
   import §3§.§4!!§;
   import §3§.Sprite;
   import §`n§.§-!D§;
   import §`n§.§6o§;
   
   public class §?<§
   {
       
      
      private var §;!5§:Sprite;
      
      private var §^Z§:§-!D§;
      
      private var §1!7§:Boolean;
      
      public function §?<§(param1:Sprite, param2:§-!D§, param3:Boolean = false)
      {
         super();
         this.§;!5§ = param1;
         this.§^Z§ = param2;
         this.§1!7§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§;!5§.numChildren > 0)
         {
            this.§;!5§.removeChildAt(0,true);
         }
      }
      
      public function §`,§(param1:int) : void
      {
         var _loc6_:§6o§ = null;
         var _loc7_:§4!!§ = null;
         this.clear();
         var _loc2_:Array = this.§9v§(this.§%!J§(param1));
         var _loc3_:int = this.§else §(_loc2_);
         var _loc4_:int = this.§"P§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §4!!§(_loc6_.texture,this.§1!7§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§;!5§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§;!5§.flatten();
      }
      
      private function §%!J§(param1:int) : Array
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
      
      private function §9v§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§6o§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§^Z§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §else §(param1:Array) : int
      {
         var _loc3_:§6o§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §"P§(param1:Array) : int
      {
         var _loc5_:§6o§ = null;
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
