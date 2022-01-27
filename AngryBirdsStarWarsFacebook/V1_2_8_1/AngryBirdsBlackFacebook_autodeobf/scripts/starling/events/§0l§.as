package starling.events
{
   public class §0l§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §0"e§:int;
      
      private var §?!O§:int;
      
      public function §0l§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§0"e§ = param2;
         this.§?!O§ = param3;
      }
      
      public function get width() : int
      {
         return this.§0"e§;
      }
      
      public function get height() : int
      {
         return this.§?!O§;
      }
   }
}
