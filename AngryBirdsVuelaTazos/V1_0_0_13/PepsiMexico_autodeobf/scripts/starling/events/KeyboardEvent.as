package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §_-xN§:uint;
      
      private var §_-Rx§:uint;
      
      private var §_-Es§:uint;
      
      private var §_-d7§:Boolean;
      
      private var §_-dH§:Boolean;
      
      private var §_-hL§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§_-xN§ = param2;
         this.§_-Rx§ = param3;
         this.§_-Es§ = param4;
         this.§_-dH§ = param5;
         this.§_-d7§ = param6;
         this.§_-hL§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§_-xN§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-Rx§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-Es§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-d7§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-dH§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§_-hL§;
      }
   }
}
