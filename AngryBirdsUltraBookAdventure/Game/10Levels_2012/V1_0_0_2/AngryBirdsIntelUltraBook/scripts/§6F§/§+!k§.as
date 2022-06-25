package §6F§
{
   import §9Y§.§6!8§;
   import flash.events.Event;
   
   public class §+!k§ extends Event
   {
      
      public static const §=m§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=m§ = "onUiInteraction";
         }
      }
      
      public var §1![§:int;
      
      public var §?n§:String;
      
      public var §>$§:§6!8§;
      
      public function §+!k§(param1:String, param2:int, param3:String, param4:§6!8§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param5,param6);
            loop0:
            do
            {
               this.§1![§ = param2;
               while(true)
               {
                  this.§?n§ = param3;
                  while(_loc7_ || param3)
                  {
                     this.§>$§ = param4;
                     if(_loc7_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc7_);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §+!k§(type,this.§1![§,this.§?n§,this.§>$§,bubbles,cancelable);
      }
   }
}
