package starling.events
{
   public class §@!'§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §'o§:int;
      
      private var §+L§:int;
      
      public function §@!'§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§'o§ = param2;
         this.§+L§ = param3;
      }
      
      public function get width() : int
      {
         return this.§'o§;
      }
      
      public function get height() : int
      {
         return this.§+L§;
      }
   }
}
