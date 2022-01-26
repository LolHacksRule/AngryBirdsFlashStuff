package starling.events
{
   public class § 5§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §>Q§:Number;
      
      public function § 5§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§>Q§ = param2;
      }
      
      public function get §,!I§() : Number
      {
         return this.§>Q§;
      }
   }
}
