package starling.events
{
   public class §6c§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §7!T§:int;
      
      private var §>w§:int;
      
      public function §6c§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§7!T§ = param2;
         this.§>w§ = param3;
      }
      
      public function get width() : int
      {
         return this.§7!T§;
      }
      
      public function get height() : int
      {
         return this.§>w§;
      }
   }
}
