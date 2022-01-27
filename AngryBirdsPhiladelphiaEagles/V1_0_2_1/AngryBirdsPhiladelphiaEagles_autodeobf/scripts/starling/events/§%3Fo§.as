package starling.events
{
   public class §?o§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §0!4§:int;
      
      private var §0!$§:int;
      
      public function §?o§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§0!4§ = param2;
         this.§0!$§ = param3;
      }
      
      public function get width() : int
      {
         return this.§0!4§;
      }
      
      public function get height() : int
      {
         return this.§0!$§;
      }
   }
}
