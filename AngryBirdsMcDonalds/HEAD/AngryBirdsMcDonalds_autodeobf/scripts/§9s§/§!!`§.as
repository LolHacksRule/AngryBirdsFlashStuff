package §9s§
{
   import §@-§.§[y§;
   import flash.events.Event;
   
   public class §!!`§ extends Event
   {
      
      public static const §5!R§:String = "onUiInteraction";
       
      
      public var §[K§:int;
      
      public var §3x§:String;
      
      public var §,a§:§[y§;
      
      public function §!!`§(param1:String, param2:int, param3:String, param4:§[y§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§[K§ = param2;
         this.§3x§ = param3;
         this.§,a§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §!!`§(type,this.§[K§,this.§3x§,this.§,a§,bubbles,cancelable);
      }
   }
}
