package §^r§
{
   import §7!H§.§3z§;
   import flash.events.Event;
   
   public class §@!T§ extends Event
   {
      
      public static const §7!l§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §@!T§)
         {
            §7!l§ = "popup_close_complete";
         }
         while(true)
         {
            CLOSE = "popup_close";
            while(!_loc1_)
            {
               OPEN = "popup_open";
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private var §?"§:§3z§;
      
      public function §@!T§(param1:String, param2:§3z§, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super(param1,param3,param4);
            do
            {
               this.§?"§ = param2;
            }
            while(!(_loc6_ || param3));
            
         }
      }
      
      public function get popup() : §3z§
      {
         return this.§?"§;
      }
      
      override public function clone() : Event
      {
         return new §@!T§(type,this.§?"§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
