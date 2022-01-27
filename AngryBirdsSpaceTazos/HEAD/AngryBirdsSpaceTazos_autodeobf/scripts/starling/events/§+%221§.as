package starling.events
{
   public class §+"1§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §]!d§:int;
      
      private var §!"-§:int;
      
      public function §+"1§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§]!d§ = param2;
         this.§!"-§ = param3;
      }
      
      public function get width() : int
      {
         return this.§]!d§;
      }
      
      public function get height() : int
      {
         return this.§!"-§;
      }
   }
}
