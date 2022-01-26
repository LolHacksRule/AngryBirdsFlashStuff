package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §_-i4§:uint;
      
      private var §_-A9§:uint;
      
      private var §_-E8§:uint;
      
      private var §_-dx§:Boolean;
      
      private var §_-MZ§:Boolean;
      
      private var §_-30§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§_-i4§ = param2;
         this.§_-A9§ = param3;
         this.§_-E8§ = param4;
         this.§_-MZ§ = param5;
         this.§_-dx§ = param6;
         this.§_-30§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§_-i4§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-A9§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-E8§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-dx§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-MZ§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-30§;
      }
   }
}
