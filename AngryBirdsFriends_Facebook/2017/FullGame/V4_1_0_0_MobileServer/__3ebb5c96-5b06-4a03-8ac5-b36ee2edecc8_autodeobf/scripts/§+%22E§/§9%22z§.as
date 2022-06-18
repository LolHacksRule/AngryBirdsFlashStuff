package §+"E§
{
   import § o§.WarningPopup;
   import flash.events.Event;
   
   public class §9"z§ extends Event
   {
      
      public static const §9$>§:String = "itemBought";
      
      public static const §2!c§:String = "itemBoughtPremiumCurrency";
      
      public static const §@H§:String = "itemBoughtFailed";
       
      
      public var changedItems:Array;
      
      private var §]"u§:Number = 0;
      
      private var §`#f§:String;
      
      public function §9"z§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Array = null, param5:Number = 0)
      {
         super(param1,param2,param3);
         this.changedItems = param4;
         this.§]"u§ = param5;
      }
      
      public function get errorCode() : Number
      {
         return this.§]"u§;
      }
      
      public function get errorMessage() : String
      {
         switch(this.§]"u§)
         {
            case 3001:
               return "Payment has failed. Transaction cannot be completed.";
            case 3002:
               return "Payment has been initiated but not completed. Transaction will be processed when payment is complete.";
            default:
               return WarningPopup.§<!e§;
         }
      }
      
      public function get §7$+§() : String
      {
         switch(this.§]"u§)
         {
            case 3001:
               return "Payment Failed";
            case 3002:
               return "Payment Initiated";
            default:
               return WarningPopup.§<$9§;
         }
      }
   }
}
