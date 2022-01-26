package starling.events
{
   public class §_-cE§ extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var §_-9Q§:Number;
      
      public function §_-cE§(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.§_-9Q§ = param2;
      }
      
      public function get passedTime() : Number
      {
         return this.§_-9Q§;
      }
   }
}
