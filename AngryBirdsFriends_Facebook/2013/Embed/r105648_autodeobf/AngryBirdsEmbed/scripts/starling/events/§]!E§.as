package starling.events
{
   public class §]!E§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §<w§:int;
      
      private var §"!?§:int;
      
      public function §]!E§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§<w§ = param2;
         this.§"!?§ = param3;
      }
      
      public function get width() : int
      {
         return this.§<w§;
      }
      
      public function get height() : int
      {
         return this.§"!?§;
      }
   }
}
