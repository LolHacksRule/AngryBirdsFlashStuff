package §;w§
{
   import §;$5§.§@#G§;
   import flash.events.Event;
   
   public class §5"_§ extends Event
   {
      
      public static const §4+§:String = "popup_close_complete";
      
      public static const §<2§:String = "popup_open_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §[!j§:§@#G§;
      
      public function §5"_§(param1:String, param2:§@#G§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§[!j§ = param2;
      }
      
      public function get popup() : §@#G§
      {
         return this.§[!j§;
      }
      
      override public function clone() : Event
      {
         return new §5"_§(type,this.§[!j§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
