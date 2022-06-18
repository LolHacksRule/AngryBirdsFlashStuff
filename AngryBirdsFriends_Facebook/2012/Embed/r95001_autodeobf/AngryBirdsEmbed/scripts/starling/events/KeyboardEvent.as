package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §58§:uint;
      
      private var §^!8§:uint;
      
      private var §"P§:uint;
      
      private var §#! §:Boolean;
      
      private var §13§:Boolean;
      
      private var §^!%§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§58§ = param2;
         this.§^!8§ = param3;
         this.§"P§ = param4;
         this.§13§ = param5;
         this.§#! § = param6;
         this.§^!%§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§58§;
      }
      
      public function get keyCode() : uint
      {
         return this.§^!8§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§"P§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§#! §;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§13§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§^!%§;
      }
   }
}
