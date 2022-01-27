package §]e§
{
   import §;!0§.§4!I§;
   import flash.events.Event;
   
   public class §&!U§ extends Event
   {
      
      public static const §^!b§:String = "onUiInteraction";
       
      
      public var §5!f§:int;
      
      public var §]!@§:String;
      
      public var §6!7§:§4!I§;
      
      public function §&!U§(param1:String, param2:int, param3:String, param4:§4!I§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§5!f§ = param2;
         this.§]!@§ = param3;
         this.§6!7§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §&!U§(type,this.§5!f§,this.§]!@§,this.§6!7§,bubbles,cancelable);
      }
   }
}
