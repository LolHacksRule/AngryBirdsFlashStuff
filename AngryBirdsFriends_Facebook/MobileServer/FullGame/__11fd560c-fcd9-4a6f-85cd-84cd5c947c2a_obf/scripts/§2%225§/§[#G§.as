package §2"5§
{
   import flash.events.Event;
   
   public class §[#G§ extends Event
   {
      
      public static const §@!B§:String = "item_redeem_completed";
      
      public static const §!"§:String = "item_redeem_failed";
      
      public static const §7!#§:String = "item_redeem_user_cancelled";
       
      
      private var §]@§:Number = 0;
      
      public function §[#G§(param1:String, param2:Number = 0, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§]@§ = param2;
      }
      
      public function get quantity() : Number
      {
         return this.§]@§;
      }
   }
}
