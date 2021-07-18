package starling.events
{
   public class §6C§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §^!I§:int;
      
      private var §,!X§:int;
      
      public function §6C§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§^!I§ = param2;
         this.§,!X§ = param3;
      }
      
      public function get width() : int
      {
         return this.§^!I§;
      }
      
      public function get height() : int
      {
         return this.§,!X§;
      }
   }
}
