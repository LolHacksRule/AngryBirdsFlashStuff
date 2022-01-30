package starling.events
{
   public class §<!^§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §5!T§:int;
      
      private var §7X§:int;
      
      public function §<!^§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§5!T§ = param2;
         this.§7X§ = param3;
      }
      
      public function get width() : int
      {
         return this.§5!T§;
      }
      
      public function get height() : int
      {
         return this.§7X§;
      }
   }
}
