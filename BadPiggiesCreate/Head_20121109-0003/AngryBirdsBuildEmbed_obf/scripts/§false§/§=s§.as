package §false§
{
   import flash.events.Event;
   
   public class §=s§ extends Event
   {
      
      public static const §>`§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>`§ = "OnCloseComplete";
         }
      }
      
      private var §0%§:Popup;
      
      public function §=s§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super(param1,param3,param4);
            if(_loc5_ || param2)
            {
               this.§0%§ = param2;
            }
         }
      }
      
      public function get § !%§() : Popup
      {
         return this.§0%§;
      }
      
      override public function clone() : Event
      {
         return new §=s§(type,this.§0%§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
