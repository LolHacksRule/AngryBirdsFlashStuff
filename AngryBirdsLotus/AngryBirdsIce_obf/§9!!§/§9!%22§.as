package §9!!§
{
   import flash.events.Event;
   
   public class §9!"§ extends Event
   {
      
      public static const §`y§:String = "OnCloseComplete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §9!"§)
         {
            §`y§ = "OnCloseComplete";
         }
      }
      
      private var §9M§:Popup;
      
      public function §9!"§(param1:String, param2:Popup, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§9M§ = param2;
         }
         while(_loc5_);
         
      }
      
      public function get §-y§() : Popup
      {
         return this.§9M§;
      }
      
      override public function clone() : Event
      {
         return new §9!"§(type,this.§9M§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
