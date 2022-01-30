package starling.events
{
   public class §2b§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §<!"§:int;
      
      private var §50§:int;
      
      public function §2b§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§<!"§ = param2;
         this.§50§ = param3;
      }
      
      public function get width() : int
      {
         return this.§<!"§;
      }
      
      public function get height() : int
      {
         return this.§50§;
      }
   }
}
