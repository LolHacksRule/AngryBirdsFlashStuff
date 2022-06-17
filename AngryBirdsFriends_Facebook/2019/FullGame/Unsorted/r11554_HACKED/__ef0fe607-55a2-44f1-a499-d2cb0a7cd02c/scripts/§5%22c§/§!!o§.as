package §5"c§
{
   import flash.events.Event;
   
   public class §!!o§ extends Event
   {
      
      public static const §?O§:String = "item_redeem_completed";
      
      public static const §[!]§:String = "item_redeem_failed";
      
      public static const §"#X§:String = "item_redeem_user_cancelled";
       
      
      private var §%#0§:Number = 0;
      
      public function §!!o§(param1:String, param2:Number = 0, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§%#0§ = param2;
      }
      
      public function get quantity() : Number
      {
         return this.§%#0§;
      }
   }
}
