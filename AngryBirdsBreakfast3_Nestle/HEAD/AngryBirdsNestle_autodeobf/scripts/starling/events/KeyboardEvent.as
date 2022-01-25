package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §"!x§:uint;
      
      private var §#!k§:uint;
      
      private var §!"6§:uint;
      
      private var §3"§:Boolean;
      
      private var §5!]§:Boolean;
      
      private var §3!^§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§"!x§ = param2;
         this.§#!k§ = param3;
         this.§!"6§ = param4;
         this.§5!]§ = param5;
         this.§3"§ = param6;
         this.§3!^§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§"!x§;
      }
      
      public function get keyCode() : uint
      {
         return this.§#!k§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§!"6§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§3"§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§5!]§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3!^§;
      }
   }
}
