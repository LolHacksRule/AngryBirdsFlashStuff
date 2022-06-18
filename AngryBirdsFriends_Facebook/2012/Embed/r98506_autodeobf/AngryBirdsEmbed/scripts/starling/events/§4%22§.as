package starling.events
{
   public class §4"§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §<!3§:int;
      
      private var §5u§:int;
      
      public function §4"§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§<!3§ = param2;
         this.§5u§ = param3;
      }
      
      public function get width() : int
      {
         return this.§<!3§;
      }
      
      public function get height() : int
      {
         return this.§5u§;
      }
   }
}
