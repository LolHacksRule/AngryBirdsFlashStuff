package §4$<§
{
   import §<#m§.§!"<§;
   import flash.events.Event;
   
   public class §?#7§ extends Event
   {
      
      public static const §7#o§:String = "popup_close_complete";
      
      public static const §,!v§:String = "popup_open_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §&u§:§!"<§;
      
      public function §?#7§(param1:String, param2:§!"<§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§&u§ = param2;
      }
      
      public function get popup() : §!"<§
      {
         return this.§&u§;
      }
      
      override public function clone() : Event
      {
         return new §?#7§(type,this.§&u§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
