package §^r§
{
   import §7!H§.§'"H§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §^!I§:String = "layer_close_request";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            CLOSE = "layer_close";
            while(true)
            {
               OPEN = "layer__open";
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            §^!I§ = "layer_close_request";
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public var §<!]§:int;
      
      public var § L§:§'"H§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§'"H§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§<!]§ = param2;
               loop1:
               while(!_loc7_)
               {
                  while(true)
                  {
                     this.§ L§ = param3;
                     if(!(_loc7_ && param2))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§<!]§,this.§ L§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
