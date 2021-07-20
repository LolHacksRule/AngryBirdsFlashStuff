package starling.events
{
   public class §5z§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §@S§:int;
      
      private var §1!U§:int;
      
      public function §5z§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§@S§ = param2;
         this.§1!U§ = param3;
      }
      
      public function get width() : int
      {
         return this.§@S§;
      }
      
      public function get height() : int
      {
         return this.§1!U§;
      }
   }
}
