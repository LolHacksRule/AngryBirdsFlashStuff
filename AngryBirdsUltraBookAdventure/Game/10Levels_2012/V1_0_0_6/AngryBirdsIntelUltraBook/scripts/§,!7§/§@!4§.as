package §,!7§
{
   import §>7§.§,!c§;
   import flash.events.Event;
   
   public class §@!4§ extends Event
   {
      
      public static const §!!o§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §!!o§ = "onUiInteraction";
         }
      }
      
      public var §5!X§:int;
      
      public var §[!1§:String;
      
      public var §,!^§:§,!c§;
      
      public function §@!4§(param1:String, param2:int, param3:String, param4:§,!c§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            super(param1,param5,param6);
         }
         loop0:
         do
         {
            this.§5!X§ = param2;
            while(true)
            {
               this.§[!1§ = param3;
               while(_loc8_)
               {
                  this.§,!^§ = param4;
                  if(_loc8_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc7_ && this);
         
      }
      
      override public function clone() : Event
      {
         return new §@!4§(type,this.§5!X§,this.§[!1§,this.§,!^§,bubbles,cancelable);
      }
   }
}
