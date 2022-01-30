package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §>_§:uint;
      
      private var §#=§:uint;
      
      private var §7!s§:uint;
      
      private var § !a§:Boolean;
      
      private var §+a§:Boolean;
      
      private var §>v§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§>_§ = param2;
         this.§#=§ = param3;
         this.§7!s§ = param4;
         this.§+a§ = param5;
         this.§ !a§ = param6;
         this.§>v§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§>_§;
      }
      
      public function get keyCode() : uint
      {
         return this.§#=§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§7!s§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§ !a§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§+a§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§>v§;
      }
   }
}
