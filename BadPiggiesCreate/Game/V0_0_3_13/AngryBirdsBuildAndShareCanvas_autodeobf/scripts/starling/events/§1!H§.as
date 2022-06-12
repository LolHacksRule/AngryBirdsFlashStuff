package starling.events
{
   public class §1!H§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §+!C§:int;
      
      private var §1z§:int;
      
      public function §1!H§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§+!C§ = param2;
         this.§1z§ = param3;
      }
      
      public function get width() : int
      {
         return this.§+!C§;
      }
      
      public function get height() : int
      {
         return this.§1z§;
      }
   }
}
