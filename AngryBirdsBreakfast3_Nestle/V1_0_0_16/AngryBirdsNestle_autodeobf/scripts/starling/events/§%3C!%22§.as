package starling.events
{
   public class §<!"§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §!a§:int;
      
      private var §2!y§:int;
      
      public function §<!"§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§!a§ = param2;
         this.§2!y§ = param3;
      }
      
      public function get width() : int
      {
         return this.§!a§;
      }
      
      public function get height() : int
      {
         return this.§2!y§;
      }
   }
}
