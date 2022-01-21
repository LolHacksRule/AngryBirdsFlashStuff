package §8T§
{
   import §3!R§.§81§;
   import flash.events.Event;
   
   public class §[!R§ extends Event
   {
      
      public static const §11§:String = "onUiInteraction";
       
      
      public var §2!n§:int;
      
      public var §+!b§:String;
      
      public var §?3§:§81§;
      
      public function §[!R§(param1:String, param2:int, param3:String, param4:§81§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§2!n§ = param2;
         this.§+!b§ = param3;
         this.§?3§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §[!R§(type,this.§2!n§,this.§+!b§,this.§?3§,bubbles,cancelable);
      }
   }
}
