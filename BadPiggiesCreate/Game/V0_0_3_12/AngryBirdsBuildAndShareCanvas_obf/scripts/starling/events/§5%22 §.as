package starling.events
{
   public class §5" § extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §%w§:int;
      
      private var §-N§:int;
      
      public function §5" §(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§%w§ = param2;
         this.§-N§ = param3;
      }
      
      public function get width() : int
      {
         return this.§%w§;
      }
      
      public function get height() : int
      {
         return this.§-N§;
      }
   }
}
