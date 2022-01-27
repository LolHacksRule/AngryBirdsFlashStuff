package §6#§
{
   import §0#P§.§`!$§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §'!-§
   {
       
      
      public function §'!-§()
      {
         super();
      }
      
      public static function §[`§(param1:*) : Vector.<§`!$§>
      {
         var _loc2_:Vector.<§`!$§> = null;
         var _loc3_:§`!$§ = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc5_:DisplayObject = null;
         var _loc6_:int = 0;
         _loc2_ = new Vector.<§`!$§>();
         if(param1 is DisplayObjectContainer)
         {
            (_loc6_ = (_loc4_ = param1 as DisplayObjectContainer).numChildren) > 0;
            while(_loc6_--)
            {
               _loc5_ = _loc4_.getChildAt(_loc6_);
               _loc3_ = new §`!$§();
               _loc3_.§!#]§ = _loc5_;
               _loc3_.name = _loc5_.name;
               _loc3_.type = _loc5_.toString();
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
   }
}
