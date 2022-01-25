package §?8§
{
   import §&V§.§9t§;
   import flash.events.Event;
   
   public class §%!]§ extends Event
   {
      
      public static const §]V§:String = "onUiInteraction";
       
      
      public var §>N§:int;
      
      public var § !=§:String;
      
      public var §?E§:§9t§;
      
      public function §%!]§(param1:String, param2:int, param3:String, param4:§9t§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§>N§ = param2;
         this.§ !=§ = param3;
         this.§?E§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §%!]§(type,this.§>N§,this.§ !=§,this.§?E§,bubbles,cancelable);
      }
   }
}
