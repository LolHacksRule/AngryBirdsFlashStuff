package §+"E§
{
   import flash.events.Event;
   
   public class §+Q§ extends Event
   {
      
      public static var §2M§:String = "NotEnoughCoinsClosedEvent";
      
      public static var §=<§:String = "PurchaseCompletedEvent";
      
      public static var §["<§:String = "PurchaseFailedEvent";
       
      
      private var §7$,§:String = "";
      
      public function §+Q§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§7$,§ = param2;
      }
      
      public function get §3#=§() : String
      {
         return this.§7$,§;
      }
   }
}
