package starling.events
{
   public class §_-Ti§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §_-Yo§:Number;
      
      public function §_-Ti§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§_-Yo§ = param2;
      }
      
      public function get passedTime() : Number
      {
         return this.§_-Yo§;
      }
   }
}
