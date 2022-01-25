package starling.events
{
   public class §>K§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §!n§:Number;
      
      public function §>K§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§!n§ = param2;
      }
      
      public function get §9!X§() : Number
      {
         return this.§!n§;
      }
   }
}
