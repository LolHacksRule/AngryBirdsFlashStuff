package starling.events
{
   public class §_-QY§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-sa§:int;
      
      private var §_-cr§:int;
      
      public function §_-QY§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§_-sa§ = param2;
         this.§_-cr§ = param3;
      }
      
      public function get width() : int
      {
         return this.§_-sa§;
      }
      
      public function get height() : int
      {
         return this.§_-cr§;
      }
   }
}
