package §;!B§
{
   import flash.events.Event;
   
   public class §7$§ extends Event
   {
      
      public static const §^O§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^O§ = "OnCloseComplete";
         }
      }
      
      private var §`+§:Popup;
      
      public function §7$§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4);
            if(!_loc6_)
            {
               addr25:
               this.§`+§ = param2;
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function get § set§() : Popup
      {
         return this.§`+§;
      }
      
      override public function clone() : Event
      {
         return new §7$§(type,this.§`+§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
