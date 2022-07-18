package §`^§
{
   import §]"r§.§2!H§;
   import flash.events.Event;
   
   public class DropDownEvent extends Event
   {
      
      public static const §0F§:String = "selection";
       
      
      public var §5d§:§2!H§;
      
      public function DropDownEvent(param1:String = "selection", param2:§2!H§ = null)
      {
         super(param1,false,false);
         this.§5d§ = param2;
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
