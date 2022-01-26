package starling.events
{
   public class §_-V2§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-a9§:int;
      
      private var §_-7y§:int;
      
      public function §_-V2§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§_-a9§ = param2;
         this.§_-7y§ = param3;
      }
      
      public function get width() : int
      {
         return this.§_-a9§;
      }
      
      public function get height() : int
      {
         return this.§_-7y§;
      }
   }
}
