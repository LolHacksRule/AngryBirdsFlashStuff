package starling.events
{
   public class §0-§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §0F§:int;
      
      private var §;;§:int;
      
      public function §0-§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§0F§ = param2;
         this.§;;§ = param3;
      }
      
      public function get width() : int
      {
         return this.§0F§;
      }
      
      public function get height() : int
      {
         return this.§;;§;
      }
   }
}
