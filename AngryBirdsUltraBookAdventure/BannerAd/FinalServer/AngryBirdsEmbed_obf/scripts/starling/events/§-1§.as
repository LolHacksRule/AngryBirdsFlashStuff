package starling.events
{
   public class §-1§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var § l§:int;
      
      private var §4N§:int;
      
      public function §-1§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§ l§ = param2;
         this.§4N§ = param3;
      }
      
      public function get width() : int
      {
         return this.§ l§;
      }
      
      public function get height() : int
      {
         return this.§4N§;
      }
   }
}
