package starling.events
{
   public class §3`§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §,E§:int;
      
      private var §4X§:int;
      
      public function §3`§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§,E§ = param2;
         this.§4X§ = param3;
      }
      
      public function get width() : int
      {
         return this.§,E§;
      }
      
      public function get height() : int
      {
         return this.§4X§;
      }
   }
}
