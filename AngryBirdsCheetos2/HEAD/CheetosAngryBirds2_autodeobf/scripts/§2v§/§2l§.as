package §2v§
{
   import flash.events.Event;
   
   public class §2l§ extends Event
   {
      
      public static const §[6§:String = "OnCloseComplete";
       
      
      private var §<!1§:Popup;
      
      public function §2l§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§<!1§ = param2;
      }
      
      public function get §9!Q§() : Popup
      {
         return this.§<!1§;
      }
      
      override public function clone() : Event
      {
         return new §2l§(type,this.§<!1§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
