package §^$4§
{
   import flash.events.Event;
   
   public class §4I§ extends Event
   {
      
      public static const §`!M§:String = "item_redeem_completed";
      
      public static const § !,§:String = "item_redeem_failed";
      
      public static const §do§:String = "item_redeem_user_cancelled";
       
      
      private var §5"V§:Number = 0;
      
      public function §4I§(param1:String, param2:Number = 0, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§5"V§ = param2;
      }
      
      public function get quantity() : Number
      {
         return this.§5"V§;
      }
   }
}
