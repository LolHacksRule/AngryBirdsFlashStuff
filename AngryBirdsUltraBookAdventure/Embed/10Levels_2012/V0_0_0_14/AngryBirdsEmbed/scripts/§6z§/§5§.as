package §6z§
{
   import §-!F§.§^h§;
   import flash.events.Event;
   
   public class §5§ extends Event
   {
      
      public static const §,"§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §5§)
         {
            §,"§ = "onUiInteraction";
         }
      }
      
      public var § a§:int;
      
      public var §9!H§:String;
      
      public var §=!-§:§^h§;
      
      public function §5§(param1:String, param2:int, param3:String, param4:§^h§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param5,param6);
            if(!_loc8_)
            {
               this.§ a§ = param2;
               if(_loc7_ || param1)
               {
                  this.§9!H§ = param3;
                  if(_loc7_)
                  {
                     addr50:
                     this.§=!-§ = param4;
                  }
                  return;
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function clone() : Event
      {
         return new §5§(type,this.§ a§,this.§9!H§,this.§=!-§,bubbles,cancelable);
      }
   }
}
