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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §;g§))
         {
            §?C§ = "popup_close_complete";
         }
         while(true)
         {
            CLOSE = "popup_close";
            while(!_loc2_)
            {
               OPEN = "popup_open";
               if(!(_loc2_ && §;g§))
               {
                  return;
               }
            }
         }
      }
      
      private var §!!=§:§["#§;
      
      public function §;g§(param1:String, param2:§["#§, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§!!=§ = param2;
         }
         while(!(_loc6_ || param3));
         
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
