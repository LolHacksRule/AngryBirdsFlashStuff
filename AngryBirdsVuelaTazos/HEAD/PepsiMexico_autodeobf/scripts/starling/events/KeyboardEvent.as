package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §_-t0§:uint;
      
      private var §_-Oo§:uint;
      
      private var §_-Pf§:uint;
      
      private var §_-hu§:Boolean;
      
      private var §_-k-§:Boolean;
      
      private var §if §:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§_-t0§ = param2;
         this.§_-Oo§ = param3;
         this.§_-Pf§ = param4;
         this.§_-k-§ = param5;
         this.§_-hu§ = param6;
         this.§if § = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§_-t0§;
      }
      
      public function get keyCode() : uint
      {
         return this.§_-Oo§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§_-Pf§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§_-hu§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§_-k-§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§if §;
      }
   }
}
