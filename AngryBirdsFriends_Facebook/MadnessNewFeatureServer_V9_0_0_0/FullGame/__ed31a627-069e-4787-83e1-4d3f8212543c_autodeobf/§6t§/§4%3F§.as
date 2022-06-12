package §6t§
{
   import §>z§.WarningPopup;
   import flash.events.Event;
   
   public class §4?§ extends Event
   {
      
      public static const §?w§:String = "itemBought";
      
      public static const §3!b§:String = "itemBoughtPremiumCurrency";
      
      public static const §3$2§:String = "itemBoughtFailed";
       
      
      public var changedItems:Array;
      
      private var §8"?§:Number = 0;
      
      private var §<""§:String;
      
      public function §4?§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Array = null, param5:Number = 0)
      {
         super(param1,param2,param3);
         this.changedItems = param4;
         this.§8"?§ = param5;
      }
      
      public function get errorCode() : Number
      {
         return this.§8"?§;
      }
      
      public function get errorMessage() : String
      {
         switch(this.§8"?§)
         {
            case 3001:
               return "Payment has failed. Transaction cannot be completed.";
            case 3002:
               return "Payment has been initiated but not completed. Transaction will be processed when payment is complete.";
            default:
               return WarningPopup.§8!E§;
         }
      }
      
      public function get §5I§() : String
      {
         switch(this.§8"?§)
         {
            case 3001:
               return "Payment Failed";
            case 3002:
               return "Payment Initiated";
            default:
               return WarningPopup.§+#4§;
         }
      }
   }
}
