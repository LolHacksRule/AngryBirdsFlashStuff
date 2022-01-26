package starling.events
{
   public class §_-uS§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-U0§:int;
      
      private var §_-bN§:int;
      
      public function §_-uS§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§_-U0§ = param2;
         this.§_-bN§ = param3;
      }
      
      public function get width() : int
      {
         return this.§_-U0§;
      }
      
      public function get height() : int
      {
         return this.§_-bN§;
      }
   }
}
