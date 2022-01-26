package starling.events
{
   public class §0!Z§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §^S§:int;
      
      private var §6-§:int;
      
      public function §0!Z§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§^S§ = param2;
         this.§6-§ = param3;
      }
      
      public function get width() : int
      {
         return this.§^S§;
      }
      
      public function get height() : int
      {
         return this.§6-§;
      }
   }
}
