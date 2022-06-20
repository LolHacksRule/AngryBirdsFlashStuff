package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §-">§:uint;
      
      private var §#!L§:uint;
      
      private var §"G§:uint;
      
      private var §0!u§:Boolean;
      
      private var §=!F§:Boolean;
      
      private var §0"#§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§-">§ = param2;
         this.§#!L§ = param3;
         this.§"G§ = param4;
         this.§=!F§ = param5;
         this.§0!u§ = param6;
         this.§0"#§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§-">§;
      }
      
      public function get keyCode() : uint
      {
         return this.§#!L§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§"G§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§0!u§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§=!F§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§0"#§;
      }
   }
}
