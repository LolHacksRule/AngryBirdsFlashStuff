package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §0#§:uint;
      
      private var §[K§:uint;
      
      private var §6J§:uint;
      
      private var §#U§:Boolean;
      
      private var §^!R§:Boolean;
      
      private var §0!Y§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§0#§ = param2;
         this.§[K§ = param3;
         this.§6J§ = param4;
         this.§^!R§ = param5;
         this.§#U§ = param6;
         this.§0!Y§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§0#§;
      }
      
      public function get keyCode() : uint
      {
         return this.§[K§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§6J§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§#U§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§^!R§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§0!Y§;
      }
   }
}
