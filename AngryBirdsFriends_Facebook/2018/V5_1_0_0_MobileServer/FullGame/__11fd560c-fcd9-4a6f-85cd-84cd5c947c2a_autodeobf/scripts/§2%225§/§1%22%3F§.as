package §2"5§
{
   import §?P§.WarningPopup;
   import flash.events.Event;
   
   public class §1"?§ extends Event
   {
      
      public static const §=#j§:String = "itemBought";
      
      public static const §7"^§:String = "itemBoughtPremiumCurrency";
      
      public static const §^#M§:String = "itemBoughtFailed";
       
      
      public var changedItems:Array;
      
      private var § "6§:Number = 0;
      
      private var §2$7§:String;
      
      public function §1"?§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Array = null, param5:Number = 0)
      {
         super(param1,param2,param3);
         this.changedItems = param4;
         this.§ "6§ = param5;
      }
      
      public function get errorCode() : Number
      {
         return this.§ "6§;
      }
      
      public function get errorMessage() : String
      {
         switch(this.§ "6§)
         {
            case 3001:
               return "Payment has failed. Transaction cannot be completed.";
            case 3002:
               return "Payment has been initiated but not completed. Transaction will be processed when payment is complete.";
            default:
               return WarningPopup.§!#,§;
         }
      }
      
      public function get §%C§() : String
      {
         switch(this.§ "6§)
         {
            case 3001:
               return "Payment Failed";
            case 3002:
               return "Payment Initiated";
            default:
               return WarningPopup.§6!k§;
         }
      }
   }
}
