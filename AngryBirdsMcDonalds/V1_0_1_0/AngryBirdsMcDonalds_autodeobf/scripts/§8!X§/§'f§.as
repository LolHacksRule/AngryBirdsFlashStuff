package §8!X§
{
   import §-1§.§%#§;
   import flash.events.Event;
   
   public class §'f§ extends Event
   {
      
      public static const §5a§:String = "onUiInteraction";
       
      
      public var §7v§:int;
      
      public var §;!'§:String;
      
      public var §>!2§:§%#§;
      
      public function §'f§(param1:String, param2:int, param3:String, param4:§%#§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§7v§ = param2;
         this.§;!'§ = param3;
         this.§>!2§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §'f§(type,this.§7v§,this.§;!'§,this.§>!2§,bubbles,cancelable);
      }
   }
}
