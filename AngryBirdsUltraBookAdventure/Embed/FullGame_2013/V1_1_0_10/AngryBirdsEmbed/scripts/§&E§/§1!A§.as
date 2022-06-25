package §&E§
{
   import §0!#§.§-P§;
   import flash.events.Event;
   
   public class §1!A§ extends Event
   {
      
      public static const §@!&§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@!&§ = "onUiInteraction";
         }
      }
      
      public var §`<§:int;
      
      public var § !6§:String;
      
      public var §]!F§:§-P§;
      
      public function §1!A§(param1:String, param2:int, param3:String, param4:§-P§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param1,param5,param6);
            if(!_loc8_)
            {
               this.§`<§ = param2;
               if(_loc7_ || param1)
               {
                  this.§ !6§ = param3;
                  if(!_loc8_)
                  {
                     this.§]!F§ = param4;
                  }
               }
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §1!A§(type,this.§`<§,this.§ !6§,this.§]!F§,bubbles,cancelable);
      }
   }
}
