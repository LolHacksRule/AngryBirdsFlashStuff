package §1#R§
{
   import §[!m§.§[!j§;
   import flash.events.Event;
   
   public class §+#[§ extends Event
   {
      
      public static const §[%§:String = "popup_close_complete";
      
      public static const CLOSE:String = "popup_close";
      
      public static const OPEN:String = "popup_open";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §[%§ = "popup_close_complete";
            while(true)
            {
               CLOSE = "popup_close";
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            OPEN = "popup_open";
            if(!(_loc1_ && §+#[§))
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §&#E§:§[!j§;
      
      public function §+#[§(param1:String, param2:§[!j§, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super(param1,param3,param4);
            do
            {
               this.§&#E§ = param2;
            }
            while(!(_loc6_ || param2));
            
         }
      }
      
      public function get popup() : §[!j§
      {
         return this.§&#E§;
      }
      
      override public function clone() : Event
      {
         return new §+#[§(type,this.§&#E§,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("PopUpEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
