package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §-!>§:uint;
      
      private var §?U§:uint;
      
      private var §5J§:uint;
      
      private var § ]§:Boolean;
      
      private var §'O§:Boolean;
      
      private var §+d§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§-!>§ = param2;
         this.§?U§ = param3;
         this.§5J§ = param4;
         this.§'O§ = param5;
         this.§ ]§ = param6;
         this.§+d§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§-!>§;
      }
      
      public function get keyCode() : uint
      {
         return this.§?U§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§5J§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§ ]§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§'O§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§+d§;
      }
   }
}
