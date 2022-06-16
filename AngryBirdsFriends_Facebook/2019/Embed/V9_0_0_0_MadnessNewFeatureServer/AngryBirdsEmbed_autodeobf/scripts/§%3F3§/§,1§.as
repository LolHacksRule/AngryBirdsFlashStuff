package §?3§
{
   import §]!=§.§;!6§;
   import flash.events.Event;
   
   public class §,1§ extends Event
   {
      
      public static const §[!F§:String = "onUiInteraction";
       
      
      public var § Q§:int;
      
      public var §'m§:String;
      
      public var § j§:§;!6§;
      
      public function §,1§(param1:String, param2:int, param3:String, param4:§;!6§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§ Q§ = param2;
         this.§'m§ = param3;
         this.§ j§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §,1§(type,this.§ Q§,this.§'m§,this.§ j§,bubbles,cancelable);
      }
   }
}
