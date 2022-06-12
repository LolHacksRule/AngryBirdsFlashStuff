package §,V§
{
   import §2!i§.§'M§;
   import flash.events.Event;
   
   public class §'"5§ extends Event
   {
      
      public static const §#2§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#2§ = "onUiInteraction";
         }
      }
      
      public var §"!k§:int;
      
      public var §[2§:String;
      
      public var §1!`§:§'M§;
      
      public function §'"5§(param1:String, param2:int, param3:String, param4:§'M§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param5,param6);
         }
         loop0:
         while(true)
         {
            this.§"!k§ = param2;
            while(true)
            {
               this.§[2§ = param3;
               while(_loc8_)
               {
                  continue loop0;
                  this.§1!`§ = param4;
                  if(_loc8_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §'"5§(type,this.§"!k§,this.§[2§,this.§1!`§,bubbles,cancelable);
      }
   }
}
