package §?4§
{
   import §@!&§.§'!o§;
   import flash.events.Event;
   
   public class §5D§ extends Event
   {
      
      public static const §5=§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5=§ = "onUiInteraction";
         }
      }
      
      public var §]!6§:int;
      
      public var §1!>§:String;
      
      public var §4!q§:§'!o§;
      
      public function §5D§(param1:String, param2:int, param3:String, param4:§'!o§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param5,param6);
            while(true)
            {
               this.§]!6§ = param2;
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            this.§1!>§ = param3;
            do
            {
               this.§4!q§ = param4;
            }
            while(_loc8_ && param3);
            
            if(_loc7_ || this)
            {
               if(!_loc8_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function clone() : Event
      {
         return new §5D§(type,this.§]!6§,this.§1!>§,this.§4!q§,bubbles,cancelable);
      }
   }
}
