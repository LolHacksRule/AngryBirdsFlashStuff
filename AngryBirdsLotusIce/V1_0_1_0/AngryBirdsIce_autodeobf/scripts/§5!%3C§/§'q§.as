package §5!<§
{
   import §`W§.§-[§;
   import flash.events.Event;
   
   public class §'q§ extends Event
   {
      
      public static const §35§:String = "onUiInteraction";
       
      
      public var §0!1§:int;
      
      public var §]=§:String;
      
      public var §'3§:§-[§;
      
      public function §'q§(param1:String, param2:int, param3:String, param4:§-[§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§0!1§ = param2;
         this.§]=§ = param3;
         this.§'3§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §'q§(type,this.§0!1§,this.§]=§,this.§'3§,bubbles,cancelable);
      }
   }
}
