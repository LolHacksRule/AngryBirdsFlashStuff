package §8]§
{
   import §1!i§.§?O§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §9! §:String = "layer_close_request";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            CLOSE = "layer_close";
            do
            {
               OPEN = "layer__open";
               do
               {
                  §9! § = "layer_close_request";
               }
               while(!_loc1_);
               
            }
            while(!(_loc1_ || PopupLayerEvent));
            
         }
      }
      
      public var §,!1§:int;
      
      public var §7!U§:§?O§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§?O§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param4,param5);
         }
         while(true)
         {
            this.§,!1§ = param2;
            while(_loc6_)
            {
               this.§7!U§ = param3;
               if(_loc6_)
               {
                  return;
               }
            }
         }
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§,!1§,this.§7!U§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
