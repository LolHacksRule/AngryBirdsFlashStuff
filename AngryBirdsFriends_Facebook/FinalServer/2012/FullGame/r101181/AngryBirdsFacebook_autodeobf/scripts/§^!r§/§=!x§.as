package §^!r§
{
   import flash.events.Event;
   
   public class §=!x§ extends Event
   {
      
      public static const §!m§:String = "onBuyItemClicked";
       
      
      public var §5!c§:String;
      
      public function §=!x§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         this.§5!c§ = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §=!x§(type,this.§5!c§,bubbles,cancelable);
      }
   }
}
