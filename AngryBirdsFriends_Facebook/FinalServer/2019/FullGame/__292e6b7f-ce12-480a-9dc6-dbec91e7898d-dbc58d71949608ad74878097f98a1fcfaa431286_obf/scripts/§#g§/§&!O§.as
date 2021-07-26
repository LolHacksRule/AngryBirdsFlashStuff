package §#g§
{
   import §,#e§.DisplayObject;
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   import flash.geom.Rectangle;
   
   public class §&!O§
   {
       
      
      private var §&"h§:Sprite;
      
      private var §"""§:§7b§;
      
      private var §'$"§:Boolean;
      
      public function §&!O§(param1:Sprite, param2:§7b§, param3:Boolean = false)
      {
         super();
         this.§&"h§ = param1;
         this.§"""§ = param2;
         this.§'$"§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§&"h§.numChildren > 0)
         {
            this.§&"h§.removeChildAt(0,true);
         }
      }
      
      public function §]F§(param1:int) : void
      {
         var _loc6_:Image = null;
         this.clear();
         var _loc2_:Vector.<DisplayObject> = this.§6!C§(this.§;"C§(param1));
         var _loc3_:int = this.getWidth(_loc2_);
         var _loc4_:int = this.getHeight(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            this.§&"h§.addChild(_loc6_);
            _loc6_.x = _loc5_;
            _loc6_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§&"h§.flatten();
      }
      
      private function §;"C§(param1:int) : Vector.<int>
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
      
      private function §6!C§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            (_loc4_ = this.§"""§.getFrame(_loc3_)).pivotX = 0;
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
            _loc6_ = _loc5_.bounds;
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
