package §2b§
{
   import flash.events.Event;
   
   public class §^m§ extends Event
   {
      
      public static const §&!8§:String = "onBuyItemClicked";
       
      
      public var §8"?§:String;
      
      public function §^m§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         this.§8"?§ = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §^m§(type,this.§8"?§,bubbles,cancelable);
      }
   }
}
