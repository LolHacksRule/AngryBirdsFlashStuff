package §5!Y§
{
   import flash.events.Event;
   
   public class §>"E§ extends Event
   {
      
      public static const §6"-§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §6"-§ = "OnCloseComplete";
         }
      }
      
      private var §+!I§:Popup;
      
      public function §>"E§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§+!I§ = param2;
         }
         while(_loc5_ && param3);
         
      }
      
      public function get §]!X§() : Popup
      {
         return this.§+!I§;
      }
      
      override public function clone() : Event
      {
         return new §>"E§(type,this.§+!I§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
