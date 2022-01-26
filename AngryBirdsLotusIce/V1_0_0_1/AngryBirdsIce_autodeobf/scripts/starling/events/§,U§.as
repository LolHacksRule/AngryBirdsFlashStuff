package starling.events
{
   public class §,U§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §6#§:int;
      
      private var §5m§:int;
      
      public function §,U§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§6#§ = param2;
         this.§5m§ = param3;
      }
      
      public function get width() : int
      {
         return this.§6#§;
      }
      
      public function get height() : int
      {
         return this.§5m§;
      }
   }
}
