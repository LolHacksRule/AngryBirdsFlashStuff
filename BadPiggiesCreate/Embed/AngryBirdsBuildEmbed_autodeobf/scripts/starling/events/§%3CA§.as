package starling.events
{
   public class §<A§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §4!L§:int;
      
      private var §"!C§:int;
      
      public function §<A§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§4!L§ = param2;
         this.§"!C§ = param3;
      }
      
      public function get width() : int
      {
         return this.§4!L§;
      }
      
      public function get height() : int
      {
         return this.§"!C§;
      }
   }
}
