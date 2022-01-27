package §?4§
{
   import §@!&§.§'!o§;
   import flash.events.Event;
   
   public class §5D§ extends Event
   {
      
      public static const §5=§:String = "onUiInteraction";
       
      
      public var §]!6§:int;
      
      public var §1!>§:String;
      
      public var §4!q§:§'!o§;
      
      public function §5D§(param1:String, param2:int, param3:String, param4:§'!o§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§]!6§ = param2;
         this.§1!>§ = param3;
         this.§4!q§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §5D§(type,this.§]!6§,this.§1!>§,this.§4!q§,bubbles,cancelable);
      }
   }
}
