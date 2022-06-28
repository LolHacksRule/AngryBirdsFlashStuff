package starling.events
{
   public class KeyboardEvent extends Event
   {
      
      public static const KEY_UP:String = "keyUp";
      
      public static const KEY_DOWN:String = "keyDown";
       
      
      private var §6!e§:uint;
      
      private var §#!g§:uint;
      
      private var §3O§:uint;
      
      private var §"!C§:Boolean;
      
      private var §^!5§:Boolean;
      
      private var §7F§:Boolean;
      
      public function KeyboardEvent(param1:String, param2:uint = 0, param3:uint = 0, param4:uint = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,false);
         this.§6!e§ = param2;
         this.§#!g§ = param3;
         this.§3O§ = param4;
         this.§^!5§ = param5;
         this.§"!C§ = param6;
         this.§7F§ = param7;
      }
      
      public function get charCode() : uint
      {
         return this.§6!e§;
      }
      
      public function get keyCode() : uint
      {
         return this.§#!g§;
      }
      
      public function get keyLocation() : uint
      {
         return this.§3O§;
      }
      
      public function get altKey() : Boolean
      {
         return this.§"!C§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§^!5§;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§7F§;
      }
   }
}
