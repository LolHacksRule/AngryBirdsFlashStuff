package starling.events
{
   public class §4!L§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §>!D§:int;
      
      private var §7!3§:int;
      
      public function §4!L§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§>!D§ = param2;
         this.§7!3§ = param3;
      }
      
      public function get width() : int
      {
         return this.§>!D§;
      }
      
      public function get height() : int
      {
         return this.§7!3§;
      }
   }
}
