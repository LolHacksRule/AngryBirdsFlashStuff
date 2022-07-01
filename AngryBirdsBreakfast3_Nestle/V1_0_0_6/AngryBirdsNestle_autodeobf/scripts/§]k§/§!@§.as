package §]k§
{
   import §,!q§.§+Q§;
   import §,!q§.DisplayObject;
   import §,!q§.Sprite;
   import §-!b§.§<W§;
   import flash.geom.Rectangle;
   
   public class §!@§
   {
       
      
      private var §2!&§:Sprite;
      
      private var §]!v§:§<W§;
      
      private var §2!k§:Boolean;
      
      public function §!@§(param1:Sprite, param2:§<W§, param3:Boolean = false)
      {
         super();
         this.§2!&§ = param1;
         this.§]!v§ = param2;
         this.§2!k§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§2!&§.numChildren > 0)
         {
            this.§2!&§.removeChildAt(0,true);
         }
      }
      
      public function §0d§(param1:int) : void
      {
         var _loc6_:§+Q§ = null;
         this.clear();
         var _loc2_:Vector.<DisplayObject> = this.§&!h§(this.§`!1§(param1));
         var _loc3_:int = this.§0!U§(_loc2_);
         var _loc4_:int = this.§!!u§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            this.§2!&§.addChild(_loc6_);
            _loc6_.x = _loc5_;
            _loc6_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§2!&§.flatten();
      }
      
      private function §`!1§(param1:int) : Vector.<int>
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
      
      private function §&!h§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            (_loc4_ = this.§]!v§.getFrame(_loc3_)).pivotX = 0;
            _loc4_.pivotY = 0;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §0!U§(param1:Vector.<DisplayObject>) : int
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §!!u§(param1:Vector.<DisplayObject>) : int
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:Rectangle = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc5_ in param1)
         {
            _loc6_ = _loc5_.§<!<§;
            _loc2_ = _loc6_.top;
            _loc3_ = _loc6_.bottom;
         }
         return _loc3_ - _loc2_;
      }
   }
}
