package starling.events
{
   public class §0%§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §+L§:int;
      
      private var §<!@§:int;
      
      public function §0%§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§+L§ = param2;
         this.§<!@§ = param3;
      }
      
      public function get width() : int
      {
         return this.§+L§;
      }
      
      public function get height() : int
      {
         return this.§<!@§;
      }
   }
}
