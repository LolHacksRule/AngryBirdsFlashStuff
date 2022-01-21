package §2!6§
{
   import §"%§.§,!n§;
   import flash.events.Event;
   
   public class §^"§ extends Event
   {
      
      public static const §'!2§:String = "onUiInteraction";
       
      
      public var §,$§:int;
      
      public var §[?§:String;
      
      public var §41§:§,!n§;
      
      public function §^"§(param1:String, param2:int, param3:String, param4:§,!n§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§,$§ = param2;
         this.§[?§ = param3;
         this.§41§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §^"§(type,this.§,$§,this.§[?§,this.§41§,bubbles,cancelable);
      }
   }
}
