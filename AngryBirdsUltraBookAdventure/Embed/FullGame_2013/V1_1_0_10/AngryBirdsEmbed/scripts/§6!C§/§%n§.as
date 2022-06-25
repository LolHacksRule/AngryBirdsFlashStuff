package §6!C§
{
   import flash.events.Event;
   
   public class §%n§ extends Event
   {
      
      public static const §<6§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<6§ = "OnCloseComplete";
         }
      }
      
      private var § X§:Popup;
      
      public function §%n§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            super(param1,param3,param4);
            if(_loc5_ || this)
            {
               addr45:
               this.§ X§ = param2;
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function get §]`§() : Popup
      {
         return this.§ X§;
      }
      
      override public function clone() : Event
      {
         return new §%n§(type,this.§ X§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
