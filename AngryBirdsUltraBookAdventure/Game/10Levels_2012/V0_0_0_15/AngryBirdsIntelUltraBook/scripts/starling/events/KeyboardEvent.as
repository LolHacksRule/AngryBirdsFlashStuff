package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §_-Cp§:uint;
      
      private var §_-Z-§:uint;
      
      private var §_-HR§:uint;
      
      private var §_-Wn§:Boolean;
      
      private var §_-05K§:Boolean;
      
      private var §_-8a§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§_-Cp§ = param2;
         this.§_-Z-§ = param3;
         this.§_-HR§ = param4;
         this.§_-05K§ = param5;
         this.§_-Wn§ = param6;
         this.§_-8a§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§_-Cp§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-Z-§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-HR§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-Wn§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-05K§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-8a§;
      }
   }
}
