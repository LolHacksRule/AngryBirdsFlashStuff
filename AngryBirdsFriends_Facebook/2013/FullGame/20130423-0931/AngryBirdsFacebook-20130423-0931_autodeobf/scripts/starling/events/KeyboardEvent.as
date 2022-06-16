package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §0C§:uint;
      
      private var §4m§:uint;
      
      private var §5!n§:uint;
      
      private var §[!T§:Boolean;
      
      private var §>!Q§:Boolean;
      
      private var §`"Y§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§0C§ = param2;
         this.§4m§ = param3;
         this.§5!n§ = param4;
         this.§>!Q§ = param5;
         this.§[!T§ = param6;
         this.§`"Y§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§0C§;
      }
      
      public function get keyCode() : uint
      {
         return this.§4m§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§5!n§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§[!T§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§>!Q§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§`"Y§;
      }
   }
}
