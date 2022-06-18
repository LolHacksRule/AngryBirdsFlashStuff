package starling.events
{
   public class § x§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §!!V§:int;
      
      private var §!`§:int;
      
      public function § x§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§!!V§ = param2;
         this.§!`§ = param3;
      }
      
      public function get width() : int
      {
         return this.§!!V§;
      }
      
      public function get height() : int
      {
         return this.§!`§;
      }
   }
}
