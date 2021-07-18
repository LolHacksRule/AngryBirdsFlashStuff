package §-!;§
{
   import §,L§.§6!W§;
   import flash.events.Event;
   
   public class §>!B§ extends Event
   {
      
      public static const §7"&§:String = "ui_interaction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §>!B§))
         {
            §7"&§ = "ui_interaction";
         }
      }
      
      public var §3o§:int;
      
      public var §3!C§:String;
      
      public var §@! §:§6!W§;
      
      public function §>!B§(param1:String, param2:int, param3:String, param4:§6!W§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param5,param6);
            while(true)
            {
               this.§3o§ = param2;
               loop1:
               while(_loc8_ || param3)
               {
                  this.§3!C§ = param3;
                  while(true)
                  {
                     this.§@! § = param4;
                     if(_loc8_ || param1)
                     {
                        if(_loc8_ || param1)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr57);
      }
      
      override public function clone() : Event
      {
         return new §>!B§(type,this.§3o§,this.§3!C§,this.§@! §,bubbles,cancelable);
      }
   }
}
