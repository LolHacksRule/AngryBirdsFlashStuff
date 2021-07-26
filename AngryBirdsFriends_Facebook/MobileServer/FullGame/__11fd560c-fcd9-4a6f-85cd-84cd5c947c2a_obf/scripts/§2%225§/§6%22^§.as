package §2"5§
{
   import flash.events.Event;
   
   public class §6"^§ extends Event
   {
      
      public static var §^#z§:String = "NotEnoughCoinsClosedEvent";
      
      public static var §3!<§:String = "PurchaseCompletedEvent";
      
      public static var §<!1§:String = "PurchaseFailedEvent";
       
      
      private var §!#X§:String = "";
      
      public function §6"^§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§!#X§ = param2;
      }
      
      public function get §!"-§() : String
      {
         return this.§!#X§;
      }
   }
}
