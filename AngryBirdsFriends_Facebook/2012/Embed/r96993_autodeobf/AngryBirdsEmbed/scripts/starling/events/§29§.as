package starling.events
{
   public class §29§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §-!6§:int;
      
      private var § B§:int;
      
      public function §29§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§-!6§ = param2;
         this.§ B§ = param3;
      }
      
      public function get width() : int
      {
         return this.§-!6§;
      }
      
      public function get height() : int
      {
         return this.§ B§;
      }
   }
}
