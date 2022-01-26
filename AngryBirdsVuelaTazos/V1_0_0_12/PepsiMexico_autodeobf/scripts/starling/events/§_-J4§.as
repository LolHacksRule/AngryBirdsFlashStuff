package starling.events
{
   public class §_-J4§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-Fy§:int;
      
      private var §_-XU§:int;
      
      public function §_-J4§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§_-Fy§ = param2;
         this.§_-XU§ = param3;
      }
      
      public function get width() : int
      {
         return this.§_-Fy§;
      }
      
      public function get height() : int
      {
         return this.§_-XU§;
      }
   }
}
