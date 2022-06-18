package §8!5§
{
   import §0u§.§&]§;
   import flash.events.Event;
   
   public class § n§ extends Event
   {
      
      public static const § !!§:String = "onUiInteraction";
       
      
      public var §'!,§:int;
      
      public var §false§:String;
      
      public var §<!7§:§&]§;
      
      public function § n§(param1:String, param2:int, param3:String, param4:§&]§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§'!,§ = param2;
         this.§false§ = param3;
         this.§<!7§ = param4;
      }
      
      override public function clone() : Event
      {
         return new § n§(type,this.§'!,§,this.§false§,this.§<!7§,bubbles,cancelable);
      }
   }
}
