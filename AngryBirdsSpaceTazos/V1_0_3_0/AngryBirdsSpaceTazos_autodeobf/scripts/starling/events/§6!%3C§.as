package starling.events
{
   public class §6!<§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §'!K§:int;
      
      private var §%O§:int;
      
      public function §6!<§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§'!K§ = param2;
         this.§%O§ = param3;
      }
      
      public function get width() : int
      {
         return this.§'!K§;
      }
      
      public function get height() : int
      {
         return this.§%O§;
      }
   }
}
