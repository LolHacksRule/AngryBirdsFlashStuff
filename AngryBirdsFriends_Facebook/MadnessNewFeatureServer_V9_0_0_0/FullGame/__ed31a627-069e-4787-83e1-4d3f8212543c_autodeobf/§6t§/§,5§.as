package §6t§
{
   import flash.events.Event;
   
   public class §,5§ extends Event
   {
      
      public static const §?C§:String = "item_redeem_completed";
      
      public static const §]#=§:String = "item_redeem_failed";
      
      public static const §8"L§:String = "item_redeem_user_cancelled";
       
      
      private var § set§:Number = 0;
      
      public function §,5§(param1:String, param2:Number = 0, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§ set§ = param2;
      }
      
      public function get quantity() : Number
      {
         return this.§ set§;
      }
   }
}
