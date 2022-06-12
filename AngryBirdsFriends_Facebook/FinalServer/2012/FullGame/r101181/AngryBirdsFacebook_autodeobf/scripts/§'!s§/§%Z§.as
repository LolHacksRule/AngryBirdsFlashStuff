package §'!s§
{
   import flash.events.Event;
   
   public class §%Z§ extends Event
   {
      
      public static const §&I§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&I§ = "OnCloseComplete";
         }
      }
      
      private var §]"6§:Popup;
      
      public function §%Z§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§]"6§ = param2;
         }
         while(_loc6_ && param3);
         
      }
      
      public function get §<!a§() : Popup
      {
         return this.§]"6§;
      }
      
      override public function clone() : Event
      {
         return new §%Z§(type,this.§]"6§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
