package starling.events
{
   public class §_-8q§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §_-ih§:Number;
      
      public function §_-8q§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§_-ih§ = param2;
      }
      
      public function get passedTime() : Number
      {
         return this.§_-ih§;
      }
   }
}
