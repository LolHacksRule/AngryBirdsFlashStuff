package starling.events
{
   public class §_-KN§ extends Event
   {
      
      public static const RESIZE:String = "resize";
       
      
      private var §_-x9§:int;
      
      private var §_-Ql§:int;
      
      public function §_-KN§(param1:String, param2:int, param3:int, param4:Boolean = false)
      {
         super(param1,param4);
         this.§_-x9§ = param2;
         this.§_-Ql§ = param3;
      }
      
      public function get width() : int
      {
         return this.§_-x9§;
      }
      
      public function get height() : int
      {
         return this.§_-Ql§;
      }
   }
}
