package §,"$§
{
   import flash.events.Event;
   
   public class §8!x§ extends Event
   {
      
      public static const §=!#§:String = "OnCloseComplete";
       
      
      private var §8W§:Popup;
      
      public function §8!x§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§8W§ = param2;
      }
      
      public function get §'!=§() : Popup
      {
         return this.§8W§;
      }
      
      override public function clone() : Event
      {
         return new §8!x§(type,this.§8W§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
