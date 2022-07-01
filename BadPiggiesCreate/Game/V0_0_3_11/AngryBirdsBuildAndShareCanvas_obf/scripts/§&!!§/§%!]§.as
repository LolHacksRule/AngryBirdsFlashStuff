package §&!!§
{
   import flash.events.Event;
   
   public class §%!]§ extends Event
   {
      
      public static const §["3§:String = "OnCloseComplete";
       
      
      private var §""0§:Popup;
      
      public function §%!]§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§""0§ = param2;
      }
      
      public function get §3!J§() : Popup
      {
         return this.§""0§;
      }
      
      override public function clone() : Event
      {
         return new §%!]§(type,this.§""0§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
