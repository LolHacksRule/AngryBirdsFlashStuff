package § !J§
{
   import §9`§.§+!D§;
   import §9`§.§8!P§;
   import §`!n§.§+i§;
   import §`!n§.Sprite;
   
   public class §75§
   {
       
      
      private var §]!M§:Sprite;
      
      private var §-=§:§+!D§;
      
      private var §@!p§:Boolean;
      
      public function §75§(param1:Sprite, param2:§+!D§, param3:Boolean = false)
      {
         super();
         this.§]!M§ = param1;
         this.§-=§ = param2;
         this.§@!p§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§]!M§.numChildren > 0)
         {
            this.§]!M§.removeChildAt(0,true);
         }
      }
      
      public function §5V§(param1:int) : void
      {
         var _loc6_:§8!P§ = null;
         var _loc7_:§+i§ = null;
         this.clear();
         var _loc2_:Array = this.§%!M§(this.§ 0§(param1));
         var _loc3_:int = this.§^!]§(_loc2_);
         var _loc4_:int = this.§&>§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §+i§(_loc6_.texture,this.§@!p§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§]!M§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§]!M§.flatten();
      }
      
      private function § 0§(param1:int) : Array
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
      
      private function §%!M§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§8!P§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§-=§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §^!]§(param1:Array) : int
      {
         var _loc3_:§8!P§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §&>§(param1:Array) : int
      {
         var _loc5_:§8!P§ = null;
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
