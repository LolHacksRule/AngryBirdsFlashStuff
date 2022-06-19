package starling.events
{
   public class §^!c§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §]>§:int;
      
      private var §7w§:int;
      
      public function §^!c§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§]>§ = param2;
         this.§7w§ = param3;
      }
      
      public function get width() : int
      {
         return this.§]>§;
      }
      
      public function get height() : int
      {
         return this.§7w§;
      }
   }
}
