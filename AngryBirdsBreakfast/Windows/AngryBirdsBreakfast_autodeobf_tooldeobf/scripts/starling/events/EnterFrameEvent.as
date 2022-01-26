package starling.events
{
   public class EnterFrameEvent extends Event
   {
      
      public static const ENTER_FRAME:String = "enterFrame";
       
      
      private var mPassedTime:Number;
      
      public function EnterFrameEvent(param1:String, param2:Number, param3:Boolean = false)
      {
         super(param1,param3);
         this.mPassedTime = param2;
      }
      
      public function get passedTime() : Number
      {
         return this.mPassedTime;
      }
   }
}
