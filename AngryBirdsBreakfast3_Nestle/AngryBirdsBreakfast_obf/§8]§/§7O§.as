package §8]§
{
   import §1!i§.§?!a§;
   import flash.events.Event;
   
   public class §7O§ extends Event
   {
      
      public static const §&G§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&G§ = "popup_close_complete";
            while(true)
            {
               CLOSE = "popup_close";
               while(_loc2_)
               {
                  OPEN = "popup_open";
                  if(!_loc1_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      private var §>o§:§?!a§;
      
      public function §7O§(param1:String, param2:§?!a§, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            super(param1,param3,param4);
         }
         do
         {
            this.§>o§ = param2;
         }
         while(!(_loc6_ || param3));
         
      }
      
      public function get popup() : §?!a§
      {
         return this.§>o§;
      }
      
      override public function clone() : Event
      {
         return new §7O§(type,this.§>o§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
