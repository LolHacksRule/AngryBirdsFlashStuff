package §]A§
{
   import § !=§.§0F§;
   import § !=§.DisplayObject;
   import § !=§.Sprite;
   import §;L§.§=l§;
   import flash.geom.Rectangle;
   
   public class §4H§
   {
       
      
      private var §%!D§:Sprite;
      
      private var §4G§:§=l§;
      
      private var §%X§:Boolean;
      
      public function §4H§(param1:Sprite, param2:§=l§, param3:Boolean = false)
      {
         super();
         this.§%!D§ = param1;
         this.§4G§ = param2;
         this.§%X§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§%!D§.numChildren > 0)
         {
            this.§%!D§.removeChildAt(0,true);
         }
      }
      
      public function §0!D§(param1:int) : void
      {
         var _loc6_:§0F§ = null;
         this.clear();
         var _loc2_:Vector.<DisplayObject> = this.§^R§(this.§]!;§(param1));
         var _loc3_:int = this.§'%§(_loc2_);
         var _loc4_:int = this.§!8§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            this.§%!D§.addChild(_loc6_);
            _loc6_.x = _loc5_;
            _loc6_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§%!D§.flatten();
      }
      
      private function §]!;§(param1:int) : Vector.<int>
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
      
      private function §^R§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            (_loc4_ = this.§4G§.getFrame(_loc3_)).pivotX = 0;
            _loc4_.pivotY = 0;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §'%§(param1:Vector.<DisplayObject>) : int
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §!8§(param1:Vector.<DisplayObject>) : int
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:Rectangle = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc5_ in param1)
         {
            _loc6_ = _loc5_.§4N§;
            _loc2_ = _loc6_.top;
            _loc3_ = _loc6_.bottom;
         }
         return _loc3_ - _loc2_;
      }
   }
}
