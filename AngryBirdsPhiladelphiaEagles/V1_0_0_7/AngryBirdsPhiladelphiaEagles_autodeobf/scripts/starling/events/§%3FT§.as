package starling.events
{
   public class §?T§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §@k§:int;
      
      private var §?&§:int;
      
      public function §?T§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§@k§ = param2;
         this.§?&§ = param3;
      }
      
      public function get width() : int
      {
         return this.§@k§;
      }
      
      public function get height() : int
      {
         return this.§?&§;
      }
   }
}
