package starling.events
{
   public class §6"3§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §>!b§:Number;
      
      public function §6"3§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§>!b§ = param2;
      }
      
      public function get §4"!§() : Number
      {
         return this.§>!b§;
      }
   }
}
