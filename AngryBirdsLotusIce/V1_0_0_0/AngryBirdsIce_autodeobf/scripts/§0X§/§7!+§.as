package §0X§
{
   import flash.events.Event;
   import §in§.§%K§;
   
   public class §7!+§ extends Event
   {
      
      public static const §95§:String = "onUiInteraction";
       
      
      public var §2$§:int;
      
      public var §2i§:String;
      
      public var §0Q§:§%K§;
      
      public function §7!+§(param1:String, param2:int, param3:String, param4:§%K§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§2$§ = param2;
         this.§2i§ = param3;
         this.§0Q§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §7!+§(type,this.§2$§,this.§2i§,this.§0Q§,bubbles,cancelable);
      }
   }
}
