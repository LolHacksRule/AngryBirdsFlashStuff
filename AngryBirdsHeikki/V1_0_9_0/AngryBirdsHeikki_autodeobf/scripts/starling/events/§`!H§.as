package starling.events
{
   public class §`!H§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §>5§:int;
      
      private var §`!I§:int;
      
      public function §`!H§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§>5§ = param2;
         this.§`!I§ = param3;
      }
      
      public function get width() : int
      {
         return this.§>5§;
      }
      
      public function get height() : int
      {
         return this.§`!I§;
      }
   }
}
