package starling.events
{
   public class §7!<§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §?U§:int;
      
      private var §continue§:int;
      
      public function §7!<§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§?U§ = param2;
         this.§continue§ = param3;
      }
      
      public function get width() : int
      {
         return this.§?U§;
      }
      
      public function get height() : int
      {
         return this.§continue§;
      }
   }
}
