package §[#V§
{
   import §?Q§.WarningPopup;
   import flash.events.Event;
   
   public class §1!>§ extends Event
   {
      
      public static const §^#b§:String = "itemBought";
      
      public static const §#-§:String = "itemBoughtPremiumCurrency";
      
      public static const §6#!§:String = "itemBoughtFailed";
       
      
      public var changedItems:Array;
      
      private var §"c§:Number = 0;
      
      private var § "w§:String;
      
      public function §1!>§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Array = null, param5:Number = 0)
      {
         super(param1,param2,param3);
         this.changedItems = param4;
         this.§"c§ = param5;
      }
      
      public function get errorCode() : Number
      {
         return this.§"c§;
      }
      
      public function get errorMessage() : String
      {
         switch(this.§"c§)
         {
            case 3001:
               return "Payment has failed. Transaction cannot be completed.";
            case 3002:
               return "Payment has been initiated but not completed. Transaction will be processed when payment is complete.";
            default:
               return WarningPopup.§=#y§;
         }
      }
      
      public function get §^$6§() : String
      {
         switch(this.§"c§)
         {
            case 3001:
               return "Payment Failed";
            case 3002:
               return "Payment Initiated";
            default:
               return WarningPopup.§,S§;
         }
      }
   }
}
