package §5"c§
{
   import §?!N§.WarningPopup;
   import flash.events.Event;
   
   public class §8K§ extends Event
   {
      
      public static const §`#y§:String = "itemBought";
      
      public static const § ",§:String = "itemBoughtPremiumCurrency";
      
      public static const §<"&§:String = "itemBoughtFailed";
       
      
      public var changedItems:Array;
      
      private var §<"G§:Number = 0;
      
      private var §3$§:String;
      
      public function §8K§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Array = null, param5:Number = 0)
      {
         super(param1,param2,param3);
         this.changedItems = param4;
         this.§<"G§ = param5;
      }
      
      public function get errorCode() : Number
      {
         return this.§<"G§;
      }
      
      public function get errorMessage() : String
      {
         switch(this.§<"G§)
         {
            case 3001:
               return "Payment has failed. Transaction cannot be completed.";
            case 3002:
               return "Payment has been initiated but not completed. Transaction will be processed when payment is complete.";
            default:
               return WarningPopup.§>$9§;
         }
      }
      
      public function get § $1§() : String
      {
         switch(this.§<"G§)
         {
            case 3001:
               return "Payment Failed";
            case 3002:
               return "Payment Initiated";
            default:
               return WarningPopup.§,$9§;
         }
      }
   }
}
