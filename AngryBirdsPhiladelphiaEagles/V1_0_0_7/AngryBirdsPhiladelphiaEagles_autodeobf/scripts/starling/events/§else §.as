package starling.events
{
   public class §else § extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §-4§:Number;
      
      public function §else §(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§-4§ = param2;
      }
      
      public function get § <§() : Number
      {
         return this.§-4§;
      }
   }
}
