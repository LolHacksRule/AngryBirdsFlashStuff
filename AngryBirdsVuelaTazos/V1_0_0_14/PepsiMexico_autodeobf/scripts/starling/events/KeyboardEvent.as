package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §_-cb§:uint;
      
      private var §_-Qw§:uint;
      
      private var §_-jx§:uint;
      
      private var §_-Xg§:Boolean;
      
      private var include:Boolean;
      
      private var §_-mX§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§_-cb§ = param2;
         this.§_-Qw§ = param3;
         this.§_-jx§ = param4;
         this.include = param5;
         this.§_-Xg§ = param6;
         this.§_-mX§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§_-cb§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-Qw§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-jx§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-Xg§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.include;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-mX§;
      }
   }
}
