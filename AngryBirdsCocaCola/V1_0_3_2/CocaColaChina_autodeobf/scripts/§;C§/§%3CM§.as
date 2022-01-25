package §;C§
{
   import flash.events.Event;
   
   public class §<M§ extends Event
   {
      
      public static const §-!a§:String = "OnCloseComplete";
       
      
      private var §]!G§:Popup;
      
      public function §<M§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§]!G§ = param2;
      }
      
      public function get §?!U§() : Popup
      {
         return this.§]!G§;
      }
      
      override public function clone() : Event
      {
         return new §<M§(type,this.§]!G§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
