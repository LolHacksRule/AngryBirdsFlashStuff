package §1#R§
{
   import §[!m§.§1!v§;
   import flash.events.Event;
   
   public class PopupLayerEvent extends Event
   {
      
      public static const CLOSE:String = "layer_close";
      
      public static const OPEN:String = "layer__open";
      
      public static const §!C§:String = "layer_close_request";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            CLOSE = "layer_close";
            do
            {
               OPEN = "layer__open";
               do
               {
                  §!C§ = "layer_close_request";
               }
               while(_loc1_ && _loc2_);
               
            }
            while(_loc1_);
            
         }
      }
      
      public var §^!F§:int;
      
      public var §#"^§:§1!v§;
      
      public function PopupLayerEvent(param1:String, param2:int, param3:§1!v§ = null, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§^!F§ = param2;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.§#"^§ = param3;
            if(!(_loc7_ && this))
            {
               if(!(_loc7_ && param2))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function clone() : Event
      {
         return new PopupLayerEvent(type,this.§^!F§,this.§#"^§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopupLayerEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
