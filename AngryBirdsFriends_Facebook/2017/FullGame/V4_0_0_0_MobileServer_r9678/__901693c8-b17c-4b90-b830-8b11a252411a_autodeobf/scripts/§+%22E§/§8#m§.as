package §+"E§
{
   import flash.events.Event;
   
   public class §8#m§ extends Event
   {
      
      public static const §,#y§:String = "item_redeem_completed";
      
      public static const §?E§:String = "item_redeem_failed";
      
      public static const §`y§:String = "item_redeem_user_cancelled";
       
      
      private var §&#r§:Number = 0;
      
      public function §8#m§(param1:String, param2:Number = 0, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§&#r§ = param2;
      }
      
      public function get quantity() : Number
      {
         return this.§&#r§;
      }
   }
}
