package §2!<§
{
   import §7]§.§;T§;
   import flash.events.Event;
   
   public class §<!R§ extends Event
   {
      
      public static const §]!K§:String = "onUiInteraction";
       
      
      public var §+!P§:int;
      
      public var §;D§:String;
      
      public var §in§:§;T§;
      
      public function §<!R§(param1:String, param2:int, param3:String, param4:§;T§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§+!P§ = param2;
         this.§;D§ = param3;
         this.§in§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §<!R§(type,this.§+!P§,this.§;D§,this.§in§,bubbles,cancelable);
      }
   }
}
