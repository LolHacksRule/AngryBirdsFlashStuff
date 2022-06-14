package starling.events
{
   public class §4=§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §`w§:int;
      
      private var §%m§:int;
      
      public function §4=§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§`w§ = param2;
         this.§%m§ = param3;
      }
      
      public function get width() : int
      {
         return this.§`w§;
      }
      
      public function get height() : int
      {
         return this.§%m§;
      }
   }
}
