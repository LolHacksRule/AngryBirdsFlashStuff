package starling.events
{
   public class §_-TW§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §_-Bv§:Number;
      
      public function §_-TW§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§_-Bv§ = param2;
      }
      
      public function get passedTime() : Number
      {
         return this.§_-Bv§;
      }
   }
}
