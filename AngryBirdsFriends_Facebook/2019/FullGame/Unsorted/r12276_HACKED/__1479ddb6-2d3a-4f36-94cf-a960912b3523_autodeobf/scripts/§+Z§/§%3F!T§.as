package §+Z§
{
   import § h§.WarningPopup;
   import flash.events.Event;
   
   public class §?!T§ extends Event
   {
      
      public static const §@!9§:String = "itemBought";
      
      public static const §0"Z§:String = "itemBoughtPremiumCurrency";
      
      public static const §'?§:String = "itemBoughtFailed";
       
      
      public var changedItems:Array;
      
      private var §`h§:Number = 0;
      
      private var §-$0§:String;
      
      public function §?!T§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Array = null, param5:Number = 0)
      {
         super(param1,param2,param3);
         this.changedItems = param4;
         this.§`h§ = param5;
      }
      
      public function get errorCode() : Number
      {
         return this.§`h§;
      }
      
      public function get errorMessage() : String
      {
         switch(this.§`h§)
         {
            case 3001:
               return "Payment has failed. Transaction cannot be completed.";
            case 3002:
               return "Payment has been initiated but not completed. Transaction will be processed when payment is complete.";
            default:
               return WarningPopup.§;g§;
         }
      }
      
      public function get §8!o§() : String
      {
         switch(this.§`h§)
         {
            case 3001:
               return "Payment Failed";
            case 3002:
               return "Payment Initiated";
            default:
               return WarningPopup.§!"2§;
         }
      }
   }
}
