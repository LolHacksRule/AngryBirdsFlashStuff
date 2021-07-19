package §9!`§
{
   import §48§.§5!c§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §]]§:String = "layer_close_request";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && PopupLayerEvent))
         {
            CLOSE = "layer_close";
            while(true)
            {
               OPEN = "layer__open";
               while(!_loc2_)
               {
                  §]]§ = "layer_close_request";
                  if(_loc1_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public var §<4§:int;
      
      public var §7!e§:§5!c§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§5!c§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§<4§ = param2;
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            this.§7!e§ = param3;
            if(_loc7_ || param1)
            {
               if(!(_loc6_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§<4§,this.§7!e§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
