package §@0§
{
   import §^"S§.DisplayObject;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   import flash.geom.Rectangle;
   
   public class §"f§
   {
       
      
      private var §4"D§:Sprite;
      
      private var §2"J§:§0$2§;
      
      private var §=!U§:Boolean;
      
      public function §"f§(param1:Sprite, param2:§0$2§, param3:Boolean = false)
      {
         super();
         this.§4"D§ = param1;
         this.§2"J§ = param2;
         this.§=!U§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§4"D§.numChildren > 0)
         {
            this.§4"D§.removeChildAt(0,true);
         }
      }
      
      public function §8"]§(param1:int) : void
      {
         var _loc6_:Image = null;
         this.clear();
         var _loc2_:Vector.<DisplayObject> = this.§^"f§(this.§]#n§(param1));
         var _loc3_:int = this.getWidth(_loc2_);
         var _loc4_:int = this.getHeight(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            this.§4"D§.addChild(_loc6_);
            _loc6_.x = _loc5_;
            _loc6_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§4"D§.flatten();
      }
      
      private function §]#n§(param1:int) : Vector.<int>
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
      
      private function §^"f§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            (_loc4_ = this.§2"J§.getFrame(_loc3_)).pivotX = 0;
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
         var _loc4_:Boolean = true;
         for each(_loc5_ in param1)
         {
            _loc6_ = _loc5_.§^$9§;
            if(_loc4_)
            {
               _loc2_ = _loc6_.top;
               _loc3_ = _loc6_.bottom;
               _loc4_ = false;
            }
            else
            {
               if(_loc6_.top < _loc2_)
               {
                  _loc2_ = _loc6_.top;
               }
               if(_loc6_.bottom > _loc3_)
               {
                  _loc3_ = _loc6_.bottom;
               }
            }
         }
         return _loc3_ - _loc2_;
      }
   }
}
