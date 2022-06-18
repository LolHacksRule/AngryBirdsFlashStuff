package §4p§
{
   import flash.events.Event;
   
   public class §2!U§ extends Event
   {
      
      public static const §?!#§:String = "OnCloseComplete";
       
      
      private var §?!3§:Popup;
      
      public function §2!U§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§?!3§ = param2;
      }
      
      public function get §<u§() : Popup
      {
         return this.§?!3§;
      }
      
      override public function clone() : Event
      {
         return new §2!U§(type,this.§?!3§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
