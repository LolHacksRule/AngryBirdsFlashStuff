package §?!<§
{
   import §'!&§.§9!c§;
   import §'!&§.DisplayObject;
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   import flash.geom.Rectangle;
   
   public class §>!5§
   {
       
      
      private var §>#§:Sprite;
      
      private var §<j§:§]!U§;
      
      private var §7"1§:Boolean;
      
      public function §>!5§(param1:Sprite, param2:§]!U§, param3:Boolean = false)
      {
         super();
         this.§>#§ = param1;
         this.§<j§ = param2;
         this.§7"1§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§>#§.numChildren > 0)
         {
            this.§>#§.removeChildAt(0,true);
         }
      }
      
      public function §+!o§(param1:int) : void
      {
         var _loc6_:§9!c§ = null;
         this.clear();
         var _loc2_:Vector.<DisplayObject> = this.§]!K§(this.§=!5§(param1));
         var _loc3_:int = this.getWidth(_loc2_);
         var _loc4_:int = this.getHeight(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            this.§>#§.addChild(_loc6_);
            _loc6_.x = _loc5_;
            _loc6_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§>#§.flatten();
      }
      
      private function §=!5§(param1:int) : Vector.<int>
      {
         var _loc3_:int = 0;
         var _loc2_:Vector.<int> = new Vector.<int>();
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
      
      private function §]!K§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            _loc4_ = this.§<j§.getFrame(_loc3_);
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function getWidth(param1:Vector.<DisplayObject>) : int
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function getHeight(param1:Vector.<DisplayObject>) : int
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:Rectangle = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc5_ in param1)
         {
            _loc6_ = _loc5_.§@!!§;
            _loc2_ = _loc6_.top;
            _loc3_ = _loc6_.bottom;
         }
         return _loc3_ - _loc2_;
      }
   }
}
