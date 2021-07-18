package starling.events
{
   public class §_-fx§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §_-Ey§:Number;
      
      public function §_-fx§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§_-Ey§ = param2;
      }
      
      public function get passedTime() : Number
      {
         return this.§_-Ey§;
      }
   }
}
