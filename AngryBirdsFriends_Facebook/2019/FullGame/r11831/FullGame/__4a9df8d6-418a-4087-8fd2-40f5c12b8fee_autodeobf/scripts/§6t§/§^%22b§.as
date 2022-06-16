package §6t§
{
   import flash.events.Event;
   
   public class §^"b§ extends Event
   {
      
      public static var §#]§:String = "NotEnoughCoinsClosedEvent";
      
      public static var §"&§:String = "PurchaseCompletedEvent";
      
      public static var §6$3§:String = "PurchaseFailedEvent";
       
      
      private var §6l§:String = "";
      
      public function §^"b§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§6l§ = param2;
      }
      
      public function get §6#l§() : String
      {
         return this.§6l§;
      }
   }
}
