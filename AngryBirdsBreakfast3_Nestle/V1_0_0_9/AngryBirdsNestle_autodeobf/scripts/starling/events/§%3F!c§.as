package starling.events
{
   public class §?!c§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §5"5§:int;
      
      private var §"!i§:int;
      
      public function §?!c§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§5"5§ = param2;
         this.§"!i§ = param3;
      }
      
      public function get width() : int
      {
         return this.§5"5§;
      }
      
      public function get height() : int
      {
         return this.§"!i§;
      }
   }
}
