package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §4p§:uint;
      
      private var §5!-§:uint;
      
      private var §?_§:uint;
      
      private var §1x§:Boolean;
      
      private var §;!L§:Boolean;
      
      private var §[H§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§4p§ = param2;
         this.§5!-§ = param3;
         this.§?_§ = param4;
         this.§;!L§ = param5;
         this.§1x§ = param6;
         this.§[H§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§4p§;
      }
      
      public function get keyCode() : uint
      {
         return this.§5!-§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§?_§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§1x§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§;!L§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§[H§;
      }
   }
}
