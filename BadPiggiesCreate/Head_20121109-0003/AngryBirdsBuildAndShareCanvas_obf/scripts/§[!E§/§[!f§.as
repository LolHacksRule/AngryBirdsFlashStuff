package §[!E§
{
   import §@y§.§0=§;
   import flash.events.Event;
   
   public class §[!f§ extends Event
   {
      
      public static const §`h§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`h§ = "onUiInteraction";
         }
      }
      
      public var §4§:int;
      
      public var §'!5§:String;
      
      public var component:§0=§;
      
      public function §[!f§(param1:String, param2:int, param3:String, param4:§0=§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            super(param1,param5,param6);
            while(true)
            {
               this.§4§ = param2;
               while(!_loc7_)
               {
                  this.§'!5§ = param3;
                  while(_loc8_ || param2)
                  {
                     this.component = param4;
                     if(_loc8_)
                     {
                        return;
                        addr45:
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      override public function clone() : Event
      {
         return new §[!f§(type,this.§4§,this.§'!5§,this.component,bubbles,cancelable);
      }
   }
}
