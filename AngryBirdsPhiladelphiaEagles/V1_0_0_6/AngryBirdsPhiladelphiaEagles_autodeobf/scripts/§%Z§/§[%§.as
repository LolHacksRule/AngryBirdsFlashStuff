package §%Z§
{
   import §!!0§.§ true§;
   import flash.events.Event;
   
   public class §[%§ extends Event
   {
      
      public static const §'8§:String = "onUiInteraction";
       
      
      public var §?!6§:int;
      
      public var §%!5§:String;
      
      public var §54§:§ true§;
      
      public function §[%§(param1:String, param2:int, param3:String, param4:§ true§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§?!6§ = param2;
         this.§%!5§ = param3;
         this.§54§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §[%§(type,this.§?!6§,this.§%!5§,this.§54§,bubbles,cancelable);
      }
   }
}
