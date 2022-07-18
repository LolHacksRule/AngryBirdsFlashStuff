package starling.events
{
   public class §7#-§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §6"?§:int;
      
      private var §[!4§:int;
      
      public function §7#-§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§6"?§ = param2;
         this.§[!4§ = param3;
      }
      
      public function get width() : int
      {
         return this.§6"?§;
      }
      
      public function get height() : int
      {
         return this.§[!4§;
      }
   }
}
