package starling.events
{
   public class §50§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §=$§:int;
      
      private var §1T§:int;
      
      public function §50§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§=$§ = param2;
         this.§1T§ = param3;
      }
      
      public function get width() : int
      {
         return this.§=$§;
      }
      
      public function get height() : int
      {
         return this.§1T§;
      }
   }
}
