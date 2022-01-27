package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §<!e§:uint;
      
      private var §2!=§:uint;
      
      private var §&!T§:uint;
      
      private var §,!%§:Boolean;
      
      private var §?l§:Boolean;
      
      private var §-[§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§<!e§ = param2;
         this.§2!=§ = param3;
         this.§&!T§ = param4;
         this.§?l§ = param5;
         this.§,!%§ = param6;
         this.§-[§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§<!e§;
      }
      
      public function get keyCode() : uint
      {
         return this.§2!=§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§&!T§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§,!%§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§?l§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-[§;
      }
   }
}
