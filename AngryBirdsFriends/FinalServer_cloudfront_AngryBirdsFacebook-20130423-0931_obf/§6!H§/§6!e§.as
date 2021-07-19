package §6!H§
{
   import §1!t§.§""B§;
   import flash.events.Event;
   
   public class §6!e§ extends Event
   {
      
      public static const §1" §:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1" § = "onUiInteraction";
         }
      }
      
      public var §0!!§:int;
      
      public var §,§:String;
      
      public var §`]§:§""B§;
      
      public function §6!e§(param1:String, param2:int, param3:String, param4:§""B§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            super(param1,param5,param6);
            loop0:
            while(true)
            {
               this.§0!!§ = param2;
               while(true)
               {
                  this.§,§ = param3;
                  continue loop0;
                  addr44:
                  if(!(_loc8_ && param2))
                  {
                     return;
                     addr61:
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      override public function clone() : Event
      {
         return new §6!e§(type,this.§0!!§,this.§,§,this.§`]§,bubbles,cancelable);
      }
   }
}
