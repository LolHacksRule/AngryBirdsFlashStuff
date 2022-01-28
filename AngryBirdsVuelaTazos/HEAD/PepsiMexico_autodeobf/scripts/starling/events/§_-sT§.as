package starling.events
{
   public class §_-sT§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-3Y§:int;
      
      private var §_-cy§:int;
      
      public function §_-sT§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§_-3Y§ = param2;
         this.§_-cy§ = param3;
      }
      
      public function get width() : int
      {
         return this.§_-3Y§;
      }
      
      public function get height() : int
      {
         return this.§_-cy§;
      }
   }
}
