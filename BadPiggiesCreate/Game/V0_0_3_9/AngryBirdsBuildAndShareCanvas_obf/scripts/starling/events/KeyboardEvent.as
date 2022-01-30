package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §;"3§:uint;
      
      private var §]!x§:uint;
      
      private var §>V§:uint;
      
      private var §["6§:Boolean;
      
      private var § s§:Boolean;
      
      private var §^z§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§;"3§ = param2;
         this.§]!x§ = param3;
         this.§>V§ = param4;
         this.§ s§ = param5;
         this.§["6§ = param6;
         this.§^z§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§;"3§;
      }
      
      public function get keyCode() : uint
      {
         return this.§]!x§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§>V§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§["6§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§ s§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§^z§;
      }
   }
}
