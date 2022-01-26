package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §%w§:uint;
      
      private var §!e§:uint;
      
      private var §`!?§:uint;
      
      private var §=!3§:Boolean;
      
      private var § K§:Boolean;
      
      private var §3x§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§%w§ = param2;
         this.§!e§ = param3;
         this.§`!?§ = param4;
         this.§ K§ = param5;
         this.§=!3§ = param6;
         this.§3x§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§%w§;
      }
      
      public function get keyCode() : uint
      {
         return this.§!e§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§`!?§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§=!3§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§ K§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§3x§;
      }
   }
}
