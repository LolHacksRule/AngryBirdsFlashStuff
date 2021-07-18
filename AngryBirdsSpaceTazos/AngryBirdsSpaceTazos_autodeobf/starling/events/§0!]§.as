package starling.events
{
   public class §0!]§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §<!f§:int;
      
      private var §8>§:int;
      
      public function §0!]§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§<!f§ = param2;
         this.§8>§ = param3;
      }
      
      public function get width() : int
      {
         return this.§<!f§;
      }
      
      public function get height() : int
      {
         return this.§8>§;
      }
   }
}
