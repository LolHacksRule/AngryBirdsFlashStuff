package §[#V§
{
   import flash.events.Event;
   
   public class §>#!§ extends Event
   {
      
      public static const §@K§:String = "item_redeem_completed";
      
      public static const §<w§:String = "item_redeem_failed";
      
      public static const §0#J§:String = "item_redeem_user_cancelled";
       
      
      private var §3"M§:Number = 0;
      
      public function §>#!§(param1:String, param2:Number = 0, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§3"M§ = param2;
      }
      
      public function get quantity() : Number
      {
         return this.§3"M§;
      }
   }
}
