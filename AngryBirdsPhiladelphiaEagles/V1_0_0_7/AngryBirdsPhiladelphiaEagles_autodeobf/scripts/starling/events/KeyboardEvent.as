package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §'%§:uint;
      
      private var §,!C§:uint;
      
      private var §7o§:uint;
      
      private var §"2§:Boolean;
      
      private var §"7§:Boolean;
      
      private var §,>§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§'%§ = param2;
         this.§,!C§ = param3;
         this.§7o§ = param4;
         this.§"7§ = param5;
         this.§"2§ = param6;
         this.§,>§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§'%§;
      }
      
      public function get keyCode() : uint
      {
         return this.§,!C§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§7o§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§"2§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§"7§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§,>§;
      }
   }
}
