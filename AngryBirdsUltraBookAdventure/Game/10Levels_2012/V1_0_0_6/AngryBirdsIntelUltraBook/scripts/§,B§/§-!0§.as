package §,B§
{
   import flash.events.Event;
   
   public class §-!0§ extends Event
   {
      
      public static const §>!R§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §>!R§ = "OnCloseComplete";
         }
      }
      
      private var §9k§:Popup;
      
      public function §-!0§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§9k§ = param2;
         }
         while(!_loc5_);
         
      }
      
      public function get §!!i§() : Popup
      {
         return this.§9k§;
      }
      
      override public function clone() : Event
      {
         return new §-!0§(type,this.§9k§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
