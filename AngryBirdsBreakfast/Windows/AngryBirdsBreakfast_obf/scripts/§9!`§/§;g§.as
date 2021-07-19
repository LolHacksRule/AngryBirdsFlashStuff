package §9!`§
{
   import §48§.§["#§;
   import flash.events.Event;
   
   public class §;g§ extends Event
   {
      
      public static const §?C§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §?C§ = "popup_close_complete";
         }
         do
         {
            CLOSE = "popup_close";
            do
            {
               OPEN = "popup_open";
            }
            while(!(_loc2_ || _loc1_));
            
         }
         while(!_loc2_);
         
      }
      
      private var §!!=§:§["#§;
      
      public function §;g§(param1:String, param2:§["#§, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super(param1,param3,param4);
            do
            {
               this.§!!=§ = param2;
            }
            while(_loc5_);
            
         }
      }
      
      public function get popup() : §["#§
      {
         return this.§!!=§;
      }
      
      override public function clone() : Event
      {
         return new §;g§(type,this.§!!=§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
