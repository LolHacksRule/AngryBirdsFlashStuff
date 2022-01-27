package starling.events
{
   public class §1"A§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §2!j§:Number;
      
      public function §1"A§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§2!j§ = param2;
      }
      
      public function get §+q§() : Number
      {
         return this.§2!j§;
      }
   }
}
