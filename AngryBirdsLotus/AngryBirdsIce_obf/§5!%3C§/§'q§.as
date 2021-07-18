package §5!<§
{
   import §`W§.§-[§;
   import flash.events.Event;
   
   public class §'q§ extends Event
   {
      
      public static const §35§:String = "onUiInteraction";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §35§ = "onUiInteraction";
         }
      }
      
      public var §0!1§:int;
      
      public var §]=§:String;
      
      public var §'3§:§-[§;
      
      public function §'q§(param1:String, param2:int, param3:String, param4:§-[§, param5:Boolean = false, param6:Boolean = false)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param5,param6);
         }
         loop0:
         while(true)
         {
            this.§0!1§ = param2;
            do
            {
               this.§]=§ = param3;
               continue loop0;
            }
            while(!(_loc7_ || this));
            
            return;
         }
      }
      
      override public function clone() : Event
      {
         return new §'q§(type,this.§0!1§,this.§]=§,this.§'3§,bubbles,cancelable);
      }
   }
}
