package starling.events
{
   public class §_-HA§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-ux§:int;
      
      private var §_-09f§:int;
      
      public function §_-HA§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§_-ux§ = param2;
         this.§_-09f§ = param3;
      }
      
      public function get width() : int
      {
         return this.§_-ux§;
      }
      
      public function get height() : int
      {
         return this.§_-09f§;
      }
   }
}
