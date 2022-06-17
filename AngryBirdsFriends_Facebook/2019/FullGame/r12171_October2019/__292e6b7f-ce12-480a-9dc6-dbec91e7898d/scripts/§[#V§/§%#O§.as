package §[#V§
{
   import flash.events.Event;
   
   public class §%#O§ extends Event
   {
      
      public static var §!9§:String = "NotEnoughCoinsClosedEvent";
      
      public static var §!"m§:String = "PurchaseCompletedEvent";
      
      public static var §null §:String = "PurchaseFailedEvent";
       
      
      private var §>!g§:String = "";
      
      public function §%#O§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§>!g§ = param2;
      }
      
      public function get §^#z§() : String
      {
         return this.§>!g§;
      }
   }
}
