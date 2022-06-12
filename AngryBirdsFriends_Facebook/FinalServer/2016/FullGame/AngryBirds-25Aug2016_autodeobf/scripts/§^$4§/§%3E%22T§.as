package §^$4§
{
   import §?"R§.WarningPopup;
   import flash.events.Event;
   
   public class §>"T§ extends Event
   {
      
      public static const §>"d§:String = "itemBought";
      
      public static const §3#-§:String = "itemBoughtPremiumCurrency";
      
      public static const §-b§:String = "itemBoughtFailed";
       
      
      public var changedItems:Array;
      
      private var §!t§:Number = 0;
      
      private var §+# §:String;
      
      public function §>"T§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Array = null, param5:Number = 0)
      {
         super(param1,param2,param3);
         this.changedItems = param4;
         this.§!t§ = param5;
      }
      
      public function get errorCode() : Number
      {
         return this.§!t§;
      }
      
      public function get errorMessage() : String
      {
         switch(this.§!t§)
         {
            case 3001:
               return "Payment has failed. Transaction cannot be completed.";
            case 3002:
               return "Payment has been initiated but not completed. Transaction will be processed when payment is complete.";
            default:
               return WarningPopup.§8!a§;
         }
      }
      
      public function get §9!]§() : String
      {
         switch(this.§!t§)
         {
            case 3001:
               return "Payment Failed";
            case 3002:
               return "Payment Initiated";
            default:
               return WarningPopup.§?!I§;
         }
      }
   }
}
