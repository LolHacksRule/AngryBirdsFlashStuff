package starling.events
{
   public class §]!E§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §9Q§:int;
      
      private var §9p§:int;
      
      public function §]!E§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§9Q§ = param2;
         this.§9p§ = param3;
      }
      
      public function get width() : int
      {
         return this.§9Q§;
      }
      
      public function get height() : int
      {
         return this.§9p§;
      }
   }
}
