package §@"1§
{
   import §0!Y§.§#"5§;
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   import §6!?§.§7!t§;
   import flash.geom.Rectangle;
   
   public class §#!o§
   {
       
      
      private var §<q§:Sprite;
      
      private var §+e§:§7!t§;
      
      private var §#!?§:Boolean;
      
      public function §#!o§(param1:Sprite, param2:§7!t§, param3:Boolean = false)
      {
         super();
         this.§<q§ = param1;
         this.§+e§ = param2;
         this.§#!?§ = param3;
      }
      
      public function clear() : void
      {
         while(this.§<q§.numChildren > 0)
         {
            this.§<q§.removeChildAt(0,true);
         }
      }
      
      public function §;!F§(param1:int) : void
      {
         var _loc6_:§#"5§ = null;
         this.clear();
         var _loc2_:Vector.<DisplayObject> = this.§?-§(this.§+s§(param1));
         var _loc3_:int = this.§`!A§(_loc2_);
         var _loc4_:int = this.§#!l§(_loc2_);
         var _loc5_:int = -_loc3_ / 2;
         for each(_loc6_ in _loc2_)
         {
            this.§<q§.addChild(_loc6_);
            _loc6_.x = _loc5_;
            _loc6_.y = -_loc4_ / 2;
            _loc5_ += _loc6_.width;
         }
         this.§<q§.flatten();
      }
      
      private function §+s§(param1:int) : Vector.<int>
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
      
      private function §?-§(param1:Vector.<int>) : Vector.<DisplayObject>
      {
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         for each(_loc3_ in param1)
         {
            (_loc4_ = this.§+e§.getFrame(_loc3_)).pivotX = 0;
            _loc4_.pivotY = 0;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function §`!A§(param1:Vector.<DisplayObject>) : int
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:int = 0;
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.width;
         }
         return _loc2_;
      }
      
      private function §#!l§(param1:Vector.<DisplayObject>) : int
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:Rectangle = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc5_ in param1)
         {
            _loc6_ = _loc5_.§]1§;
            _loc2_ = _loc6_.top;
            _loc3_ = _loc6_.bottom;
         }
         return _loc3_ - _loc2_;
      }
   }
}
