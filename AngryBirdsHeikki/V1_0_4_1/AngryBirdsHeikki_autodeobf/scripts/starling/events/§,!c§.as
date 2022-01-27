package starling.events
{
   public class §,!c§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §]2§:int;
      
      private var §?R§:int;
      
      public function §,!c§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§]2§ = param2;
         this.§?R§ = param3;
      }
      
      public function get width() : int
      {
         return this.§]2§;
      }
      
      public function get height() : int
      {
         return this.§?R§;
      }
   }
}
