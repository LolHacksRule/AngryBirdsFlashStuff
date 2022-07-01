package §7-§
{
   import §[<§.§]!R§;
   import flash.events.Event;
   
   public class §8!v§ extends Event
   {
      
      public static const §7!a§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §+!U§:§]!R§;
      
      public function §8!v§(param1:String, param2:§]!R§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§+!U§ = param2;
      }
      
      public function get popup() : §]!R§
      {
         return this.§+!U§;
      }
      
      override public function clone() : Event
      {
         return new §8!v§(type,this.§+!U§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
