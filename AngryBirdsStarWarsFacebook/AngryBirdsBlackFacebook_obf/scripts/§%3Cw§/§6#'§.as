package §<w§
{
   import §;"Y§.§&#X§;
   import flash.events.Event;
   
   public class §6#'§ extends Event
   {
      
      public static const §+!>§:String = "ui_interaction";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+!>§ = "ui_interaction";
         }
      }
      
      public var §@#8§:int;
      
      public var §=!k§:String;
      
      public var §^"r§:§&#X§;
      
      public function §6#'§(param1:String, param2:int, param3:String, param4:§&#X§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param5,param6);
            while(true)
            {
               this.§@#8§ = param2;
               addr30:
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               return;
               addr47:
            }
         }
         while(true)
         {
            this.§=!k§ = param3;
            while(!(_loc7_ && param3))
            {
               this.§^"r§ = param4;
               if(!_loc8_)
               {
                  continue;
               }
               §§goto(addr30);
            }
         }
         §§goto(addr47);
      }
      
      override public function clone() : Event
      {
         return new §6#'§(type,this.§@#8§,this.§=!k§,this.§^"r§,bubbles,cancelable);
      }
   }
}
