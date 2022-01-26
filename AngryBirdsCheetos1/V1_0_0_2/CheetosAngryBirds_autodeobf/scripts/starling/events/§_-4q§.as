package starling.events
{
   public class §_-4q§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §_-bM§:Number;
      
      public function §_-4q§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§_-bM§ = param2;
      }
      
      public function get passedTime() : Number
      {
         return this.§_-bM§;
      }
   }
}
