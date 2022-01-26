package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §_-eh§:uint;
      
      private var §_-D0§:uint;
      
      private var §_-rj§:uint;
      
      private var §_-Pe§:Boolean;
      
      private var §_-oV§:Boolean;
      
      private var §_-sW§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§_-eh§ = param2;
         this.§_-D0§ = param3;
         this.§_-rj§ = param4;
         this.§_-oV§ = param5;
         this.§_-Pe§ = param6;
         this.§_-sW§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§_-eh§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-D0§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-rj§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-Pe§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-oV§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-sW§;
      }
   }
}
