package starling.events
{
   public class §"!]§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §""7§:int;
      
      private var §%>§:int;
      
      public function §"!]§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§""7§ = param2;
         this.§%>§ = param3;
      }
      
      public function get width() : int
      {
         return this.§""7§;
      }
      
      public function get height() : int
      {
         return this.§%>§;
      }
   }
}
