package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §&!,§:uint;
      
      private var §&L§:uint;
      
      private var §7[§:uint;
      
      private var §,N§:Boolean;
      
      private var §6!V§:Boolean;
      
      private var §`=§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§&!,§ = param2;
         this.§&L§ = param3;
         this.§7[§ = param4;
         this.§6!V§ = param5;
         this.§,N§ = param6;
         this.§`=§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§&!,§;
      }
      
      public function get keyCode() : uint
      {
         return this.§&L§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§7[§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§,N§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§6!V§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§`=§;
      }
   }
}
