package starling.events
{
   public class §"!a§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §'n§:int;
      
      private var §+!#§:int;
      
      public function §"!a§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§'n§ = param2;
         this.§+!#§ = param3;
      }
      
      public function get width() : int
      {
         return this.§'n§;
      }
      
      public function get height() : int
      {
         return this.§+!#§;
      }
   }
}
