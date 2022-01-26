package starling.events
{
   public class §4_§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §5I§:int;
      
      private var §1Q§:int;
      
      public function §4_§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§5I§ = param2;
         this.§1Q§ = param3;
      }
      
      public function get width() : int
      {
         return this.§5I§;
      }
      
      public function get height() : int
      {
         return this.§1Q§;
      }
   }
}
