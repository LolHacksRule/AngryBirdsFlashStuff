package starling.events
{
   public class §4!k§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §=!c§:int;
      
      private var §+B§:int;
      
      public function §4!k§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§=!c§ = param2;
         this.§+B§ = param3;
      }
      
      public function get width() : int
      {
         return this.§=!c§;
      }
      
      public function get height() : int
      {
         return this.§+B§;
      }
   }
}
