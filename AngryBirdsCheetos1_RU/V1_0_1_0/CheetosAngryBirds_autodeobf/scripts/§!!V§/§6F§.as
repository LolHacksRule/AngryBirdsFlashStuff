package §!!V§
{
   import §&!5§.§'!$§;
   import §&!5§.Sprite;
   import §9!2§.§<j§;
   import §9!2§.§@!!§;
   
   public class §6F§
   {
       
      
      private var §6`§:Sprite;
      
      private var §`T§:§@!!§;
      
      private var §[k§:Boolean;
      
      public function §6F§(param1:Sprite, param2:§@!!§, param3:Boolean = false)
      {
         super();
         this.§6`§ = param1;
         this.§`T§ = param2;
         this.§[k§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§6`§.numChildren > 0)
         {
            this.§6`§.removeChildAt(0,true);
         }
      }
      
      public function §+!F§(param1:int) : void
      {
         var _loc6_:§<j§ = null;
         var _loc7_:§'!$§ = null;
         this.clear();
         var _loc2_:Array = this.§;J§(this.§+!D§(param1));
         var _loc3_:int = this.§"e§(_loc2_);
         var _loc4_:int = this.§'1§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §'!$§(_loc6_.texture,this.§[k§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§6`§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§6`§.flatten();
      }
      
      private function §+!D§(param1:int) : Array
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
      
      private function §;J§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§<j§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§`T§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §"e§(param1:Array) : int
      {
         var _loc3_:§<j§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §'1§(param1:Array) : int
      {
         var _loc5_:§<j§ = null;
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
