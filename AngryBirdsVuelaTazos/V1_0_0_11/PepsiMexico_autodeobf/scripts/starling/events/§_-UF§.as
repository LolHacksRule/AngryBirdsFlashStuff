package starling.events
{
   public class §_-UF§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §_-gz§:Number;
      
      public function §_-UF§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§_-gz§ = param2;
      }
      
      public function get passedTime() : Number
      {
         return this.§_-gz§;
      }
   }
}
