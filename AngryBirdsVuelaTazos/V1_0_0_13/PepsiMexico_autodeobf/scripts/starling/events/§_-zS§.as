package starling.events
{
   public class §_-zS§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §_-2o§:Number;
      
      public function §_-zS§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§_-2o§ = param2;
      }
      
      public function get passedTime() : Number
      {
         return this.§_-2o§;
      }
   }
}
