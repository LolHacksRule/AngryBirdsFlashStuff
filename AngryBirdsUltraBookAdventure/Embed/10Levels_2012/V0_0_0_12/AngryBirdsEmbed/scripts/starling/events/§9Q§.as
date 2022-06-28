package starling.events
{
   public class §9Q§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §9p§:int;
      
      private var §9`§:int;
      
      public function §9Q§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§9p§ = param2;
         this.§9`§ = param3;
      }
      
      public function get width() : int
      {
         return this.§9p§;
      }
      
      public function get height() : int
      {
         return this.§9`§;
      }
   }
}
