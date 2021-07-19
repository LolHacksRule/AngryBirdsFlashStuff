package §4i§
{
   import §#!4§.§+!S§;
   import flash.events.Event;
   
   public class §;!0§ extends Event
   {
      
      public static const §#!G§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#!G§ = "onUiInteraction";
         }
      }
      
      public var §^!l§:int;
      
      public var §3y§:String;
      
      public var component:§+!S§;
      
      public function §;!0§(param1:String, param2:int, param3:String, param4:§+!S§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param5,param6);
            if(_loc7_ || param1)
            {
               §§goto(addr40);
            }
            §§goto(addr55);
         }
         addr40:
         this.§^!l§ = param2;
         if(_loc7_)
         {
            this.§3y§ = param3;
            if(_loc7_ || param3)
            {
               addr55:
               this.component = param4;
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §;!0§(type,this.§^!l§,this.§3y§,this.component,bubbles,cancelable);
      }
   }
}
