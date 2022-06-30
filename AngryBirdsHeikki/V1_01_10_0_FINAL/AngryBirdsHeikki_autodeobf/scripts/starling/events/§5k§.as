package starling.events
{
   public class §5k§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §@!-§:int;
      
      private var §3S§:int;
      
      public function §5k§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§@!-§ = param2;
         this.§3S§ = param3;
      }
      
      public function get width() : int
      {
         return this.§@!-§;
      }
      
      public function get height() : int
      {
         return this.§3S§;
      }
   }
}
