package §[!M§
{
   import §5f§.§]_§;
   import flash.events.Event;
   
   public class §"-§ extends Event
   {
      
      public static const §'>§:String = "onUiInteraction";
       
      
      public var §%!&§:int;
      
      public var §>!B§:String;
      
      public var §3!&§:§]_§;
      
      public function §"-§(param1:String, param2:int, param3:String, param4:§]_§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§%!&§ = param2;
         this.§>!B§ = param3;
         this.§3!&§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §"-§(type,this.§%!&§,this.§>!B§,this.§3!&§,bubbles,cancelable);
      }
   }
}
