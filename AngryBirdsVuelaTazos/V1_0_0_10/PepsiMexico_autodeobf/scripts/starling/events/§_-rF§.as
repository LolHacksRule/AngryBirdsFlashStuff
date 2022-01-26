package starling.events
{
   public class §_-rF§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-NR§:int;
      
      private var §_-F0§:int;
      
      public function §_-rF§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§_-NR§ = param2;
         this.§_-F0§ = param3;
      }
      
      public function get width() : int
      {
         return this.§_-NR§;
      }
      
      public function get height() : int
      {
         return this.§_-F0§;
      }
   }
}
