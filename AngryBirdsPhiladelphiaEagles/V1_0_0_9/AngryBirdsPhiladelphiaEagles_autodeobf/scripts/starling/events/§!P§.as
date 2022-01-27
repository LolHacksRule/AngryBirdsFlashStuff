package starling.events
{
   public class §!P§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §0!A§:int;
      
      private var §3>§:int;
      
      public function §!P§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§0!A§ = param2;
         this.§3>§ = param3;
      }
      
      public function get width() : int
      {
         return this.§0!A§;
      }
      
      public function get height() : int
      {
         return this.§3>§;
      }
   }
}
