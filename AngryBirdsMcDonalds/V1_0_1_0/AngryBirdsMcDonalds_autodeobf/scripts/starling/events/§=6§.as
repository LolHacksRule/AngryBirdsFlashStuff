package starling.events
{
   public class §=6§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §3F§:Number;
      
      public function §=6§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§3F§ = param2;
      }
      
      public function get §4!M§() : Number
      {
         return this.§3F§;
      }
   }
}
