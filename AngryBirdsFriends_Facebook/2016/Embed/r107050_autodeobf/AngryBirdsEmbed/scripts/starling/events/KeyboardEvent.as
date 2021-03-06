package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §7H§:uint;
      
      private var §2x§:uint;
      
      private var §&!§:uint;
      
      private var §@<§:Boolean;
      
      private var §1!?§:Boolean;
      
      private var §6R§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§7H§ = param2;
         this.§2x§ = param3;
         this.§&!§ = param4;
         this.§1!?§ = param5;
         this.§@<§ = param6;
         this.§6R§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§7H§;
      }
      
      public function get keyCode() : uint
      {
         return this.§2x§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§&!§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§@<§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§1!?§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§6R§;
      }
   }
}
