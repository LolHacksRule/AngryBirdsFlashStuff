package starling.events
{
   public class §4!G§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §3!8§:int;
      
      private var §0!Q§:int;
      
      public function §4!G§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§3!8§ = param2;
         this.§0!Q§ = param3;
      }
      
      public function get width() : int
      {
         return this.§3!8§;
      }
      
      public function get height() : int
      {
         return this.§0!Q§;
      }
   }
}
