package §^$4§
{
   import flash.events.Event;
   
   public class §2#I§ extends Event
   {
      
      public static var §8"'§:String = "NotEnoughCoinsClosedEvent";
      
      public static var §-"`§:String = "PurchaseCompletedEvent";
      
      public static var §#!F§:String = "PurchaseFailedEvent";
       
      
      private var §=#H§:String = "";
      
      public function §2#I§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§=#H§ = param2;
      }
      
      public function get §4$9§() : String
      {
         return this.§=#H§;
      }
   }
}
