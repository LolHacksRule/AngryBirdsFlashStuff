package starling.events
{
   public class §7x§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §^"t§:int;
      
      private var §`!y§:int;
      
      public function §7x§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§^"t§ = param2;
         this.§`!y§ = param3;
      }
      
      public function get width() : int
      {
         return this.§^"t§;
      }
      
      public function get height() : int
      {
         return this.§`!y§;
      }
   }
}
