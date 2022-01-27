package §"§#0
{
   import §!!k§.§1!^§;
   import flash.geom.Rectangle;
   import §use§.§,!u§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §3!g§
   {
       
      
      private var §0v§:Sprite;
      
      private var § "9§:§1!^§;
      
      private var §^B§:Boolean;
      
      public function §3!g§(param1:Sprite, param2:§1!^§, param3:Boolean = false)
      {
         super();
         this.§0v§ = param1;
         this.§ "9§ = param2;
         this.§^B§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§0v§.numChildren > 0)
         {
            this.§0v§.removeChildAt(0,true);
         }
      }
      
      public function §4"e§(param1:int) : void
      {
         var _loc6_:§,!u§ = null;
         this.clear();
         var _loc2_:Vector.<DisplayObject> = this.§&"F§(this.§]!1§(param1));
         var _loc3_:int = this.getWidth(_loc2_);
         var _loc4_:int = this.getHeight(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            this.§0v§.addChild(_loc6_);
            _loc6_.x = _loc5_;
            _loc6_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§0v§.flatten();
      }
      
      private function §]!1§(param1:int) : Vector.<int>
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
      
      private function §&"F§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            (_loc4_ = this.§ "9§.getFrame(_loc3_)).pivotX = 0;
            _loc4_.pivotY = 0;
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
            _loc6_ = _loc5_.§&"r§;
            _loc2_ = _loc6_.top;
            _loc3_ = _loc6_.bottom;
         }
         return _loc3_ - _loc2_;
      }
   }
}
