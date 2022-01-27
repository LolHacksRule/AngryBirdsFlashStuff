package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §'!a§:uint;
      
      private var §!! §:uint;
      
      private var §=!%§:uint;
      
      private var §]"F§:Boolean;
      
      private var §0!X§:Boolean;
      
      private var §-!J§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§'!a§ = param2;
         this.§!! § = param3;
         this.§=!%§ = param4;
         this.§0!X§ = param5;
         this.§]"F§ = param6;
         this.§-!J§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§'!a§;
      }
      
      public function get keyCode() : uint
      {
         return this.§!! §;
      }
      
      public function get keyLocation() : uint
      {
         return this.§=!%§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§]"F§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§0!X§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-!J§;
      }
   }
}
