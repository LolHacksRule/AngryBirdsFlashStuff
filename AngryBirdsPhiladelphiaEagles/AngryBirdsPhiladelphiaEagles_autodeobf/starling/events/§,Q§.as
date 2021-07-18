package starling.events
{
   public class §,Q§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §6! §:int;
      
      private var §@g§:int;
      
      public function §,Q§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§6! § = param2;
         this.§@g§ = param3;
      }
      
      public function get width() : int
      {
         return this.§6! §;
      }
      
      public function get height() : int
      {
         return this.§@g§;
      }
   }
}
