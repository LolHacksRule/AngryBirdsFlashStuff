package starling.events
{
   public class §`S§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §`!S§:int;
      
      private var §]n§:int;
      
      public function §`S§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§`!S§ = param2;
         this.§]n§ = param3;
      }
      
      public function get width() : int
      {
         return this.§`!S§;
      }
      
      public function get height() : int
      {
         return this.§]n§;
      }
   }
}
