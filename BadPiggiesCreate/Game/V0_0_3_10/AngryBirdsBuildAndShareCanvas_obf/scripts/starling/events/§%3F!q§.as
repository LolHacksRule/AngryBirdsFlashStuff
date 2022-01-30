package starling.events
{
   public class §?!q§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §4!z§:int;
      
      private var §@R§:int;
      
      public function §?!q§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§4!z§ = param2;
         this.§@R§ = param3;
      }
      
      public function get width() : int
      {
         return this.§4!z§;
      }
      
      public function get height() : int
      {
         return this.§@R§;
      }
   }
}
