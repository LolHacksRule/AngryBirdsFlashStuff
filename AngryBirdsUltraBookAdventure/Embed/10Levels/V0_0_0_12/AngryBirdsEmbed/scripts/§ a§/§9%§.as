package § a§
{
   import §@s§.§'!0§;
   import flash.events.Event;
   
   public class §9%§ extends Event
   {
      
      public static const §2§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §9%§)
         {
            §2§ = "onUiInteraction";
         }
      }
      
      public var §2w§:int;
      
      public var § m§:String;
      
      public var §&@§:§'!0§;
      
      public function §9%§(param1:String, param2:int, param3:String, param4:§'!0§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param5,param6);
            if(!_loc8_)
            {
               this.§2w§ = param2;
               if(_loc7_ || param1)
               {
                  this.§ m§ = param3;
                  if(_loc7_)
                  {
                     addr50:
                     this.§&@§ = param4;
                  }
                  return;
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function clone() : Event
      {
         return new §9%§(type,this.§2w§,this.§ m§,this.§&@§,bubbles,cancelable);
      }
   }
}
