package § d§
{
   import §#!f§.§9!,§;
   import §#!f§.Sprite;
   import §3!§.§2!$§;
   import §3!§.§3!W§;
   
   public class §5!A§
   {
       
      
      private var §3![§:Sprite;
      
      private var §<v§:§3!W§;
      
      private var §while§:Boolean;
      
      public function §5!A§(param1:Sprite, param2:§3!W§, param3:Boolean = false)
      {
         super();
         this.§3![§ = param1;
         this.§<v§ = param2;
         this.§while§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§3![§.numChildren > 0)
         {
            this.§3![§.removeChildAt(0,true);
         }
      }
      
      public function §5a§(param1:int) : void
      {
         var _loc6_:§2!$§ = null;
         var _loc7_:§9!,§ = null;
         this.clear();
         var _loc2_:Array = this.§<!?§(this.§'&§(param1));
         var _loc3_:int = this.§^3§(_loc2_);
         var _loc4_:int = this.§57§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §9!,§(_loc6_.texture,this.§while§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§3![§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§3![§.flatten();
      }
      
      private function §'&§(param1:int) : Array
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
      
      private function §<!?§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§2!$§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§<v§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §^3§(param1:Array) : int
      {
         var _loc3_:§2!$§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §57§(param1:Array) : int
      {
         var _loc5_:§2!$§ = null;
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
