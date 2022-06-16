package §?V§
{
   import flash.events.Event;
   
   public class §6!P§ extends Event
   {
      
      public static const §#!"§:String = "onBuyItemClicked";
       
      
      public var §"i§:String;
      
      public function §6!P§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         this.§"i§ = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §6!P§(type,this.§"i§,bubbles,cancelable);
      }
   }
}
