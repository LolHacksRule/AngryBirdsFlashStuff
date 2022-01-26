package starling.events
{
   public class §_-Nw§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §_-or§:Number;
      
      public function §_-Nw§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§_-or§ = param2;
      }
      
      public function get passedTime() : Number
      {
         return this.§_-or§;
      }
   }
}
