package starling.events
{
   public class §_-bA§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-aC§:int;
      
      private var §_-3v§:int;
      
      public function §_-bA§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§_-aC§ = param2;
         this.§_-3v§ = param3;
      }
      
      public function get width() : int
      {
         return this.§_-aC§;
      }
      
      public function get height() : int
      {
         return this.§_-3v§;
      }
   }
}
