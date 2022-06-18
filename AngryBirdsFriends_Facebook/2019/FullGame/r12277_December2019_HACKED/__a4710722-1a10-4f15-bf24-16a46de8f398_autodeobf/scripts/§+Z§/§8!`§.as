package §+Z§
{
   import flash.events.Event;
   
   public class §8!`§ extends Event
   {
      
      public static const §>#t§:String = "item_redeem_completed";
      
      public static const §33§:String = "item_redeem_failed";
      
      public static const §@,§:String = "item_redeem_user_cancelled";
       
      
      private var § >§:Number = 0;
      
      public function §8!`§(param1:String, param2:Number = 0, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§ >§ = param2;
      }
      
      public function get quantity() : Number
      {
         return this.§ >§;
      }
   }
}
