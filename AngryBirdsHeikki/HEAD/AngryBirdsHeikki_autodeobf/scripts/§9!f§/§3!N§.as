package §9!f§
{
   import §+!M§.§7!0§;
   import flash.events.Event;
   
   public class §3!N§ extends Event
   {
      
      public static const §+<§:String = "onUiInteraction";
       
      
      public var §`!g§:int;
      
      public var §[t§:String;
      
      public var §^r§:§7!0§;
      
      public function §3!N§(param1:String, param2:int, param3:String, param4:§7!0§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§`!g§ = param2;
         this.§[t§ = param3;
         this.§^r§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §3!N§(type,this.§`!g§,this.§[t§,this.§^r§,bubbles,cancelable);
      }
   }
}
