package starling.events
{
   public class § 6§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §9E§:int;
      
      private var §;`§:int;
      
      public function § 6§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§9E§ = param2;
         this.§;`§ = param3;
      }
      
      public function get width() : int
      {
         return this.§9E§;
      }
      
      public function get height() : int
      {
         return this.§;`§;
      }
   }
}
