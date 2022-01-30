package starling.events
{
   public class §`!%§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §`!p§:int;
      
      private var §<c§:int;
      
      public function §`!%§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§`!p§ = param2;
         this.§<c§ = param3;
      }
      
      public function get width() : int
      {
         return this.§`!p§;
      }
      
      public function get height() : int
      {
         return this.§<c§;
      }
   }
}
