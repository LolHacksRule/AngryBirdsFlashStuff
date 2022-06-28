package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §5!0§:uint;
      
      private var §+6§:uint;
      
      private var §-!w§:uint;
      
      private var §0!@§:Boolean;
      
      private var §%!P§:Boolean;
      
      private var §"s§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§5!0§ = param2;
         this.§+6§ = param3;
         this.§-!w§ = param4;
         this.§%!P§ = param5;
         this.§0!@§ = param6;
         this.§"s§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§5!0§;
      }
      
      public function get keyCode() : uint
      {
         return this.§+6§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§-!w§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§0!@§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§%!P§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§"s§;
      }
   }
}
