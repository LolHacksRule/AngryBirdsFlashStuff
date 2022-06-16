package §1"0§
{
   import §^!,§.§8!H§;
   import flash.events.Event;
   
   public class §4$#§ extends Event
   {
      
      public static const §%#l§:String = "popup_close_complete";
      
      public static const § n§:String = "popup_open_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
       
      
      private var §+#T§:§8!H§;
      
      public function §4$#§(param1:String, param2:§8!H§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§+#T§ = param2;
      }
      
      public function get popup() : §8!H§
      {
         return this.§+#T§;
      }
      
      override public function clone() : Event
      {
         return new §4$#§(type,this.§+#T§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
