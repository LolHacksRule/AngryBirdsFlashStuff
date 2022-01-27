package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §'N§:uint;
      
      private var §5!=§:uint;
      
      private var §-"§:uint;
      
      private var §[!3§:Boolean;
      
      private var §1D§:Boolean;
      
      private var §=W§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§'N§ = param2;
         this.§5!=§ = param3;
         this.§-"§ = param4;
         this.§1D§ = param5;
         this.§[!3§ = param6;
         this.§=W§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§'N§;
      }
      
      public function get keyCode() : uint
      {
         return this.§5!=§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§-"§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§[!3§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§1D§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§=W§;
      }
   }
}
