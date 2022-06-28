package starling.events
{
   public class §,f§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §'O§:int;
      
      private var §!!A§:int;
      
      public function §,f§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§'O§ = param2;
         this.§!!A§ = param3;
      }
      
      public function get width() : int
      {
         return this.§'O§;
      }
      
      public function get height() : int
      {
         return this.§!!A§;
      }
   }
}
