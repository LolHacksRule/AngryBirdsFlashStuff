package starling.events
{
   public class §=T§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §!0§:int;
      
      private var §+K§:int;
      
      public function §=T§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§!0§ = param2;
         this.§+K§ = param3;
      }
      
      public function get width() : int
      {
         return this.§!0§;
      }
      
      public function get height() : int
      {
         return this.§+K§;
      }
   }
}
