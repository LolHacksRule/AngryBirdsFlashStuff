package §'a§
{
   import §5!l§.§8!_§;
   import §5!l§.§9Z§;
   import §5x§.§2!K§;
   import §5x§.Sprite;
   
   public class §6Y§
   {
       
      
      private var §`n§:Sprite;
      
      private var §0u§:§8!_§;
      
      private var §&[§:Boolean;
      
      public function §6Y§(param1:Sprite, param2:§8!_§, param3:Boolean = false)
      {
         super();
         this.§`n§ = param1;
         this.§0u§ = param2;
         this.§&[§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§`n§.numChildren > 0)
         {
            this.§`n§.removeChildAt(0,true);
         }
      }
      
      public function §'!k§(param1:int) : void
      {
         var _loc6_:§9Z§ = null;
         var _loc7_:§2!K§ = null;
         this.clear();
         var _loc2_:Array = this.§["§(this.§+`§(param1));
         var _loc3_:int = this.§&!3§(_loc2_);
         var _loc4_:int = this.§9-§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            (_loc7_ = new §2!K§(_loc6_.texture,this.§&[§)).scaleX = _loc6_.scale;
            _loc7_.scaleY = _loc6_.scale;
            this.§`n§.addChild(_loc7_);
            _loc7_.x = _loc5_;
            _loc7_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§`n§.flatten();
      }
      
      private function §+`§(param1:int) : Array
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
      
      private function §["§(param1:Array) : Array
      {
         var _loc3_:int = 0;
         var _loc4_:§9Z§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§0u§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §&!3§(param1:Array) : int
      {
         var _loc3_:§9Z§ = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §9-§(param1:Array) : int
      {
         var _loc5_:§9Z§ = null;
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
