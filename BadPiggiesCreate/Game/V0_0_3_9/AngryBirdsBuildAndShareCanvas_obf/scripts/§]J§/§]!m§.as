package §]J§
{
   import flash.events.Event;
   
   public class §]!m§ extends Event
   {
      
      public static const §+&§:String = "OnCloseComplete";
       
      
      private var §]!b§:Popup;
      
      public function §]!m§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§]!b§ = param2;
      }
      
      public function get §7!Q§() : Popup
      {
         return this.§]!b§;
      }
      
      override public function clone() : Event
      {
         return new §]!m§(type,this.§]!b§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
