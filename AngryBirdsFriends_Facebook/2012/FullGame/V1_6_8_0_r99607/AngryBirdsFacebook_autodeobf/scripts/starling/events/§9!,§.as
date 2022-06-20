package starling.events
{
   public class §9!,§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §]"A§:int;
      
      private var §>!>§:int;
      
      public function §9!,§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§]"A§ = param2;
         this.§>!>§ = param3;
      }
      
      public function get width() : int
      {
         return this.§]"A§;
      }
      
      public function get height() : int
      {
         return this.§>!>§;
      }
   }
}
