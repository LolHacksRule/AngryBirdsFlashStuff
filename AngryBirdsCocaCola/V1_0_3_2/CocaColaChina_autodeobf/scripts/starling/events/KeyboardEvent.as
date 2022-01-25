package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §[e§:uint;
      
      private var §&!%§:uint;
      
      private var §^2§:uint;
      
      private var §1!B§:Boolean;
      
      private var §,!X§:Boolean;
      
      private var §-!`§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§[e§ = param2;
         this.§&!%§ = param3;
         this.§^2§ = param4;
         this.§,!X§ = param5;
         this.§1!B§ = param6;
         this.§-!`§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§[e§;
      }
      
      public function get keyCode() : uint
      {
         return this.§&!%§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§^2§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§1!B§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§,!X§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§-!`§;
      }
   }
}
