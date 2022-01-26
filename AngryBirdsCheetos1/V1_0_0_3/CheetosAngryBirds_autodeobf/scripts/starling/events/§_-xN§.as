package starling.events
{
   public class §_-xN§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-LO§:int;
      
      private var §_-Fy§:int;
      
      public function §_-xN§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§_-LO§ = param2;
         this.§_-Fy§ = param3;
      }
      
      public function get width() : int
      {
         return this.§_-LO§;
      }
      
      public function get height() : int
      {
         return this.§_-Fy§;
      }
   }
}
