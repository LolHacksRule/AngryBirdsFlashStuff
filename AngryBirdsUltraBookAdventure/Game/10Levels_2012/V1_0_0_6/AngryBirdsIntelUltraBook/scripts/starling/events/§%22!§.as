package starling.events
{
   public class §"!§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §2!d§:int;
      
      private var §@@§:int;
      
      public function §"!§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§2!d§ = param2;
         this.§@@§ = param3;
      }
      
      public function get width() : int
      {
         return this.§2!d§;
      }
      
      public function get height() : int
      {
         return this.§@@§;
      }
   }
}
