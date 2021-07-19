package §1#R§
{
   import §[!m§.§[!j§;
   import flash.events.Event;
   
   public class §+#[§ extends Event
   {
      
      public static const §[%§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §&#E§:§[!j§;
      
      public function §+#[§(param1:String, param2:§[!j§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§&#E§ = param2;
      }
      
      public function get popup() : §[!j§
      {
         return this.§&#E§;
      }
      
      override public function clone() : Event
      {
         return new §+#[§(type,this.§&#E§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
