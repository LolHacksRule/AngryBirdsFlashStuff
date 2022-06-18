package §?$#§
{
   import §#Z§.DisplayObject;
   import §#Z§.Image;
   import §#Z§.Sprite;
   import §9#M§.§,`§;
   import flash.geom.Rectangle;
   
   public class §<R§
   {
       
      
      private var §]#+§:Sprite;
      
      private var §>#x§:§,`§;
      
      private var §case §:Boolean;
      
      public function §<R§(param1:Sprite, param2:§,`§, param3:Boolean = false)
      {
         super();
         this.§]#+§ = param1;
         this.§>#x§ = param2;
         this.§case § = param3;
      }
      
      public function clear() : void
      {
         while(this.§]#+§.numChildren > 0)
         {
            this.§]#+§.removeChildAt(0,true);
         }
      }
      
      public function §2#y§(param1:int) : void
      {
         var _loc6_:Image = null;
         this.clear();
         var _loc2_:Vector.<DisplayObject> = this.§9$D§(this.§?"E§(param1));
         var _loc3_:int = this.getWidth(_loc2_);
         var _loc4_:int = this.getHeight(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            this.§]#+§.addChild(_loc6_);
            _loc6_.x = _loc5_;
            _loc6_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§]#+§.flatten();
      }
      
      private function §?"E§(param1:int) : Vector.<int>
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
      
      private function §9$D§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            (_loc4_ = this.§>#x§.getFrame(_loc3_)).pivotX = 0;
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
         var _loc6_:Rectangle = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Boolean = true;
         var _loc7_:int = 0;
         var _loc8_:* = param1;
         while(§§hasnext(_loc8_,_loc7_))
         {
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
