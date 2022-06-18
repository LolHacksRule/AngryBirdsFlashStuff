package §"J§
{
   import §7J§.§<!?§;
   import flash.events.Event;
   
   public class §7P§ extends Event
   {
      
      public static const §%9§:String = "onUiInteraction";
       
      
      public var §3!<§:int;
      
      public var §]G§:String;
      
      public var §&i§:§<!?§;
      
      public function §7P§(param1:String, param2:int, param3:String, param4:§<!?§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§3!<§ = param2;
         this.§]G§ = param3;
         this.§&i§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §7P§(type,this.§3!<§,this.§]G§,this.§&i§,bubbles,cancelable);
      }
   }
}
