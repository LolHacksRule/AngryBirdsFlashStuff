package starling.events
{
   public class §4!c§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §"!R§:int;
      
      private var §0[§:int;
      
      public function §4!c§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§"!R§ = param2;
         this.§0[§ = param3;
      }
      
      public function get width() : int
      {
         return this.§"!R§;
      }
      
      public function get height() : int
      {
         return this.§0[§;
      }
   }
}
