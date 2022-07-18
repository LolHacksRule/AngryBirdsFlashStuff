package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §&#9§:uint;
      
      private var §'"[§:uint;
      
      private var §;"'§:uint;
      
      private var §'Y§:Boolean;
      
      private var §%"S§:Boolean;
      
      private var §3v§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§&#9§ = param2;
         this.§'"[§ = param3;
         this.§;"'§ = param4;
         this.§%"S§ = param5;
         this.§'Y§ = param6;
         this.§3v§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§&#9§;
      }
      
      public function get keyCode() : uint
      {
         return this.§'"[§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§;"'§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§'Y§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§%"S§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3v§;
      }
   }
}
