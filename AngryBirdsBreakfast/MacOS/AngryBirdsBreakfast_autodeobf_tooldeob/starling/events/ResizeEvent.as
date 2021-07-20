package starling.events
{
   public class ResizeEvent extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var mWidth:int;
      
      private var mHeight:int;
      
      public function ResizeEvent(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.mWidth = param2;
         this.mHeight = param3;
      }
      
      public function get width() : int
      {
         return this.mWidth;
      }
      
      public function get height() : int
      {
         return this.mHeight;
      }
   }
}
