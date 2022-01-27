package starling.events
{
   public class §#!m§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §^M§:int;
      
      private var §2!u§:int;
      
      public function §#!m§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§^M§ = param2;
         this.§2!u§ = param3;
      }
      
      public function get width() : int
      {
         return this.§^M§;
      }
      
      public function get height() : int
      {
         return this.§2!u§;
      }
   }
}
