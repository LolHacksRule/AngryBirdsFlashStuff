package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §7!R§:uint;
      
      private var §"!7§:uint;
      
      private var §&!Q§:uint;
      
      private var §!!N§:Boolean;
      
      private var §#2§:Boolean;
      
      private var §`y§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§7!R§ = param2;
         this.§"!7§ = param3;
         this.§&!Q§ = param4;
         this.§#2§ = param5;
         this.§!!N§ = param6;
         this.§`y§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§7!R§;
      }
      
      public function get keyCode() : uint
      {
         return this.§"!7§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§&!Q§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§!!N§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§#2§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§`y§;
      }
   }
}
