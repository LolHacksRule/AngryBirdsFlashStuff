package §@!?§
{
   import flash.events.Event;
   
   public class §@9§ extends Event
   {
      
      public static const §^W§:String = "OnCloseComplete";
       
      
      private var §#H§:Popup;
      
      public function §@9§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§#H§ = param2;
      }
      
      public function get §!!1§() : Popup
      {
         return this.§#H§;
      }
      
      override public function clone() : Event
      {
         return new §@9§(type,this.§#H§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
