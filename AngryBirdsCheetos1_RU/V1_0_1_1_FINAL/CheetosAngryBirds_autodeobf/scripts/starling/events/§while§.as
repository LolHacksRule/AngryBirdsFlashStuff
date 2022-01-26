package starling.events
{
   public class §while§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §=!T§:int;
      
      private var §&n§:int;
      
      public function §while§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§=!T§ = param2;
         this.§&n§ = param3;
      }
      
      public function get width() : int
      {
         return this.§=!T§;
      }
      
      public function get height() : int
      {
         return this.§&n§;
      }
   }
}
