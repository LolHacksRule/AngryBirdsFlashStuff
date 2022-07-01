package starling.events
{
   public class §8"!§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §9z§:int;
      
      private var §8#§:int;
      
      public function §8"!§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§9z§ = param2;
         this.§8#§ = param3;
      }
      
      public function get width() : int
      {
         return this.§9z§;
      }
      
      public function get height() : int
      {
         return this.§8#§;
      }
   }
}
