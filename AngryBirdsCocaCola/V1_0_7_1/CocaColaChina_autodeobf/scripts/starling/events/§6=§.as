package starling.events
{
   public class §6=§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §8a§:int;
      
      private var §[K§:int;
      
      public function §6=§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§8a§ = param2;
         this.§[K§ = param3;
      }
      
      public function get width() : int
      {
         return this.§8a§;
      }
      
      public function get height() : int
      {
         return this.§[K§;
      }
   }
}
