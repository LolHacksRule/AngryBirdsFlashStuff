package §`^§
{
   import §]"r§.§2!H§;
   import flash.events.Event;
   
   public class DropDownEvent extends Event
   {
      
      public static const §0F§:String = "selection";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0F§ = "selection";
         }
      }
      
      public var §5d§:§2!H§;
      
      public function DropDownEvent(param1:String = "selection", param2:§2!H§ = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super(param1,false,false);
            do
            {
               this.§5d§ = param2;
            }
            while(!_loc3_);
            
         }
      }
      
      override public function clone() : Event
      {
         return new DropDownEvent(type,this.§5d§);
      }
      
      override public function toString() : String
      {
         return formatToString("DropDownEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
